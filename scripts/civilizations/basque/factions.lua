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
--      (c) Copyright 2016 by Andrettin
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

DefineFaction("Maglemose Tribe", { -- Scandinavian pre-Indo-Europeans are very unlikely to have spoken a Vasconic language, but this fits better than making them Germanic (as the Vasconic languages are pre-Indo-European); based on the Maglemose culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
	Civilization = "basque",
	Type = "tribe",
	Colors = {"red", "white"}
})

DefineFaction("Kongemose Tribe", { -- based on the Kongemose culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
	Civilization = "basque",
	Type = "tribe",
	Colors = {"red", "white"},
	HistoricalFactionDerivations = {-6400, "basque", "Maglemose Tribe"} -- Maglemose cultured ended and Kongemose culture arose in Zealand in 6400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
})

DefineFaction("Ertebolle Tribe", { -- based on the Ertebolle culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
	Civilization = "basque",
	Type = "tribe",
	Colors = {"red", "white"},
	HistoricalFactionDerivations = {-6400, "basque", "Kongemose Tribe"} -- Kongemose cultured ended and Ertebolle culture arose in Zealand in 5400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
})

DefineFaction("Funnelbeaker Tribe", { -- based on the Funnel Beaker culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
	Civilization = "basque",
	Type = "tribe",
	Colors = {"violet"},
	HistoricalFactionDerivations = {-6400, "basque", "Ertebolle Tribe"}, -- Ertebolle cultured ended and Funnel Beaker culture arose in Zealand in 3950 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
	HistoricalTechnologies = {
		"upgrade-germanic-wood-plow", -3600, -- Primitive ard (plow) appears in Northern Europe c. 3600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 297.
	}
})

DefineFaction("Gylfing Tribe", { -- Scandinavian pre-Indo-Europeans are very unlikely to have spoken a Vasconic language, but this fits better than making them Germanic (as the Vasconic languages are pre-Indo-European)
	Civilization = "basque",
	Type = "tribe",
	Colors = {"green", "teal"},
	HistoricalTechnologies = {
		"upgrade-germanic-wood-plow", -3600, -- Primitive ard (plow) appears in Northern Europe c. 3600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 297.
	}
})

DefineFaction("Cardialware Tribe", {
	Civilization = "basque",
	Type = "tribe",
	Colors = {"yellow"}
})

DefineFaction("Bellbeaker Tribe", {
	Civilization = "basque",
	Type = "tribe",
	Colors = {"green"}
})

DefineFaction("Linearware Tribe", {
	Civilization = "basque",
	Type = "tribe",
	Colors = {"yellow"}
})
