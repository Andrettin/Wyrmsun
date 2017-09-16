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

DefineFaction("suebi-tribe", {
	Name = "Suebi Tribe",
	Civilization = "suebi",
	Type = "tribe",
	Colors = {"black"},
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade-faction-suebi-tribe",
	Icon = "icon-flag-green-lion-on-purple",
	DevelopsFrom = {"asa-tribe", "herminone-tribe", "hersing-tribe", "jarling-tribe", "karling-tribe", "thralling-tribe"},
	Description = "The Suebi were a powerful tribe in ancient Germania, battling the Romans a number of times. From the Suebi tribes such as the Marcomanni and the Quadi would originate. In the 5th century a group of Suebi settled and conquered Galicia, establishing a kingdom there.",
	HistoricalDiplomacyStates = {
		-55, "ubii-tribe", "overlord" -- the Ubii were tributaries of the Suebi in 55 BC; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 227-228.
	}
})

DefineFaction("alamanni-tribe", {
	Name = "Alamanni Tribe",
	Civilization = "suebi",
	Type = "tribe",
	Colors = {"blue"},
	FactionUpgrade = "upgrade-faction-alamanni-tribe",
	Icon = "icon-flag-blue-lion-on-yellow",
	DevelopsFrom = {"suebi-tribe"}
})

DefineFaction("buri-tribe", {
	Name = "Buri Tribe",
	Civilization = "suebi", -- accurate?
	ParentFaction = "suebi-tribe", -- accurate?
	Type = "tribe",
	Colors = {"violet"},
	FactionUpgrade = "upgrade-faction-buri-tribe",
	Icon = "icon-flag-red-lion-on-green",
	DevelopsFrom = {"suebi-tribe"}
})

DefineFaction("hermunduri-tribe", {
	Name = "Hermunduri Tribe",
	Civilization = "suebi", -- accurate?
	Type = "tribe",
	Colors = {"blue"},
	FactionUpgrade = "upgrade-faction-hermunduri-tribe",
	Icon = "icon-flag-habsburg",
	DevelopsFrom = {"suebi-tribe"},
	HistoricalDiplomacyStates = {
		170, "rome", "war", -- in 170 a coalition led by the Marcomanni (which included the Hermunduri) crossed the Danube and attacked the Romans; Source: "Ancient Warfare VII.6", 2013, p. 29.
		171, "rome", "peace" -- in 171 the Romans forced most of the tribes of the Marcomannic coalition to a peace; Source: "Ancient Warfare VII.6", 2013, p. 32.
	}
})

DefineFaction("marcomanni-tribe", {
	Name = "Marcomanni Tribe",
	Civilization = "suebi",
	Type = "tribe",
	Colors = {"orange", "red"}, -- change to a better one?
	FactionUpgrade = "upgrade-faction-marcomanni-tribe",
	Icon = "icon-flag-cyan-lion-on-red",
	DevelopsFrom = {"suebi-tribe"},
	Description = "The Marcomanni were a Suebic tribe. Eventually they migrated to the east, settling in Bohemia and expelling the local Boii tribe. In the 2nd century they fought the terrible Marcomannic Wars against the Romans. The name \"Marcomanni\" means \"march-men\", or \"frontier-men\".",
	HistoricalDiplomacyStates = {
		170, "rome", "war", -- in 170 a coalition led by the Marcomanni (which included the Quadi and the Hermunduri) crossed the Danube and attacked the Romans; Source: "Ancient Warfare VII.6", 2013, p. 29.
		170, "hermunduri-tribe", "alliance",
		172, "rome", "peace", -- in 172 the Romans forced the Marcomanni to a peace; Source: "Ancient Warfare VII.6", 2013, p. 32.
		177, "rome", "war", -- the Marcomanni entered conflict with the Romans again in 177; Source: "Ancient Warfare VII.6", 2013, p. 8.
		177, "rome", "peace" -- in (apparently) 177 the Romans again forced the Marcomanni to a peace; Source: "Ancient Warfare VII.6", 2013, p. 8.
	}
})

DefineFaction("quadi-tribe", {
	Name = "Quadi Tribe",
	Civilization = "suebi",
	ParentFaction = "marcomanni-tribe",
	Type = "tribe",
	Colors = {"brown"},
	FactionUpgrade = "upgrade-faction-quadi-tribe",
	Icon = "icon-flag-green-lion-on-orange",
	DevelopsFrom = {"suebi-tribe"}, -- the Quadi were a Suebic tribe
	HistoricalDiplomacyStates = {
		170, "rome", "war", -- in 170 a coalition led by the Marcomanni (which included the Quadi) crossed the Danube and attacked the Romans; Source: "Ancient Warfare VII.6", 2013, p. 29.
		170, "marcomanni-tribe", "alliance",
		171, "rome", "peace", -- in 171 the Romans forced the Quadi to a peace; Source: "Ancient Warfare VII.6", 2013, p. 32.
		173, "rome", "war", -- the Quadi entered conflict with the Romans again in (apparently) 173; Source: "Ancient Warfare VII.6", 2013, p. 8.
		174, "rome", "peace", -- in 174 the Romans forced the Quadi to a peace; Source: "Ancient Warfare VII.6", 2013, p. 8.
		177, "rome", "war", -- the Quadi entered conflict with the Romans again in 177; Source: "Ancient Warfare VII.6", 2013, p. 8.
		179, "rome", "peace" -- in 179 the Romans again forced the Quadi to a peace; Source: "Ancient Warfare VII.6", 2013, p. 8.
	}
})

DefineFaction("semnone-tribe", {
	Name = "Semnone Tribe",
	Civilization = "suebi",
	Type = "tribe",
	Colors = {"brown"},
	FactionUpgrade = "upgrade-faction-semnone-tribe",
	Icon = "icon-flag-green-lion-on-purple",
	DevelopsFrom = {"suebi-tribe"}
})

DefineFaction("thuringian-tribe", {
	Name = "Thuringian Tribe",
	Civilization = "suebi",
	Type = "tribe",
	Colors = {"green"},
	FactionUpgrade = "upgrade-faction-thuringian-tribe",
	Icon = "icon-flag-yellow-lion-on-cyan",
	DevelopsFrom = {"hermunduri-tribe"}
})

DefineFaction("galicia", { -- Suebi kingdom of Galicia
	Name = "Galicia",
	Civilization = "suebi",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-galicia",
	Icon = "icon-flag-green-lion-on-purple",
	DevelopsFrom = {"suebi-tribe", "semnone-tribe", "marcomanni-tribe", "quadi-tribe", "buri-tribe"}
})
