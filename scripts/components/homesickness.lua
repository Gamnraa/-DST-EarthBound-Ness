--Basing off Woodie having a sanity penalty of -6/min, which is listed  as .1 in Tuning
--So a ratio of 6/.1 = y/x is used
--Where y = the desired sanity per minute
--And x is the equivalent value to calculate that by the game
local sanityLevels = {
	[0] = 0,
	[1] = -.0500, -- -3/min
	[2] = -.1000, -- -6/min
	[3] = -.1333, -- -8/min
	[4] = -.1667, -- -10/min
	[5] = -.3333, -- -20/min
}

--Base % chance for Ness to land a critical hit
local gutsLevels = {
	[0] = 10,
	[1] = 8,
	[2] = 6,
	[3] = 4,
	[4] = 2,
	[5] = 0,
}

--% chance for Ness to get an extra resource, plus another
local resourcefulChances = {
	[0] = {66, 33},
	[1] = {50, 25},
	[2] = {25, 0},
	[3] = {0, 0},
	[4] = {0, 0},
	[5] = {0, 0},
}

--Time in seconds before Ness interrupts what he's doing
local interruptTimes = {
	[1] = {120, 300},
	[2] = {100, 240},
	[3] = {60, 150},
	[4] = {10, 60},
	[5] = {7, 40},
}

--Ness' work rate
local workRateModifiers = {
	[0] = 1,
	[1] = 1,
	[2] = 1,
	[3] = .75,
	[4] = .66,
	[5] = .5,
}

--Ness' combat multiplier
local damageMultipliers = {
	[0] = 1,
	[1] = 1,
	[2] = 1,
	[3] = .9,
	[4] = .75,
	[5] = .5,
}

--Homesickness lines
local homesickLines = {
	"I wanna go home...",
	"I miss home...",
	"I don't want to do this...",
	"What's the point.",
	"I miss Mom and Tracy...",
	"I'm sorry, I can't do this.",
	"I wish I had some steak...",
	"I wish I were home.",
	"I wanna see King.",
	"I give up.",
	"Sorry, I just-",
	"...",
	"Why me?",
	"I didn't ask for any of this.",
	"What if I never get out of here?",
	"I wonder what Mom is up to...",
	"I just want to go home."
}

local function HasLowStats(inst)
	return inst.components.sanity:GetPercentWithPenalty() < .8 or 
	inst.components.hunger:GetPercent() < .5 or 
	inst.components.health:GetPercentWithPenalty() < .67
end

local function UpdateHomesicknessStatus(homesickness, inst)
	print("Homesickness change in level detected", homesickness.level)

	local level = homesickness.level
	homesickness.sanitydrain = sanityLevels[level]
	homesickness.resourcefulness = resourcefulChances[level]
		
	inst.components.workmultiplier:AddMultiplier(ACTIONS.CHOP, workRateModifiers[level], "homesickness")
	inst.components.workmultiplier:AddMultiplier(ACTIONS.MINE, workRateModifiers[level], "homesickness")
	inst.components.workmultiplier:AddMultiplier(ACTIONS.HAMMER, workRateModifiers[level], "homesickness")
		
	inst.components.combat.externaldamagemultipliers:SetModifier(inst, damageMultipliers[level], "homesickness")
		
	if interruptTimes[level] and not homesickness.actioninterrupt then
		print("BEGINNING INTERRUPTIONS")
		homesickness.actioninterrupt = inst:DoTaskInTime(math.random(interruptTimes[level][1], interruptTimes[level][2]), function() homesickness:DoNextInterrupt() end)
	elseif homesickness.actioninterrupt and not interruptTimes[level] then
		print("CANCELING INTERRUPTIONS")
		homesickness.actioninterrupt:Cancel()
		homesickness.actioninterrupt = nil
	end

	if next(homesickness.line) then
		inst.components.talker:Say(GetString(inst, "ANNOUNCE_HOMESICKNESS_" .. homesickness.line.change, homesickness.line.reason))
	end
	homesickness.line = {}
end

local function OnNewDay(self)
	if math.random(100) < 40 and self.level > 0 then
		print("Good homesickness roll, homesickness dropping to " .. (self.level - 1))
		self.sicknessval = self.level * 5
		self:SetLevel(self.level - 1, {change = "FEEL_BETTER", reason = "NEW_DAY"})
	end
end

local sicknessthreshold = 10
local maxsicknessval = sicknessthreshold * 5

local Homesickness = Class(function(self, inst, enable)
    self.inst = inst
	self.level = 0
	self.guts = 10
	self.sanitydrain = 0
	self.resourcefulness = {66, 33}
	self.actioninterrupt = nil
	self.favoritefoodbuff = nil
	self.foodbuff = nil
	self.offenseupbuff = nil

	self.islowstats = false
	self.conseclowstats = 0
	self.sicknessval = 0
	self.nexttick = 15
	self.maxhomesickness = false

	self.line = {}
	
	enable = enable or TUNING.ENABLE_GRAMNESS_HOMESICKNESS
	if enable then
		--self.inst:ListenForEvent("sanitydelta", OnSanityUpdated)
		--self.inst:StartUpdatingComponent(self)
		--self:WatchWorldState("cycles", OnNewDay)
	end
end, nil, {})

function Homesickness:OnSave()
	local interruptTimeLeft = false

	if self.actioninterrupt then
		interruptTimeLeft = GetTaskRemaining(self.actioninterrupt)
	end
	
	if self.favoritefoodbuff then
		self.favoritefoodbuff = GetTaskRemaining(self.favoritefoodbuff)
	end
	
	if self.foodbuff then
		self.foodbuff = GetTaskRemaining(self.foodbuff)
	end
	
	--if self.offenseupbuff then
	--	self.offenseupbuff = GetTaskRemaining(self.offenseupbuff)
	--end
	
	return
	{
		level = self.level,
		--guts = self.guts,
		actioninterrupt = interruptTimeLeft,
		favoritefoodbuff = self.favoritefoodbuff or false,
		foodbuff = self.foodbuff or false,
		offenseupbuff = self.offenseupbuff or false,
		islowstats = self.islowstats,
		conseclowstats = self.conseclowstats,
		sicknessval = self.sicknessval,
		nexttick = self.nexttick,
		maxhomesickness = self.maxhomesickness
	}
end

function Homesickness:OnLoad(data)
	self:SetLevel(data.level)
	if data.actioninterrupt then 
		print("Scheduling next interrupt in... " .. data.actioninterrupt .. " seconds")
		self.actioninterrupt = self.inst:DoTaskInTime(data.actioninterrupt, function() self:DoNextInterrupt() end)
	end
	
	--TODO REFACTOR TO DoTaskInTime CHECKS LIKE ABOVE
	if data.favoritefoodbuff then
		self.favoritefoodbuff = self.inst:DoTaskInTime(data.favoritefoodbuff, function() self.inst.components.talker:Say("The good feelings never last...") self.favoritefoodbuff = nil end)
	end
	if data.foodbuff then 
		self.foodbuff = self.inst:DoTaskInTime(data.foodbuff, function() self.inst.components.talker:Say("Sigh... guess I could eat more, haha!") self.foodbuff = nil end)
	end
	self.offenseupbuff = data.offenseupbuff

	self.islowstats = data.islowstats
	self.conseclowstats = data.conseclowstats
	self.sicknessval = data.sicknessval
	self.nexttick = data.nexttick
	self.maxhomesickness = data.maxhomesickness
end

function Homesickness:DoNextInterrupt()
	self.inst.components.talker:Say(homesickLines[math.random(#homesickLines)])
	self.inst.sg:GoToState("exasperated")
	if interruptTimes[self.level] then
		self.actioninterrupt = self.inst:DoTaskInTime(math.random(interruptTimes[self.level][1], interruptTimes[self.level][2]), function() self:DoNextInterrupt() end)
	end
end

function Homesickness:Enable()
	if TUNING.ENABLE_GRAMNESS_HOMESICKNESS then
		self.inst:StartUpdatingComponent(self)
		self:WatchWorldState("cycles", OnNewDay)
	end
end

function Homesickness:Disable()
	if self.actioninterrupt then
		self.actioninterrupt:Cancel()
	end
	self.actioninterrupt = nil
	
	if self.favoritefoodbuff then
		self.favoritefoodbuff:Cancel()
	end
	self.favoritefoodbuff = nil
	
	if self.foodbuff then
		self.foodbuff:Cancel()
	end
	self.foodbuff = nil
	
	self.offenseupbuff = nil
	self.inst:StopUpdatingComponent(self)
	self:StopWatchingWorldState("cycles", OnNewDay)
end

function Homesickness:SetLevel(newlevel, line)
	self.level = newlevel
	if line then self.line = line end
	UpdateHomesicknessStatus(self,  self.inst)
end

function Homesickness:DoDelta(newval, line)
	self.sicknessval = self.sicknessval + newval
	if self.sicknessval < 0 then self.sicknessval = 0 end
	if self.sicknessval > maxsicknessval then self.sicknessval = maxsicknessval end
	if line then self.line = line end
end

function Homesickness:OnUpdate(dt)

	self.maxhomesickness = self.sicknessval == maxsicknessval

	if dt < self.nexttick then
		self.nexttick = self.nexttick - dt
	elseif not self.maxhomesickness then
		local iscurrentlylowstats = HasLowStats(self.inst)
		self.conseclowstats = (iscurrentlylowstats and self.islowstats) and (self.conseclowstats + 1) or (iscurrentlylowstats and 1) or 0
		self.islowstats = iscurrentlylowstats
		if self.conseclowstats == 8 then
			local sanitychange = math.floor((1 - self.inst.components.sanity:GetPercentWithPenalty()) * 5)
			local hungerchange = math.floor((1 - self.inst.components.hunger:GetPercent()) * 2)
			local healthchange = math.floor((1 - self.inst.components.health:GetPercentWithPenalty()) * 3)
			print("Homesickness low stats maintained for 8 ticks\nsanity increasing by", sanitychange, "\nhunger increasing by", hungerchange, "\nhealth changing by", healthchange)
			self.sicknessval = self.sicknessval + sanitychange + hungerchange + healthchange
			self.conseclowstats = 0
			self.line = {change = "FEEL_WORSE", reason = "BAD_STATS"}
		end
		if math.random(256) < 2 + self.level then
			--self.inst.components.talker:Say("Homesickness bad roll increase by 6")
			self.sicknessval = self.sicknessval + 6
			self.line = {change = "FEEL_WORSE", reason = "BAD_LUCK"}
		end

		if self.sicknessval >= maxsicknessval then
			self.maxhomesickness = true
			self.sicknessval = maxsicknessval
		end

		self.nexttick = 15
	else
		self.nexttick = 15
	end

	local currentlevel = math.floor(self.sicknessval / sicknessthreshold)


	local gutsOffset = 0
	local guts = 10
	if self.inst:HasTag("homerunner") then
		gutsOffset = 15
	end
	if self.inst:HasTag("gutsy") then
		gutsOffset = gutsOffset + 12
	end
	if self.inst:HasTag("supergutsy") then
		gutsOffset = gutsOffset + 30
	end

	self.guts = gutsLevels[self.level] + gutsOffset

	if self.level ~= currentlevel then
		self.level = currentlevel
		UpdateHomesicknessStatus(self, self.inst)
	end
end

return Homesickness
