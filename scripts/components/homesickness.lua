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
	

local function OnSanityUpdated(inst, data)
	
	--print(data.newpercent)
	local homesickness = inst.components.homesickness
	local gutsOffset = 0
	local guts = 10
	if inst:HasTag("homerunner") then
		gutsOffset = 15
	end
	if inst:HasTag("gutsy") then
		gutsOffset = gutsOffset + 12
	end
	
	local level = 0

	if data.newpercent > .8 then
		level = 0
	elseif data.newpercent > .6 then
		level = 1
	elseif data.newpercent > .4 then
		level = 2
	elseif data.newpercent > .2 then
		level = 3
	elseif data.newpercent > 0 then
		level = 4
	else
		level = 5
	end
	
	if homesickness.favoritefoodbuff and level > 0 then
		level = level - 1
	end
	if homesickness.foodbuff and level > 0 then
		level = level - 1
	end
	if homesickness.offenseupbuff and level > 0 then	
		level = level - 1
	end
	--print(level)
	homesickness.guts = gutsLevels[level] + gutsOffset
	--print(homesickness.guts)
	if homesickness.level ~= level then
		print("change in homesickness levels, recalculating")
		print(level)
		homesickness.level = level
		
		
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
	end
end

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
	
	enable = enable or TUNING.ENABLE_GRAMNESS_HOMESICKNESS
	if enable then
		self.inst:ListenForEvent("sanitydelta", OnSanityUpdated)
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
	}
end

function Homesickness:OnLoad(data)
	self.level = data.level
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
		self.inst:ListenForEvent("sanitydelta", OnSanityUpdated)
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
	self.inst:RemoveEventCallback("sanitydelta", OnSanityUpdated)
end

return Homesickness
