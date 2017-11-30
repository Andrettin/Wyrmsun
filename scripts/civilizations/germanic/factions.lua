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
--      (c) Copyright 2015-2017 by Andrettin
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

DefineFaction("asa-tribe", {
	Name = "Asa Tribe",
	Civilization = "germanic",
	Type = "tribe",
	Colors = {"orange", "red"},
	FactionUpgrade = "upgrade-faction-asa-tribe",
	Description = "The Asa are the legendary progenitors of the Germanic peoples.",
	Background = "In the Ynglinga Saga, the Asa (another name for the Aesir) were Odin's people, who originally lived in Asaland (identified with Asia), a realm centered in the city of Asgard. They went forth from their original lands to Scandinavia and northern Central Europe, establishing themselves in those regions.",
	HistoricalResources = {
		-2900, "copper", 0, -- Westward Migration scenario
		-2900, "lumber", 0, -- Westward Migration scenario
		-2900, "stone", 0, -- Westward Migration scenario
		-2800, "copper", 2500, -- The Settlement of Scandinavia scenario
		-2800, "lumber", 2500, -- The Settlement of Scandinavia scenario
		-2800, "stone", 2500 -- The Settlement of Scandinavia scenario
	}
})

DefineFaction("herminone-tribe", { -- according to Tacitus one of the earliest Germanic tribes; Source: Tacitus, "The Germany and the Agricola of Tacitus", 1897, section 2.
	Name = "Herminone Tribe",
	Civilization = "germanic",
	ParentFaction = "asa-tribe",
	Type = "tribe",
	Colors = {"green"},
	FactionUpgrade = "upgrade-faction-skeldung-tribe"
})

DefineFaction("hersing-tribe", {
	Name = "Hersing Tribe",
	Civilization = "germanic",
	Type = "tribe",
	Colors = {"white"},
	FactionUpgrade = "upgrade-faction-skeldung-tribe",
	DefaultAI = "hersing-tribe",
	Background = "In Norse mythology, Hersir was a chieftain whose daughter married Jarl."
})

DefineFaction("hlesing-tribe", {
	Name = "Hlesing Tribe",
	Civilization = "germanic",
	Type = "tribe",
	Colors = {"black"},
	FactionUpgrade = "upgrade-faction-jarling-tribe",
	DefaultAI = "passive",
	Background = "In Norse mythology, Thor (accompanied by Thialfi) slew a group of savage brides of berserkers at the island of Hlesey.",
	HistoricalDiplomacyStates = {
		-1101, "hersing-tribe", "war"
	}
})

DefineFaction("ingaevone-tribe", { -- according to Tacitus one of the earliest Germanic tribes; Source: Tacitus, "The Germany and the Agricola of Tacitus", 1897, section 2.
	Name = "Ingaevone Tribe",
	Civilization = "germanic",
	ParentFaction = "asa-tribe",
	Type = "tribe",
	Colors = {"white"},
	FactionUpgrade = "upgrade-faction-yngling-tribe"
	-- lived near the sea
})

DefineFaction("istaevone-tribe", { -- according to Tacitus one of the earliest Germanic tribes; Source: Tacitus, "The Germany and the Agricola of Tacitus", 1897, section 2.
	Name = "Istaevone Tribe",
	Civilization = "germanic",
	ParentFaction = "asa-tribe",
	Type = "tribe",
	Colors = {"black"},
	FactionUpgrade = "upgrade-faction-asa-tribe"
})

DefineFaction("jarling-tribe", {
	Name = "Eraling Tribe",
	Civilization = "germanic",
	Type = "tribe",
	Colors = {"yellow"},
	FactionUpgrade = "upgrade-faction-jarling-tribe",
	Background = "In Norse mythology, Jarl (rendered in Proto-Germanic as Erala) was one of the sons of the god Rig, and the ancestor of those belonging to the social class of warriors. Unlike his treatment of his other sons, Rig revealed himself to Jarl as his father, and taught him the art of runes and magic.",
	HistoricalDiplomacyStates = {
		-1101, "hlesing-tribe", "war"
	}
})

DefineFaction("karling-tribe", {
	Name = "Karling Tribe",
	Civilization = "germanic",
	Type = "tribe",
	Colors = {"brown"},
	FactionUpgrade = "upgrade-faction-karling-tribe",
	DefaultAI = "passive",
	Background = "In Norse mythology, Karl (rendered in Proto-Germanic as Karla) was one of the sons of the god Rig, and the ancestor of those belonging to the social class of peasants."
})

DefineFaction("skeldung-tribe", { -- Skjoldung in the original Norse sagas, here rendered in Proto-Germanic; mythical Danish dynasty, Skjöldr was a son of Odin set to rule over Reidgothland (Jutland) and Zealand; Source: Snorri Sturlson, "Heimskringla", 1844; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Skeldung Tribe",
	Civilization = "germanic",
	ParentFaction = "asa-tribe",
	Type = "tribe",
	Colors = {"red", "white"},
	FactionUpgrade = "upgrade-faction-skeldung-tribe",
--	DefaultAI = "sea-attack",
	HistoricalDiplomacyStates = {
		-1101, "hlesing-tribe", "war"
	}
})

DefineFaction("thielung-tribe", {
	Name = "Thielung Tribe",
	Civilization = "germanic",
	Type = "tribe",
	Colors = {"white"},
	FactionUpgrade = "upgrade-faction-thielung-tribe",
	Background = "In the Gutasaga, Thieluar (who is identified by several scholars with the mythological figure Thialfi) was the first person to discover the island of Gotland. He lifted a curse on the island, and his lineage ruled over it for many years.",
	HistoricalDiplomacyStates = {
		-1101, "hlesing-tribe", "war"
	}
})

DefineFaction("thralling-tribe", {
	Name = "Thrahiling Tribe",
	Civilization = "germanic",
	Type = "tribe",
	Colors = {"black"},
	FactionUpgrade = "upgrade-faction-thralling-tribe",
	DefaultAI = "passive",
	Background = "In Norse mythology, Thrall (rendered in Proto-Germanic as Thrahila) was one of the sons of the god Rig, and the ancestor of those belonging to the social class of thralls."
})

DefineFaction("yngling-tribe", { -- mythical Swedish dynasty, Yngve was a son of Odin set to succeed him in the rule of Sweden; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 9.
	Name = "Yngling Tribe",
	Civilization = "germanic",
	ParentFaction = "asa-tribe",
	Type = "tribe",
	Colors = {"blue", "yellow"},
	FactionUpgrade = "upgrade-faction-yngling-tribe",
--	DefaultAI = "sea-attack",
	HistoricalCapitals = {
		-2800, "sigtun"
	},
	HistoricalDiplomacyStates = {
		-1101, "hlesing-tribe", "war"
	}
})
