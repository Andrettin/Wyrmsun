DefineCharacter("pypo", { -- Source: Franz Hartmann, "Among the Gnomes", 1895, p. 13.
	Name = "Pypo",
	Gender = "male",
	Type = "unit-gnomish-master-at-arms",
	Civilization = "gnome",
	Faction = "untersberg",
	StartDate = -1,
	DeathDate = 40, -- last we hear of him
	Quote = "\"Know, you creeping worm of the earth, I am Pypo, the king of the gnomes.\"\n- Pypo, King of Untersberg",
	HistoricalTitles = {
		"ruler", -1, 40, "untersberg"
	},
	HistoricalLocations = {
		25, "nidavellir", "pypos-camp"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "untersberg") then
			return true
		end
		return false
	end
})

DefineCharacter("bimbam", { -- Source: Franz Hartmann, "Among the Gnomes", 1895, pp. 79, 103-104.
	Name = "Bimbam",
	Gender = "male",
	Type = "unit-gnomish-master-at-arms", -- king
	Civilization = "gnome",
	Faction = "untersberg",
	HairVariation = "blond-hair", -- had a yellow beard
	HistoricalTitles = {
--		"ruler", 0, 0, "untersberg" -- Bimbam I of Untersberg
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "untersberg" or GetPlayerData(trigger_player, "Faction") == "sagan-tribe") then -- Bimbam belonged to the Sagan tribe of Untersberg (since his characteristics in the Among the Gnomes story, like being able to elongate himself, fit with what is described of the Sagans)
			return true
		end
		return false
	end
	-- had a noble bearing, was medium-sized, wore a crown with many stars (the greatest of which was a large carbuncle)
})

DefineCharacter("cravatu", { -- Source: Franz Hartmann, "Among the Gnomes", 1895, pp. 96-97.
	Name = "Cravatu",
	Gender = "male",
	Type = "unit-gnomish-herbalist",
	Civilization = "gnome",
	Faction = "untersberg",
	Trait = "upgrade-wise", -- had a venerable aspect
	HairVariation = "gray-hair", -- had a white beard
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "untersberg") then
			return true
		end
		return false
	end
	-- Prince Cravatu, minister to King Bimbam I of Untersberg
	-- dressed in a black cloak or cape, short trousers, stockings and buckled shoes
})

DefineCharacter("adalga", { -- Source: Franz Hartmann, "Among the Gnomes", 1895, pp. 78-79, 148-149, 172.
	Name = "Adalga",
	Gender = "female",
	Type = "unit-gnomish-herbalist", -- actually a princess
	Civilization = "gnome",
	Faction = "untersberg",
	Father = "bimbam",
	HairVariation = "blond-hair", -- had long golden hair
	-- simple in her way of thinking, pure in her affection, natural and sincere
	Quote = "\"My name is Adalga, I am the daughter of Bimbam I, king of the gnomes. But what are you?\"\n- Adalga, Princess of Untersberg",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "untersberg" or GetPlayerData(trigger_player, "Faction") == "sagan-tribe") then -- Adalga belonged to the Sagan tribe of Untersberg
			return true
		end
		return false
	end
})

DefineCharacter("kalutho", { -- Source: Franz Hartmann, "Among the Gnomes", 1895, p. 104.
	Name = "Kalutho",
	Gender = "male",
	Type = "unit-gnomish-herbalist", -- part of his duties was tending to the roots of plants on the eastern side of Untersberg
	Civilization = "gnome",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "untersberg") then
			return true
		end
		return false
	end
})

DefineCharacter("clavo", { -- Source: Franz Hartmann, "Among the Gnomes", 1895, p. 106.
	Name = "Clavo",
	Gender = "male",
	Type = "unit-gnomish-master-at-arms", -- general
	Civilization = "gnome",
	Trait = "upgrade-quick", -- robust and very quick
	HistoricalTitles = {
--		"marshal", 0, 0, "untersberg" -- commanding general of the army of Untersberg
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "untersberg") then
			return true
		end
		return false
	end
	-- carried a scabbard by his side
})
