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

-- Tribes

DefineFaction("aequian-tribe", {
	Name = "Aequian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Colors = {"teal"}
})

DefineFaction("elymian-tribe", {
	Name = "Elymian Tribe",
	Civilization = "latin", -- were they actually an Italic people?
	Type = "tribe",
	Colors = {"yellow", "red"}
})

DefineFaction("frentanian-tribe", {
	Name = "Frentanian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Colors = {"orange"}
})

DefineFaction("iapygian-tribe", {
	Name = "Iapygian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Colors = {"teal"}
})

DefineFaction("latin-tribe", {
	Name = "Latin Tribe",
	Civilization = "latin",
	Type = "tribe",
	Colors = {"red", "yellow"}
})

DefineFaction("marsian-tribe", {
	Name = "Marsian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("messapian-tribe", {
	Name = "Messapian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Colors = {"green"}
})

DefineFaction("oenotrian-tribe", {
	Name = "Oenotrian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Colors = {"blue"}
})

DefineFaction("picentian-tribe", {
	Name = "Picentian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Colors = {"green"}
})

DefineFaction("sabellian-tribe", {
	Name = "Sabellian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Colors = {"white"}
})

DefineFaction("sabine-tribe", {
	Name = "Sabine Tribe",
	Civilization = "latin",
	Type = "tribe",
	Colors = {"blue"}
})

DefineFaction("samnite-tribe", {
	Name = "Samnite Tribe",
	Civilization = "latin",
	Type = "tribe",
	Colors = {"yellow"}
})

DefineFaction("sicanian-tribe", {
	Name = "Sicanian Tribe",
	Civilization = "latin", -- were they actually an Italic people?
	Type = "tribe",
	Colors = {"yellow", "red"}
})

DefineFaction("sicel-tribe", {
	Name = "Sicel Tribe",
	Civilization = "latin", -- were they actually an Italic people?
	Type = "tribe",
	Colors = {"red", "yellow"}
})

DefineFaction("umbrian-tribe", {
	Name = "Umbrian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Colors = {"pink"}
})

DefineFaction("venetian-tribe", {
	Name = "Venetian Tribe",
	Civilization = "latin", -- is not correct, but they could be reasonably close to justify it for game purposes
	Type = "tribe",
	Colors = {"teal"}
})

-- Polities

DefineFaction("rome", {
	Name = "Rome",
	Civilization = "latin",
	Type = "polity",
	Colors = {"red", "yellow"},
	DefaultTier = "kingdom",
	DevelopsFrom = {"latin-tribe"},
	DefaultStartPos = {4126, 1096}, -- Rome
	HistoricalGovernmentTypes = {
		-500, "republic", -- correct?
		-27, "monarchy" -- Augustus assumed power in Rome; was this the date in which he actually became emperor?
	},
	HistoricalTiers = {
		-27, "empire" -- Rome was an empire under Augustus
	},
	HistoricalCapitals = {
		-500, "Latium" -- Rome was Rome's capital by 500 BC (this may seem like a silly remark, but even city-states may happen to change their capitals from their namesake to other cities); Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalUpgrades = {
		0, "upgrade-teuton-writing", true, -- polities must have writing
		-264, "upgrade-teuton-masonry", true, -- Rome should already have masonry technology by then
		-58, "upgrade-teuton-coinage", true -- Silver currency existent in the Roman Republic during Caesar's time, and he issued gold currency during his campaigns in Gaul; Source: F. Seebohm, "On the early currencies of the German Tribes", 1903, p. 190.
	},
	HistoricalDiplomacyStates = {
		-54, "eburones-tribe", "war", -- the Eburones attacked the Romans in 54 BC (instigated by the Treviri, of whom they were clients); Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 223-224.
		-54, "nervii-tribe", "war", -- the Nervii allied with the Eburones to attack the Romans in 54 BC; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 223-224.
		161, "armenia", "overlord" -- in 161 Armenia was a vassal state of Rome; Source: "Ancient Warfare VII.6", 2013, p. 6.
	}
})

-- Holy Orders

DefineFaction("hermaistes-apolloniastes-poseidoniastes", { -- Source: Tenney Frank, "Mercantilism and Rome's Foreign Policy", 1913, p. 243.
	Name = "Hermaistes", -- "Hermaistes, Apolloniastes, Poseidoniastes"
	Civilization = "latin",
	Type = "holy-order",
	Colors = {"red"},
	DefaultTier = "barony",
--	Description = "The \"Hermaistes, Apolloniastes, Poseidoniastes\" was a Roman society founded in Delos around 113 BC.",
	HistoricalUpgrades = {
		-113, "upgrade-deity-hermes", true,
		-113, "upgrade-deity-apollo", true,
		-113, "upgrade-deity-poseidon", true
	}
})
