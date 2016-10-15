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

DefineFaction("astures-tribe", { -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Astures Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("boii-tribe", {
	Name = "Boii Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("caledonii-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Caledonii Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("cantabri-tribe", { -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Cantabri Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"orange"}
})

DefineFaction("cauci-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Cauci Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"yellow"}
})

DefineFaction("cotini-tribe", {
	Name = "Cotini Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"teal"}
})

DefineFaction("damnii-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Damnii Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"pink"}
})

DefineFaction("darini-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Darini Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("gangani-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Gangani Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"black"}
})

DefineFaction("hibernii-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Hibernii Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"green"}
})

DefineFaction("norici-tribe", {
	Name = "Norici Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"white"} -- another color, perhaps?
})

DefineFaction("otalini-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Otalini Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"purple"}
})

DefineFaction("pict-tribe", {
	Name = "Pict Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"cyan"}
})

DefineFaction("scot-tribe", {
	Name = "Scot Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("selgovae-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Selgovae Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"white"}
})

DefineFaction("sovantae-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Sovantae Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"blue"}
})

-- Polities

DefineFaction("argyll", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 77, 86.
	Name = "Argyll",
	Civilization = "celt", -- founded by
	Type = "polity",
--	Language = "old-irish", -- founded by Irish settlers
	Colors = {"purple"},
	DefaultTier = "kingdom"
})

DefineFaction("meath", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 88.
	Name = "Meath",
	Civilization = "celt",
	Type = "polity",
--	Language = "old-irish", -- it was an Irish kingdom
	Colors = {"red"},
	DefaultTier = "kingdom"
})

-- Non-Playable Tribes

DefineFaction("vana-tribe", {
	Name = "Vana Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"blue", "cyan"},
	Playable = false
})

Load("scripts/civilizations/celt/factions_briton.lua")
Load("scripts/civilizations/celt/factions_gaul.lua")
