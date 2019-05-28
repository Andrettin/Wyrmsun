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
--      (c) Copyright 2015-2019 by Andrettin
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

DefineCharacter("lorikus", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 6.
	Name = "Lorikus", -- "Lóríkus"; Duke of Thrudheim, married to Lórá (also called Glórá)
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain/duke
	Civilization = "germanic",
	StartDate = -3000, -- beginning of the process of the Indo-European migrations to Scandinavia
	DeathDate = -3000 + 12, -- Trór becomes 12 years old and slays Lóríkus
	ViolentDeath = true,
	Deities = {"odin", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000, -3000 + 12, "asa-tribe"
	}
})

DefineCharacter("lora", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 6.
	Name = "Lora", -- "Lórá"; Lórá (also called Glórá) was Lóríkus' wife
	Gender = "female",
	Type = "unit-germanic-archer",
	Civilization = "germanic",
	StartDate = -3000,
	Deities = {"odin", "tyr"}
})

DefineCharacter("troan", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 6.
	Name = "Troan", -- "Tróán"; Trór's mother; in the euhemerized account Tróán is said to be a daughter of the Trojan king Priam; however, since she doesn't seem to appear in any other account about Troy, it makes more sense to place this character together with Trór's genealogy (which we've placed to match the time of the Indo-European migrations to Scandinavia) rather than with Priam, specially since she's part of the account of how Scandinavia came to be settled
	Gender = "female",
	Type = "unit-germanic-archer",
	Civilization = "germanic",
	StartDate = -3000,
	DeathDate = -3000 + 10,
	Deities = {"thor", "tyr"}
})

DefineCharacter("tror", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 6.
	Name = "Tror", -- "Trór"; euhemerized version of Thor
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	Trait = "upgrade-mighty", -- described as goodly to look upon; very strong
	HairVariation = "blond-hair", -- his hair was "fairer than gold"
	StartDate = -3000, -- born
	DeathDate = -3000 + 12 + 10, -- 30 years is the default lifetime of a hero after having risen to prominence, but here we use 10 to make the genealogy fit from 3000 to 2800 BC, by when Scandinavia was settled by Indo-Europeans (in the Ynglinga Saga, with an euhemerized Odin leading the Asa there)
	Mother = "troan",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12, -3000 + 12 + 10, "asa-tribe" -- when Trór was 12 years old, he slew his foster-father Lóríkus and took his place
	}
})

DefineCharacter("loridi", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Loridi", -- "Lóridi"; resembled his father, Trór
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -3000 + 12 + (10 * 1),
	DeathDate = -3000 + 12 + (10 * 2),
	Father = "tror",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12 + (10 * 1), -3000 + 12 + (10 * 2), "asa-tribe"
	}
})

DefineCharacter("einridi", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Einridi",
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -3000 + 12 + (10 * 2),
	DeathDate = -3000 + 12 + (10 * 3),
	Father = "loridi",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12 + (10 * 2), -3000 + 12 + (10 * 3), "asa-tribe"
	}
})

DefineCharacter("vingethor", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Vingethor",
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -3000 + 12 + (10 * 3),
	DeathDate = -3000 + 12 + (10 * 4),
	Father = "einridi",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12 + (10 * 3), -3000 + 12 + (10 * 4), "asa-tribe"
	}
})

DefineCharacter("vingener", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Vingener",
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -3000 + 12 + (10 * 4),
	DeathDate = -3000 + 12 + (10 * 5),
	Father = "vingethor",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12 + (10 * 4), -3000 + 12 + (10 * 5), "asa-tribe"
	}
})

DefineCharacter("moda", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Moda", -- "Móda"
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -3000 + 12 + (10 * 5),
	DeathDate = -3000 + 12 + (10 * 6),
	Father = "vingener",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12 + (10 * 5), -3000 + 12 + (10 * 6), "asa-tribe"
	}
})

DefineCharacter("magan", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Magan", -- "Magi" in the original; this is a Proto-Germanic rendering of the name
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -3000 + 12 + (10 * 6),
	DeathDate = -3000 + 12 + (10 * 7),
	Father = "moda",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12 + (10 * 6), -3000 + 12 + (10 * 7), "asa-tribe"
	}
})

DefineCharacter("seskef", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Seskef",
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -3000 + 12 + (10 * 7),
	DeathDate = -3000 + 12 + (10 * 8),
	Father = "magan",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12 + (10 * 7), -3000 + 12 + (10 * 8), "asa-tribe"
	}
})

DefineCharacter("bedvig", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Bedvig",
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -3000 + 12 + (10 * 8),
	DeathDate = -3000 + 12 + (10 * 9),
	Father = "seskef",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12 + (10 * 8), -3000 + 12 + (10 * 9), "asa-tribe"
	}
})

DefineCharacter("athra", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Athra",
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -3000 + 12 + (10 * 9),
	DeathDate = -3000 + 12 + (10 * 10),
	Father = "bedvig",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12 + (10 * 9), -3000 + 12 + (10 * 10), "asa-tribe"
	}
})

DefineCharacter("itermann", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Itermann", -- "Ítermann"
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -3000 + 12 + (10 * 10),
	DeathDate = -3000 + 12 + (10 * 11),
	Father = "athra",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12 + (10 * 10), -3000 + 12 + (10 * 11), "asa-tribe"
	}
})

DefineCharacter("heremod", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Heremod", -- "Heremód"
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -3000 + 12 + (10 * 11),
	DeathDate = -3000 + 12 + (10 * 12),
	Father = "itermann",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12 + (10 * 11), -3000 + 12 + (10 * 12), "asa-tribe"
	}
})

DefineCharacter("skjaldun", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Skjaldun",
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -3000 + 12 + (10 * 12),
	DeathDate = -3000 + 12 + (10 * 13),
	Father = "heremod",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12 + (10 * 12), -3000 + 12 + (10 * 13), "asa-tribe"
	}
})

DefineCharacter("bjaf", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Bjaf", -- "Bjáf"
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -3000 + 12 + (10 * 13),
	DeathDate = -3000 + 12 + (10 * 14),
	Father = "skjaldun",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12 + (10 * 13), -3000 + 12 + (10 * 14), "asa-tribe"
	}
})

DefineCharacter("jat", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Jat", -- "Ját"
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -3000 + 12 + (10 * 14),
	DeathDate = -3000 + 12 + (10 * 15),
	Father = "bjaf",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12 + (10 * 14), -3000 + 12 + (10 * 15), "asa-tribe"
	}
})

DefineCharacter("gudawulfa", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Gudawulfa", -- "Gudólfr" in the original; this is a Proto-Germanic rendering of the name
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -3000 + 12 + (10 * 15),
	DeathDate = -3000 + 12 + (10 * 16),
	Father = "jat",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12 + (10 * 15), -3000 + 12 + (10 * 16), "asa-tribe"
	}
})

DefineCharacter("finn", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Finn",
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -3000 + 12 + (10 * 16),
	DeathDate = -3000 + 12 + (10 * 17),
	Father = "gudawulfa",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12 + (10 * 16), -3000 + 12 + (10 * 17), "asa-tribe"
	}
})

DefineCharacter("friallaf", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Friallaf", -- "Fríallaf"
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -3000 + 12 + (10 * 17),
	DeathDate = -3000 + 12 + (10 * 18),
	Father = "finn",
	Deities = {"thor", "tyr"},
	HistoricalTitles = {
		"head-of-state", -3000 + 12 + (10 * 17), -3000 + 12 + (10 * 18), "asa-tribe"
	}
})

DefineCharacter("frigida", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Frigida", -- "Frígídá"; wife of Vóden; euhemerized version of Frigg; had "second sight"
	Gender = "female",
	Type = "unit-germanic-archer",
	Civilization = "germanic",
	Trait = "upgrade-wise",
	StartDate = -3000 + 12 + (10 * 18),
	DeathDate = -2800 + (30 * 1),
	Deities = {"odin", "tyr"}
})

DefineCharacter("yngve", { -- Source: Snorri Sturlson, "Heimskringla", 1844; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 9; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 221.
	Name = "Yngve", -- has to be defined first so that he becomes the first in line to succede Vóden in Sweden; also known as Yng or Yngvi; from him the Ynglings spring
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -2800,
	DeathDate = -2800 + (30 * 2),
	Father = "voden", -- another account gives Yngve as the son of Halfdan the Old
	Mother = "frigida", -- presumably, since she was Vóden's wife
	Deities = {"odin", "tyr"},
	HistoricalTitles = {
		"head-of-state", -2800 + (30 * 1), -2800 + (30 * 2), "yngling-tribe"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "asa-tribe" or GetPlayerData(trigger_player, "Faction") == "yngling-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("vegdeg", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Vegdeg", -- in the Prose Edda, Vegdeg was Vóden's son who was set to rule over East Saxland; Vóden's first son (presumably)
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	Trait = "upgrade-mighty", -- described as a "mighty king"
	StartDate = -2800,
	DeathDate = -2800 + (30 * 2),
	Father = "voden",
	Mother = "frigida", -- presumably, since she was Vóden's wife
	Deities = {"odin", "tyr"}
})

DefineCharacter("vitgils", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Vitgils",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	-- his father was in the Prose Edda set to rule over East Saxland
	Father = "vegdeg",
	Deities = {"odin", "tyr"}
})

DefineCharacter("vitta", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Vitta",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	Father = "vitgils",
	Deities = {"odin", "tyr"}
})

DefineCharacter("heingistr", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Heingist", -- "Heingistr"
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	Father = "vitta",
	Deities = {"odin", "tyr"}
})

DefineCharacter("sigarr", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Sigarr",
	-- prefix is likely Old Norse "Sigr"
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	Father = "vitgils",
	Deities = {"odin", "tyr"}
})

DefineCharacter("svebdeg", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Svebdeg", -- also known as Svipdagr
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	Father = "sigarr",
	Deities = {"odin", "tyr"}
})

DefineCharacter("beldeg", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, pp. 7-8.
	Name = "Beldeg", -- euhemerized version of Baldr; in the Prose Edda, was a son of Odin set to rule over Westphalia; Vóden's second son
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -2800,
	DeathDate = -2800 + (30 * 2),
	Father = "voden",
	Mother = "frigida", -- presumably, since she was Vóden's wife
	Deities = {"odin", "tyr"}
})

DefineCharacter("frjodigar", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Frjodigar", -- "Frjódigar"; also known as Fródi
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	Father = "branda",
	Deities = {"odin", "tyr"}
})

DefineCharacter("freovin", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Freovin", -- "Freóvin"
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	Father = "frjodigar",
	Deities = {"odin", "tyr"}
})

DefineCharacter("uvigg", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Uvigg",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	Father = "freovin",
	Deities = {"odin", "tyr"}
})

DefineCharacter("gevis", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Gevis", -- also known as Gave
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	Father = "uvigg",
	Deities = {"odin", "tyr"}
})

DefineCharacter("sigi", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Sigi", -- in the Prose Edda, was a son of Odin set to rule over Frankland; Vóden's third son
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	StartDate = -2800,
	DeathDate = -2800 + (30 * 2),
	Father = "voden",
	Mother = "frigida", -- presumably, since she was Vóden's wife
	Deities = {"odin", "tyr"}
})

DefineCharacter("rerir", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Rerir", -- ancestor of the Völsungs
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	-- his father was in the Prose Edda set to rule over Frankland
	Father = "sigi",
	Deities = {"odin", "tyr"}
})

DefineCharacter("fridleifr-skeldung", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Frithulaibo", -- "Fridleifr" in the original; this is a tentative Proto-Germanic rendering of the name
	-- prefix is likely the Old Norse word "Friđr"
--	FamilyName = "Skeldung", -- "Skjoldung" in the original Norse saga (from Skjöldr), here rendered as Skeldu (Proto-Germanic version of "Skjöldr") and -ung (the suffix in the original word; which should be changed for a Proto-Germanic version)
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	Faction = "skeldung-tribe",
	Father = "skeldu",
	Deities = {"odin", "tyr"},
	HistoricalTitles = {
		"head-of-state", 0, 0, "skeldung-tribe"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "skeldung-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("saemingr-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, p. 212; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 9.
	Name = "Saeming", -- "Sæmingr"; Yngve (or Vóden's) son set to rule over Norway
--	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	Father = "yngve",
	Deities = {"odin", "tyr"}
})

DefineCharacter("thrahila", {
	Name = "Thrahila", -- Proto-Germanic rendering of "Thrall", the ancestor of the class of thralls in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 19-20.
	Gender = "male",
	Type = "unit-germanic-worker",
	Civilization = "germanic",
	Faction = "thralling-tribe",
	Description = "The robust Thrahila is a hard worker, constantly engaged in logging and other laborious activities.",
	HairVariation = "black-hair", -- described as black-haired in the myths
	Trait = "upgrade-dutiful",
	Deities = {"odin", "heimdall"}
})

DefineCharacter("karla", {
	Name = "Karla", -- Proto-Germanic rendering of "Karl", the ancestor of the class of peasants in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 21.
	Gender = "male",
	Type = "unit-germanic-worker",
	Civilization = "germanic",
	Faction = "karling-tribe",
	HairVariation = "brown-hair", -- described as brown-haired in the myths
	Trait = "upgrade-intelligent",
	Deities = {"odin", "heimdall"}
})

DefineCharacter("erala", {
	Name = "Erala", -- Proto-Germanic rendering of "Jarl", the ancestor of the class of warriors in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 22-24.
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	Faction = "jarling-tribe",
	Description = "The young warrior Erala believes his true father to be the god Rig. Feeling that his divine heritage has fated him to rule over vast lands, Erala sets about to carve territory for himself.",
	Icon = "icon-jarl",
	HairVariation = "blond-hair",
	Trait = "upgrade-strong",
	StartDate = -1600,
	Deities = {"odin", "heimdall"},
	HistoricalLocations = {
		-1600, "earth", "vejle"
	}
})

DefineCharacter("egill", { -- Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 111.
	Name = "Egill",
	Gender = "male",
	Type = "unit-germanic-worker",
	Civilization = "germanic",
	Deities = {"thor", "tyr"}
})

DefineCharacter("thialfi", { -- Thor's servant in Norse mythology; associated by several scholars with Þieluar, the discoverer of Gotland; Source: "Guta Saga: The History of the Gotlanders", 1999, pp. xvii-xviii, 3; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 111.
	Name = "Thialfi",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	Faction = "thielung-tribe",
	Description = "Terrified by a calamitous thunderstorm, Thialfi's parents pledged him to the service of the lightning god Thunraz when he was still a boy. Years later as a grown up man, during a dream he heard his master command him to sail to an undiscovered island...",
	Trait = "upgrade-quick",
	Father = "egill",
	Deities = {"thor", "tyr"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "thielung-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("roskva", { -- Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 111.
	Name = "Roskva", -- "Röskva"
	Gender = "female",
	Type = "unit-germanic-worker",
	Civilization = "germanic",
	Faction = "thielung-tribe",
	Father = "egill",
	Deities = {"thor", "tyr"}
	-- Thor's servant in Norse mythology
})

DefineCharacter("hafthi", { -- Source: "Guta Saga: The History of the Gotlanders", 1999, p. 3.
	Name = "Hafthi", -- "Hafþi"
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	Faction = "thielung-tribe",
	Background = "In the Guta Saga, Hafthi was the son of Thieluar, and the first to settle the island of Gotland after his father discovered it.",
	Father = "thialfi",
	Deities = {"thor", "tyr"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "thielung-tribe") then
			return true
		end
		return false
	end
	-- married to Huitastierna
})

DefineCharacter("huitastierna", { -- Source: "Guta Saga: The History of the Gotlanders", 1999, p. 3.
	Name = "Huitastierna",
	Gender = "female",
	Type = "unit-germanic-worker",
	Civilization = "germanic",
	Faction = "thielung-tribe",
	Background = "In the Guta Saga, Huitastierna was the wife of Hafthi, and together they were the first to settle the island of Gotland.",
	Deities = {"thor", "tyr"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "thielung-tribe") then
			return true
		end
		return false
	end
	-- married to Hafthi
})

DefineCharacter("guti", { -- Source: "Guta Saga: The History of the Gotlanders", 1999, p. 3.
	Name = "Guti",
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	Faction = "thielung-tribe",
	Background = "In the Guta Saga, Guti was the eldest son of Hafthi and Huitastierna, and he inherited the northern third of the island of Gotland from them.",
	Father = "hafthi",
	Mother = "huitastierna",
	Deities = {"thor", "tyr"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "thielung-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("graipr", { -- Source: "Guta Saga: The History of the Gotlanders", 1999, p. 3.
	Name = "Graip", -- "Graipr"
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	Faction = "thielung-tribe",
	Background = "In the Guta Saga, Graip was the second son of Hafthi and Huitastierna, and he inherited the middle third of the island of Gotland from them.",
	Father = "hafthi",
	Mother = "huitastierna",
	Deities = {"thor", "tyr"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "thielung-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("gunfiaun", { -- Source: "Guta Saga: The History of the Gotlanders", 1999, p. 3.
	Name = "Gunfiaun",
	Gender = "male",
	Type = "unit-germanic-chieftain", -- chieftain
	Civilization = "germanic",
	Faction = "thielung-tribe",
	Background = "In the Guta Saga, Gunfiaun was the youngest son of Hafthi and Huitastierna, and he inherited the southern third of the island of Gotland from them.",
	Father = "hafthi",
	Mother = "huitastierna",
	Deities = {"thor", "tyr"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "thielung-tribe") then
			return true
		end
		return false
	end
})
