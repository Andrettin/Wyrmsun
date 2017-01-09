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

DefineCharacter("chilperich", {
	Name = "Chilperich",
	Gender = "male",
	Type = "unit-frank-horseman",
	Civilization = "teuton",
	Faction = "francia",
	Description = _("Born to the late Frankish king Chlothar I, Chilperich harbors great ambitions to establish his supremacy over the entire realm, subsuming his brothers' share of their father's inheritance."),
	HairVariation = "brown-hair",
	Trait = "upgrade-reckless"
})

DefineCharacter("gunthram", {
	Name = "Gunthram",
	Gender = "male",
	Type = "unit-frank-horseman",
	Civilization = "teuton",
	Faction = "francia",
	Description = _("As one of the sons of the Frankish king Chlothar I, Gunthram inherited the Burgundian part of the Frankish realm from his father."),
	HairVariation = "brown-hair",
	Trait = "upgrade-dextrous"
})

DefineCharacter("sigibert", { -- Sigibert I (535-575), Frankish king; son of Chlothar; identified with the Siegfried/Sigurd of the myths; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, pp. 327-328.
	Name = "Sigibert",
	Gender = "male",
	Type = "unit-frank-horseman",
	Civilization = "teuton",
	Faction = "austrasia",
	Description = _("The son of the Frankish king Chlothar I, Sigibert inherited vast lands upon the death of his father. A courageous hero, Sigibert faces both the enmity of his brother Chilperich and the threat of invasion from abroad."),
	Icon = "icon-sigibert",
	HairVariation = "brown-hair",
	Trait = "upgrade-strong"
	-- in the myths Siegfried/Sigurd was the son of Siegmund and Sieglind, and he was Gudrun's husband; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 94.
})
