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
--      (c) Copyright 2015-2022 by Andrettin
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

-- Polities

DefineFaction("agder", {
	Name = "Agder",
	Adjective = "Agder",
	Civilization = "norse",
	Type = "polity",
	Color = "red",
	FactionUpgrade = "upgrade_faction_norway",
	Icon = "icon-flag-five-red-birds-on-yellow"
})

DefineFaction("halogaland", {
	Name = "Halogaland",
	Adjective = "Halogaland",
	Civilization = "norse",
	Type = "polity",
	Color = "purple",
	FactionUpgrade = "upgrade_faction_norway",
	Icon = "icon-flag-five-red-birds-on-yellow"
})

DefineFaction("hedmark", {
	Name = "Hedmark",
	Adjective = "Hedmark",
	Civilization = "norse",
	Type = "polity",
	Color = "green",
	FactionUpgrade = "upgrade_faction_norway",
	Icon = "icon-flag-five-purple-birds-on-green"
})

DefineFaction("hordaland", {
	Name = "Hordaland",
	Adjective = "Hordaland",
	Civilization = "norse",
	Type = "polity",
	Color = "cyan",
	FactionUpgrade = "upgrade_faction_norway",
	Icon = "icon-flag-five-orange-birds-on-black"
})

DefineFaction("orkney", { -- Earldom of Orkney
	Name = "Orkney",
	Adjective = "Orkney",
	Civilization = "norse",
	Type = "polity",
	Color = "yellow",
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Earldom"
	},
	MinisterTitles = {
		"ruler", "male", "monarchy", "duchy", "Earl",
		"ruler", "female", "monarchy", "duchy", "Earl" -- correct?
	},
	FactionUpgrade = "upgrade_faction_norway",
	Icon = "icon-flag-cyan-lion-on-red"
})

DefineFaction("sogn", {
	Name = "Sogn",
	Adjective = "Sogn",
	Civilization = "norse",
	Type = "polity",
	Color = "blue",
	FactionUpgrade = "upgrade_faction_norway",
	Icon = "icon-flag-yellow-lion-on-cyan"
})

DefineFaction("vingulmark", {
	Name = "Vingulmark",
	Adjective = "Vingulmark",
	Civilization = "norse",
	Type = "polity",
	Color = "red",
	FactionUpgrade = "upgrade_faction_norway",
	Icon = "icon-flag-habsburg",
	HistoricalDiplomacyStates = {
		{841, 9, 1}, "agder", "war" -- Halfdan the Black, king of Agder, attacked Vingulmark with an army in the autumn of 841; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 262.
	}
})

-- Mercenary Companies

DefineFaction("jomsvikings", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 94.
	Name = "Jomsvikings",
	Adjective = "Jomsviking",
	Civilization = "norse",
	Type = "mercenary_company",
	Color = "blue",
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade_faction_denmark",
	Description = "The Jomsvikings were a group of warriors and pirates based in Jomsburg."
})

DefineFaction("varangian-guard", {
	Name = "Varangian Guard",
	Adjective = "Varangian",
	Civilization = "norse",
	Type = "mercenary_company",
	Color = "red",
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade_faction_sweden"
})
