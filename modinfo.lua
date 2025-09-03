-- This information tells other players more about the mod
name = "(DEV) EarthBound: Ness"
description = "Adds Ness from EarthBound to the game."
author = "Lucas & Claus"
version = "1.0.1" -- This is the version of the template. Change it to your own number.

-- This is the URL name of the mod's thread on the forum; the part after the ? and before the first & in the url
forumthread = "/files/file/950-extended-sample-character/"

-- This lets other players know if your mod is out of date, update it to match the current version in the game
api_version = 10

-- Compatible with Don't Starve Together
dst_compatible = true

-- Not compatible with Don't Starve
dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false

-- Character mods are required by all clients
all_clients_require_mod = true 

icon_atlas = "modicon.xml"
icon = "modicon.tex"

-- The mod's tags displayed on the server list
server_filter_tags = {
"character", "earthbound"
}

configuration_options = {

	{
        name = "GRAMNESS_HEALTH",
		label = "Ness' Health",
        options =
        {

			{description = "90", data = 90},
			{description = "100", data = 100},
            {description = "110", data = 110},
			{description = "120", data = 120},
            {description = "130", data = 130},
            {description = "140 (default)", data = 140},
			{description = "150", data = 150},
            {description = "160", data = 160},
			{description = "170", data = 170},
			{description = "180", data = 180},
			{description = "190", data = 190},
			{description = "200", data = 200},
			{description = "210", data = 210},
			{description = "220", data = 220},
		},
        default = 140,	
	},
	{
		name = "GRAMNESS_HUNGER",
		label = "Ness' Hunger",
		options = 
		{
			{description = "90", data = 90},
			{description = "100", data = 100},
			{description = "110", data = 110},
			{description = "120", data = 120},
			{description = "130", data = 130},
			{description = "140 (default)", data = 140},
			{description = "150", data = 150},
			{description = "160", data = 160},
			{description = "170", data = 170},
			{description = "180", data = 180},
			{description = "190", data = 190},
		},
		default = 140,
	},
	{
		name = "GRAMNESS_SANITY",
		label = "Ness' Sanity",
		options = 
		{
			{description = "200", data = 200},
			{description = "210", data = 210},
			{description = "220", data = 220},
			{description = "230", data = 230},
			{description = "240", data = 240},
			{description = "250 (default)", data = 250},
			{description = "260", data = 260},
			{description = "270", data = 270},
			{description = "280", data = 280},
			{description = "290", data = 290},
			{description = "300", data = 300},
		},
		default = 250,
	},
	{
		name = "GRAMNESS_PK_FLASH_SANITY",
		label = "PK Flash Sanity Cost",
		options =
		{
			{description = "0", data = 0},
			{description = "10", data = 10},
			{description = "20", data = 20},
			{description = "30 (default)", data = 30},
			{description = "40", data = 40},
			{description = "50", data = 50},
			{description = "60", data = 60},
			{description = "70", data = 70},
			{description = "80", data = 80},
			{description = "90", data = 90},
			{description = "100", data = 100},
		},
		default = 30,
	},
	{
		name = "GRAMNESS_OFFENSE_UP_SANITY",
		label = "Offense Up Sanity Cost",
		options =
		{
			{description = "0", data = 0},
			{description = "10", data = 10},
			{description = "20", data = 20},
			{description = "30", data = 30},
			{description = "40", data = 40},
			{description = "50 (default)", data = 50},
			{description = "60", data = 60},
		},
		default = 50,
	},

	{
		name = "GRAMNESS_PARALYSIS_SANITY",
		label = "Paralysis Sanity Cost",
		options =
		{
			{description = "0", data = 0},
			{description = "20", data = 20},
			{description = "40", data = 40},
			{description = "60", data = 60},
			{description = "80", data = 80},
			{description = "100 (default)", data = 100},
			{description = "120", data = 120},
			{description = "140", data = 140},
			{description = "160", data = 160},
			{description = "180", data = 180},
			{description = "200", data = 200},
		},
		default = 100,
	},

	{
		name = "BASEBALL_BAT_NESS_DAMAGE",
		label = "Baseball Bat Damage",
		options = 
		{
			{description = "18", data = 18},
			{description = "24 (default)", data = 24},
			{description = "30", data = 30},
			{description = "36", data = 36},
			{description = "42", data = 42},
			{description = "48", data = 48},
			{description = "54", data = 54},
		},
		default = 24,
	},
	{
		name = "GRAMNESS_HOMESICKNESS",
		label = "Toggle Homesickness",
		hover = "If disabled, Ness will not deal with the effects of homesickness",
		options = 
		{
			{description = "Enabled (default)", data = true},
			{description = "Disabled", data = false}
		},
		default = true,
	},

}
