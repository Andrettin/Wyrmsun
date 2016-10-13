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

DefineFaction("Astures Tribe", { -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("Boii Tribe", {
	Civilization = "celt",
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("Caledonii Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("Cantabri Tribe", { -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"orange"}
})

DefineFaction("Cauci Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"yellow"}
})

DefineFaction("Cotini Tribe", {
	Civilization = "celt",
	Type = "tribe",
	Colors = {"teal"}
})

DefineFaction("Damnii Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"pink"}
})

DefineFaction("Darini Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("Gangani Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"black"}
})

DefineFaction("Hibernii Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"green"}
})

DefineFaction("Norici Tribe", {
	Civilization = "celt",
	Type = "tribe",
	Colors = {"white"} -- another color, perhaps?
})

DefineFaction("Otalini Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"purple"}
})

DefineFaction("Pict Tribe", {
	Civilization = "celt",
	Type = "tribe",
	Colors = {"cyan"}
})

DefineFaction("Scot Tribe", {
	Civilization = "celt",
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("Selgovae Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"white"}
})

DefineFaction("Sovantae Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"blue"}
})

-- Polities

DefineFaction("Argyll", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 77, 86.
	Civilization = "celt", -- founded by
	Type = "polity",
--	Language = "old-irish", -- founded by Irish settlers
	Colors = {"purple"},
	DefaultTier = "kingdom"
})

DefineFaction("Meath", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 88.
	Civilization = "celt",
	Type = "polity",
--	Language = "old-irish", -- it was an Irish kingdom
	Colors = {"red"},
	DefaultTier = "kingdom"
})

-- Non-Playable Tribes

DefineFaction("Vana Tribe", {
	Civilization = "celt",
	Type = "tribe",
	Colors = {"blue", "cyan"},
	Playable = false
})

Load("scripts/civilizations/celt/factions_briton.lua")
Load("scripts/civilizations/celt/factions_gaul.lua")
