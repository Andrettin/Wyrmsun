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

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--

DefineUnitType("unit-latin-town-hall", {
	Name = _("Forum"),
	Parent = "unit-template-town-hall",
	Civilization = "latin",
	Description = _("The forum is the main political gathering place in Latin communities."),
	Image = {"file", "latin/buildings/forum.png", "size", {128, 128}},
	Shadow = {"file", "latin/buildings/forum_shadow.png", "size", {128, 128}},
	Icon = "icon-latin-forum",
	Construction = "construction-land",
	Trains = {"unit-teuton-worker"},
	ButtonHint = _("Build Foru~!m"),
	ButtonKey = "m",
	AiDrops = {"unit-boots"},
	DropAffixes = {"upgrade-item-prefix-flaming", "upgrade-item-prefix-quenching", "upgrade-item-prefix-storm", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-lightning", "upgrade-item-suffix-of-the-serpent", "upgrade-item-suffix-of-the-snail", "upgrade-item-suffix-of-trickery"},
	Sounds = {
--		"help", "basic-germanic-voices-help-town"
	}
} )

DefineUnitType("unit-latin-farm", {
	Parent = "unit-template-farm",
	Civilization = "latin",
	Description = _("Farms are essential for supporting a settlement's population."),
	Image = {"file", "latin/buildings/farm.png", "size", {64, 64}},
	Shadow = {"file", "latin/buildings/farm_shadow.png", "size", {64, 64}},
	Icon = "icon-latin-farm",
	Sounds = {
--		"help", "basic-germanic-voices-help-town",
	}
} )

DefineUnitType("unit-latin-barracks", {
	Parent = "unit-template-barracks",
	Civilization = "latin",
	Description = _("The Latin barracks is the training place for their formidable legionary troops."),
	Image = {"file", "latin/buildings/barracks.png", "size", {96, 96}},
	Shadow = {"file", "latin/buildings/barracks_shadow.png", "size", {96, 96}},
	Icon = "icon-latin-barracks",
	Trains = {"unit-teuton-swordsman", "unit-teuton-spearman", "unit-teuton-archer", "unit-teuton-ritter", "unit-teuton-catapult"},
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-short-spear", "unit-long-spear", "unit-pike", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-boots", "unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows"},
	DropAffixes = {"upgrade-item-prefix-flaming", "upgrade-item-prefix-quenching", "upgrade-item-prefix-storm", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-lightning", "upgrade-item-suffix-of-the-serpent", "upgrade-item-suffix-of-the-snail", "upgrade-item-suffix-of-trickery"},
	Sounds = {
--		"help", "basic-germanic-voices-help-town"
	}
} )

DefineUnitType("unit-latin-smithy", {
	Parent = "unit-template-smithy",
	Civilization = "latin",
	Description = _("Latin smithies provide the javelins, swords and other equipment that legionaries require in battle."),
	Image = {"file", "latin/buildings/smithy.png", "size", {96, 96}},
	Shadow = {"file", "latin/buildings/smithy_shadow.png", "size", {96, 96}},
	Icon = "icon-latin-smithy",
	TechnologyPointCost = 1,
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield"},
	DropAffixes = {"upgrade-item-prefix-flaming", "upgrade-item-prefix-quenching", "upgrade-item-prefix-storm", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-lightning", "upgrade-item-suffix-of-the-serpent", "upgrade-item-suffix-of-the-snail", "upgrade-item-suffix-of-trickery"},
	Sounds = {
--		"help", "basic-germanic-voices-help-town"
	}
} )

DefineUnitType("unit-latin-stables", {
	Parent = "unit-template-stables",
	Civilization = "latin",
	Description = _("Roman stables provide horses for their cavalry troops, as well as for several other uses, as in agriculture."),
	Image = {"file", "latin/buildings/stables.png", "size", {96, 96}},
	Shadow = {"file", "latin/buildings/stables_shadow.png", "size", {96, 96}},
	Icon = "icon-latin-stables",
	TechnologyPointCost = 1,
	Drops = {"unit-horse"},
	Sounds = {
--		"help", "basic-teuton-voices-help-town"
	}
} )
