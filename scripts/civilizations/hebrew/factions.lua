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
--      (c) Copyright 2017-2019 by Andrettin
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

DefineFaction("aramaean-tribe", {
	Name = "Aramaean Tribe",
	Civilization = "hebrew", -- not quite accurate, should change to something more appropriate
	Type = "tribe",
	Colors = {"black"},
	DefaultTier = "duchy"
})

DefineFaction("asher-tribe", {
	Name = "Asher Tribe",
	Civilization = "hebrew",
	Type = "tribe",
	Colors = {"orange"},
	DefaultTier = "duchy"
})

DefineFaction("benjamin-tribe", {
	Name = "Benjamin Tribe",
	Civilization = "hebrew",
	Type = "tribe",
	Colors = {"orange"},
	DefaultTier = "duchy"
})

DefineFaction("ephraim-tribe", {
	Name = "Ephraim Tribe",
	Civilization = "hebrew",
	Type = "tribe",
	Colors = {"orange"},
	DefaultTier = "duchy"
})

DefineFaction("gad-tribe", {
	Name = "Gad Tribe",
	Civilization = "hebrew",
	Type = "tribe",
	Colors = {"orange"},
	DefaultTier = "duchy"
})

DefineFaction("issachar-tribe", {
	Name = "Issachar Tribe",
	Civilization = "hebrew",
	Type = "tribe",
	Colors = {"orange"},
	DefaultTier = "duchy"
})

DefineFaction("judah-tribe", {
	Name = "Judah Tribe",
	Civilization = "hebrew",
	Type = "tribe",
	Colors = {"orange"},
	DefaultTier = "duchy"
})

DefineFaction("kenite-tribe", {
	Name = "Kenite Tribe",
	Civilization = "hebrew", -- not quite accurate, should change to something more appropriate
	Type = "tribe",
	Colors = {"green"},
	DefaultTier = "duchy"
})

DefineFaction("manasseh-tribe", {
	Name = "Manasseh Tribe",
	Civilization = "hebrew",
	Type = "tribe",
	Colors = {"orange"},
	DefaultTier = "duchy"
})

DefineFaction("naphtali-tribe", {
	Name = "Naphtali Tribe",
	Civilization = "hebrew",
	Type = "tribe",
	Colors = {"orange"},
	DefaultTier = "duchy"
})

DefineFaction("philistine-tribe", {
	Name = "Philistine Tribe",
	Civilization = "hebrew", -- not quite accurate, should change to something more appropriate
	Type = "tribe",
	Colors = {"green"},
	DefaultTier = "duchy"
})

DefineFaction("reuben-tribe", {
	Name = "Reuben Tribe",
	Civilization = "hebrew",
	Type = "tribe",
	Colors = {"orange"},
	DefaultTier = "duchy"
})

DefineFaction("simeon-tribe", {
	Name = "Simeon Tribe",
	Civilization = "hebrew",
	Type = "tribe",
	Colors = {"orange"},
	DefaultTier = "duchy"
})

DefineFaction("zebulon-tribe", {
	Name = "Zebulon Tribe",
	Civilization = "hebrew",
	Type = "tribe",
	Colors = {"orange"},
	DefaultTier = "duchy"
})

DefineFaction("israel", {
	Name = "Israel",
	Civilization = "hebrew",
	Type = "polity",
	Colors = {"yellow"},
	DefaultTier = "kingdom"
})

DefineFaction("judah", {
	Name = "Judah",
	Civilization = "hebrew",
	Type = "polity",
	Colors = {"blue"},
	DefaultTier = "kingdom",
	HistoricalCapitals = {
		0, "jerusalem"
	},
	HistoricalDiplomacyStates = {
		-750, "assyria", "vassal" -- the Kingdom of Judah was tributary to Assyria in the 750-625 BC period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
	}
})
