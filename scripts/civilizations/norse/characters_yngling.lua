--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      (c) Copyright 2015-2021 by Andrettin
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

DefineCharacter("gisle-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 229.
	Name = "Gisle",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "visbur-yngling"
	-- his mother was the daughter of Aud the Rich
})

DefineCharacter("ond-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 229.
	Name = "Ond",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "visbur-yngling"
	-- his mother was the daughter of Aud the Rich
})

DefineCharacter("aasa-the-evil-adviser-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 253-254.
	Name = "Aasa",
	ExtraName = "the Evil-Adviser",
	FamilyName = "Yngling",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Father = "ingiald-the-evil-adviser-yngling",
	Mother = "gauthild"
	-- married Gudrod (king of Scania)
})

DefineCharacter("olaf-treefeller-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 253-256.
	Name = "Olaf",
	ExtraName = "Treefeller",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "ingiald-the-evil-adviser-yngling",
	Mother = "gauthild",
	Quote = "\"The temple wolf, by the lake shores,\nThe corpse of Olaf now devours.\nThe clearer of forests died\nAt Odin's shrine by the lake side.\"\n- Thiodolf of Huine", -- "temple wolf" in this instance means the fire which burned Olaf's body
	-- his foster-father was Bove, who lived in West Gotland
	-- married to Solveig
})

DefineCharacter("ingiald-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 255, 257.
	Name = "Ingiald",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	-- (apparently) from Vermeland
	Father = "olaf-treefeller-yngling",
	Mother = "solveig"
	-- king of Værmeland (after his death his possessions went to his brother Halfdan)
})

DefineCharacter("halfdan-huitbein-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 255-257.
	Name = "Halfdan",
	ExtraName = "Huitbein",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	-- (apparently) from Vermeland
	Father = "olaf-treefeller-yngling",
	Mother = "solveig",
	Quote = "\"Halfdan, esteemed by friends and foes,\nReceives at last life's deep repose:\nThe aged man at last, though late,\nYielded in Thoten to stern fate.\"\n- Thiodolf of Huine"
	-- ruled over Hedemark, and conquered Thoten, Hadeland and much of Westfold
	-- married to Asa
})

DefineCharacter("eystein-halfdanson-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 257-258.
	Name = "Eystein",
	ExtraName = "Halfdanson", -- to differentiate him from the other Eystein Yngling
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	-- his father ruled over Hedemark
	Father = "halfdan-huitbein-yngling",
	Mother = "asa",
	Quote = "\"Grim Hel, clutched his soul away;\nAnd now where Vodle's ocean bay\nReceives the ice-cold stream, the grave\nOf Eystein stands, the good, the brave!\"\n- Thiodolf of Huine"
	-- became king in Raumarige and Westfold after his father's death
	-- married to Hilde, daughter of Eric Agnarson
})

DefineCharacter("gudrod-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 257.
	Name = "Gudrod",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	-- his father ruled over Hedemark
	Father = "halfdan-huitbein-yngling",
	Mother = "asa"
})

DefineCharacter("olaf-geirstad-alf-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 259-261.
	Name = "Olaf",
	ExtraName = "Geirstad-Alf",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman", -- king
	Civilization = "norse",
	Faction = "vestfold",
	-- king of Vestfold
	Father = "gudrod-the-magnificent-yngling",
	Mother = "alfhild",
	Trait = "upgrade-strong", -- described as remarkably handsome, very strong and large of growth
	Quote = "\"Long while this branch of Odin's stem\nWas the stout prop of Norway's realm;\nLong while King Olaf with just pride\nRuled over Westfold far and wide.\"\n- Thiodolf of Huine",
	-- Olaf was 20 years old when his father Gudrod died, so he would have been born in 804
	StartDate = 824, -- date his father died, and thus when his reign over Vestfold began
	HistoricalTitles = {
		"ruler", 824, 0, "vestfold"
	},
	HistoricalLocations = {
		824, "old_earth", "tonsberg"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "vestfold" or GetPlayerData(trigger_player, "Faction") == "norway") then
			return true
		end
		return false
	end
})

DefineCharacter("halfdan-the-black-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 260-262.
	Name = "Halfdan",
	ExtraName = "the Black",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman", -- king
	Civilization = "norse",
	Faction = "agder",
	-- his father ruled over Vestfold
	Father = "gudrod-the-magnificent-yngling",
	Mother = "aasa",
	HairVariation = "black-hair",
	-- began his reign when he was 18 years old, so he would have been born in 823
	StartDate = 841, -- reign began
	DeathDate = 863, -- reign ended
	Trait = "upgrade-strong", -- described as stout and strong
	HistoricalTitles = {
		"ruler", 841, 863, "agder"
	},
	HistoricalLocations = {
		841, "old_earth", "arendal" -- became king of Agder in 841, and Arendal seems like a reasonably good location to place him
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "agder" or GetPlayerData(trigger_player, "Faction") == "norway") then
			return true
		end
		return false
	end
})

DefineCharacter("rognvald-mountain-high-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 261.
	Name = "Rognvald",
	ExtraName = "Mountain-High",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	-- his father ruled over Vestfold
	Father = "olaf-geirstad-alf-yngling",
	Quote = "\"Rognvald, who knew so well to guide\nThe wild sea-horses through the tide:\nThe 'Mountain-high' was the proud name\nBy which the king was known to fame.\"\n- Thiodolf of Huine" -- "wild sea-horses" means ships
})

