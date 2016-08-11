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
--      (c) Copyright 2015-2016 by Andrettin
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

DefineFaction("Asa Tribe", {
	Civilization = "germanic",
	Type = "tribe",
	Colors = {"orange", "red"},
	FactionUpgrade = "upgrade-asa-tribe-faction",
	StartView = {4243, 692}, -- Sigtun / Segiztûna
	SplitsTo = {"Skeldung Tribe", "Volsung Tribe"},
	Description = "The Asa are the legendary progenitors of the Germanic peoples.",
	Background = "In the Ynglinga Saga, the Asa (another name for the Aesir) were Odin's people, who originally lived in Asaland (identified with Asia), a realm centered in the city of Asgard. They went forth from their original lands to Scandinavia and northern Central Europe, establishing themselves in those regions.",
	HistoricalTechnologies = {
		"upgrade-germanic-wood-plow", -4000, -- Indo-Europeans possessed plows (as indicated by the existence of a word for plow in their vocabulary); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 104.
	}
})

DefineFaction("Skeldung Tribe", { -- Skjoldung in the original Norse sagas, here rendered in Proto-Germanic; mythical Danish dynasty, Skjöldr was a son of Odin set to rule over Reidgothland (Jutland) and Zealand; Source: Snorri Sturlson, "Heimskringla", 1844; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Civilization = "germanic",
	ParentFaction = "Asa Tribe",
	Type = "tribe",
	Colors = {"red", "white"},
--	DevelopsTo = {"Dane Tribe", "Goth Tribe", "Herulian Tribe", "Jute Tribe"}
	DevelopsTo = {"Dane Tribe", "Goth Tribe", "Herulian Tribe"},
	FactionUpgrade = "upgrade-skeldung-tribe-faction",
	StartView = {4112, 784}, -- Leidre / Lejre
	HistoricalFactionDerivations = {-2800, "germanic", "Asa Tribe"},
	HistoricalTechnologies = {
		"upgrade-germanic-bronze-shield", -1100, -- bronze shields found in the Danish bogs began to be made; Source: http://en.natmus.dk/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-bronze-age-shields/
		"upgrade-germanic-broad-sword", -1000 -- broad bronze sword from Føllenslev; Source: http://en.natmus.dk/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/men-and-woman-in-the-bronze-age/
	}
})

DefineFaction("Volsung Tribe", { -- mythical Frankish dynasty, which originated from the descendants of Odin set to rule over "Frankland"; Source: Snorri Sturlson, "Heimskringla", 1844; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Civilization = "germanic",
	ParentFaction = "Asa Tribe",
	Type = "tribe",
	Colors = {"blue"},
--	DevelopsTo = {"Frank Tribe"}
	FactionUpgrade = "upgrade-volsung-tribe-faction"
})

DefineFaction("Yngling Tribe", { -- mythical Swedish dynasty, Yngve was a son of Odin set to succeed him in the rule of Sweden; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 9.
	Civilization = "germanic",
	ParentFaction = "Asa Tribe",
	Type = "tribe",
	Colors = {"blue", "yellow"},
	DevelopsTo = {"Goth Tribe", "Swede Tribe"},
	FactionUpgrade = "upgrade-yngling-tribe-faction",
	HistoricalFactionDerivations = {-2770, "germanic", "Asa Tribe"}
})
