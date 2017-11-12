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
--      (c) Copyright 2016-2017 by Andrettin
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

DefineFaction("maglemose-tribe", { -- Scandinavian pre-Indo-Europeans are very unlikely to have spoken a Vasconic language, but this fits better than making them Germanic (as the Vasconic languages are pre-Indo-European); based on the Maglemose culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
	Name = "Maglemose Tribe",
	Civilization = "basque",
	Type = "tribe",
	Colors = {"red", "white"}
})

DefineFaction("kongemose-tribe", { -- based on the Kongemose culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
	Name = "Kongemose Tribe",
	Civilization = "basque",
	Type = "tribe",
	Colors = {"red", "white"}
	-- Maglemose cultured ended and Kongemose culture arose in Zealand in 6400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
})

DefineFaction("ertebolle-tribe", { -- based on the Ertebolle culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
	Name = "Ertebolle Tribe",
	Civilization = "basque",
	Type = "tribe",
	Colors = {"red", "white"}
	-- Kongemose cultured ended and Ertebolle culture arose in Zealand in 5400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
})

DefineFaction("funnelbeaker-tribe", { -- based on the Funnel Beaker culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
	Name = "Funnelbeaker Tribe",
	Civilization = "basque",
	Type = "tribe",
	Colors = {"violet"},
	-- Ertebolle cultured ended and Funnel Beaker culture arose in Zealand in 3950 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
	HistoricalUpgrades = {
		-3600, "upgrade-wood-plow", true, -- Primitive ard (plow) appears in Northern Europe c. 3600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 297.
	}
})

DefineFaction("gylfing-tribe", { -- Scandinavian pre-Indo-Europeans are very unlikely to have spoken a Vasconic language, but this fits better than making them Germanic (as the Vasconic languages are pre-Indo-European)
	Name = "Gylfing Tribe",
	Civilization = "basque",
	Type = "tribe",
	Colors = {"green", "teal"},
	HistoricalUpgrades = {
		-3600, "upgrade-wood-plow", true, -- Primitive ard (plow) appears in Northern Europe c. 3600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 297.
	}
})

DefineFaction("cardialware-tribe", {
	Name = "Cardialware Tribe",
	Civilization = "basque",
	Type = "tribe",
	Colors = {"yellow"}
})

DefineFaction("bellbeaker-tribe", {
	Name = "Bellbeaker Tribe",
	Civilization = "basque",
	Type = "tribe",
	Colors = {"green"}
})

DefineFaction("linearware-tribe", {
	Name = "Linearware Tribe",
	Civilization = "basque",
	Type = "tribe",
	Colors = {"yellow"}
})

DefineFaction("sauveterrian-tribe", { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, pp. 167-168.
	Name = "Sauveterrian Tribe",
	Civilization = "basque", -- not actually Basque, but a pre-Indo-European people as well
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("castelnovian-tribe", { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, pp. 167-168.
	Name = "Castelnovian Tribe",
	Civilization = "basque", -- not actually Basque, but a pre-Indo-European people as well
	Type = "tribe",
	Colors = {"white"}
	-- succeeded the Sauveterrian culture
})
