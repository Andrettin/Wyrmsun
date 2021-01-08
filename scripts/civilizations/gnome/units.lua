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
--      (c) Copyright 2014-2020 by Andrettin
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

DefineUnitType("unit-gnomish-recruit", {
	Name = "Recruit",
	Parent = "unit-template-infantry",
	Civilization = "gnome",
	Description = "Gnomish recruits form the common soldiery of the gnomish armies. Due to their small size, they tend to attack by thrusting their swords, rather than slashing with them, seeking to strike vital points and cause more damage than their strength would allow when hacking away at enemies.",
	Quote = "\"With a tremendous crash, the great mountain burst apart and a whole troop of tiny, little mountain gnomes came out, dancing grotesquely like sprites of another world.\"\n- The Gnomes of the Saline Mountains",
	Image = {"file", "gnome/units/gnomish_recruit.png", "size", {72, 72}},
	Animations = "animations-gnomish-recruit", Icon = "icon-gnomish-recruit",
	DefaultEquipment = {
		{"weapon", "unit-thrusting-sword"},
		{"shield", "unit-round-shield"},
		{"boots", "unit-wool-shoes"}
	},
	Costs = {"copper", 500},
	HitPoints = 50,
	Accuracy = 11,
	Evasion = 11,
	Priority = 50,
	Points = 40,
	Corpse = "unit-gnomish-dead-body",
	WeaponClasses = {"thrusting_sword", "sword"},
	AiDrops = {"unit-thrusting-sword", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-wool-shoes", "unit-furry-wool-shoes", "unit-cheese", "unit_meat", "unit-potion-of-healing"},
	PierceDamage = true,
	InvertedSoutheastArms = true,
	ButtonKey = "t",
	Variations = {
		{
			"variation-id", "blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair",
			"icon", "icon-gnomish-recruit-gray-hair",
			"file", "gnome/units/gnomish_recruit_gray_hair.png",
			"weight", 1
		}
	},
	Sounds = {
		"selected", "gnomish-recruit-selected-group",
		"acknowledge", "basic-gnome-voices-acknowledge",
		"attack", "basic-gnome-voices-attack",
		"ready", "gnomish-recruit-ready",
		"help", "basic-gnome-voices-help",
		"dead", "basic-gnome-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-gnomish-duelist", {
	Name = "Duelist",
	Parent = "unit-template-veteran-infantry",
	Civilization = "gnome",
	Description = "Veteran gnomish warriors have honed the art of fencing to a remarkable degree, making them formidable opponents in single combat.",
	Image = {"file", "gnome/units/gnomish_recruit.png", "size", {72, 72}},
	Animations = "animations-gnomish-recruit", Icon = "icon-gnomish-duelist",
	DefaultEquipment = {
		{"weapon", "unit-thrusting-sword"},
		{"shield", "unit-round-shield"},
		{"boots", "unit-wool-shoes"}
	},
	HitPoints = 60,
	Accuracy = 13,
	Evasion = 13,
	Corpse = "unit-gnomish-dead-body",
	WeaponClasses = {"thrusting_sword", "sword"},
	AiDrops = {"unit-thrusting-sword", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-wool-shoes", "unit-furry-wool-shoes", "unit-cheese", "unit_meat", "unit-potion-of-healing"},
	PierceDamage = true,
	InvertedSoutheastArms = true,
	Variations = {
		{
			"variation-id", "blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair",
			"icon", "icon-gnomish-duelist-gray-hair",
			"file", "gnome/units/gnomish_recruit_gray_hair.png",
			"weight", 1
		}
	},
	Sounds = {
		"selected", "gnomish-recruit-selected-group",
		"acknowledge", "basic-gnome-voices-acknowledge",
		"attack", "basic-gnome-voices-attack",
		"help", "basic-gnome-voices-help",
		"dead", "basic-gnome-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-gnomish-master-at-arms", {
	Name = "Master at Arms",
	Parent = "unit-template-heroic-infantry",
	Civilization = "gnome",
	Description = "Deadly accurate, the gnomish master at arms is an extremely tough foe to defeat. Many a dwarven warrior has scorned the diminutive gnome's abilities, only to fail to deliver a single blow to the master at arms - with a fatal puncturing strike soon sealing the dwarf's fate.",
	Image = {"file", "gnome/units/gnomish_recruit.png", "size", {72, 72}},
	Animations = "animations-gnomish-recruit", Icon = "icon-gnomish-master-at-arms",
	DefaultEquipment = {
		{"weapon", "unit-thrusting-sword"},
		{"shield", "unit-round-shield"},
		{"boots", "unit-wool-shoes"}
	},
	HitPoints = 75,
	Accuracy = 15,
	Evasion = 15,
	Corpse = "unit-gnomish-dead-body",
	WeaponClasses = {"thrusting_sword", "sword"},
	CanCastSpell = {"spell-puncture"},
	AutoCastActive = {"spell-puncture"},
	AiDrops = {"unit-thrusting-sword", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-wool-shoes", "unit-furry-wool-shoes", "unit-cheese", "unit_meat", "unit-potion-of-healing", "unit-elixir-of-dexterity"},
	PierceDamage = true,
	InvertedSoutheastArms = true,
	Variations = {
		{
			"variation-id", "blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair",
			"icon", "icon-gnomish-master-at-arms-gray-hair",
			"file", "gnome/units/gnomish_recruit_gray_hair.png",
			"weight", 1
		}
	},
	Sounds = {
		"selected", "gnomish-recruit-selected-group",
		"acknowledge", "basic-gnome-voices-acknowledge",
		"attack", "basic-gnome-voices-attack",
		"help", "basic-gnome-voices-help",
		"dead", "basic-gnome-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-gnomish-herbalist", {
	Name = "Herbalist",
	Parent = "unit-template-priest",
	Civilization = "gnome",
	Description = "The priests of gnomish societies, herbalists are in deep contact with nature. They honor the souls of plants while using them to concoct powerful potions and medicines.",
	Image = {"file", "gnome/units/gnomish_herbalist_gray_hair.png", "size", {72, 72}},
	Animations = "animations-gnomish-herbalist", Icon = "icon-gnomish-herbalist",
	DefaultEquipment = {
		{"boots", "unit-wool-shoes"}
	},
	HitPoints = 35,
	Accuracy = 10,
	Evasion = 10,
	Corpse = "unit-gnomish-dead-body",
	CanCastSpell = {"spell-herbal-cure", "spell-portent"},
	AutoCastActive = {"spell-herbal-cure"},
	AiDrops = {"unit-wool-shoes", "unit-furry-wool-shoes", "unit-cheese", "unit_meat", "unit-potion-of-healing"},
	HackDamage = true,
	ButtonPos = 2,
	ButtonKey = "h",
	Sounds = {
		"selected", "gnomish-herbalist-selected-group",
		"acknowledge", "basic-gnome-voices-acknowledge",
		"attack", "basic-gnome-voices-attack",
		"ready", "gnomish-herbalist-ready",
		"help", "basic-gnome-voices-help",
		"dead", "basic-gnome-voices-dead",
		"hit", "dagger-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-gnomish-caravan", {
	Name = "Caravan",
	Parent = "unit-caravan",
	Civilization = "gnome",
	Description = "These caravans are used by gnomish societies to conduct trade, bringing goods as far as the Heart Mountains.",
	Image = {"file", "gnome/units/gnomish_caravan.png", "size", {64, 64}},
	Animations = "animations-gnomish-caravan", Icon = "icon-gnomish-caravan",
	Sounds = {
--		"acknowledge", "ballista-acknowledge",
		"ready", "gnomish-caravan-ready",
		"help", "basic-gnome-voices-help"
	}
} )

Load("scripts/civilizations/gnome/units_deep_gnome.lua")
Load("scripts/civilizations/gnome/units_derro.lua")

DefineUnitType("unit-gnomish-town-hall", {
	Name = "Town Hall",
	Parent = "unit-template-town-hall",
	Civilization = "gnome",
	Description = "The town hall is the center of a gnomish settlement's life.",
	Image = {"file", "gnome/buildings/town_hall.png", "size", {128, 128}},
	Shadow = {"file", "gnome/buildings/town_hall_shadow.png", "size", {128, 128}},
	Animations = "animations-building", Icon = "icon-gnomish-town-hall",
	AiDrops = {"unit-wool-shoes", "unit-furry-wool-shoes"},
	DropSpells = {"spell-acthnic-allegiance"},
	Sounds = {
		"ready", "basic-gnome-voices-work-complete",
		"help", "basic-gnome-voices-help-town"
	}
} )

DefineUnitType("unit-gnomish-farm", {
	Name = "Farm",
	Parent = "unit-template-farm",
	Civilization = "gnome",
	Description = "Gnomish farms provide sustenance for their settlements. Contrary to the dwarves, the gnomes tend to plant vegetables, rather than mushrooms, and they also breed livestock.",
	Image = {"file", "gnome/buildings/farm.png", "size", {64, 64}},
	Shadow = {"file", "gnome/buildings/farm_shadow.png", "size", {64, 64}},
	Icon = "icon-gnomish-farm",
	Sounds = {
		"ready", "basic-gnome-voices-work-complete",
		"help", "basic-gnome-voices-help-town"
	}
} )

DefineUnitType("unit-gnomish-barracks", {
	Name = "Barracks",
	Parent = "unit-template-barracks",
	Civilization = "gnome",
	Description = "The gnomish barracks serves as a place for military training and arregimentation for the gnomes.",
	Image = {"file", "gnome/buildings/barracks.png", "size", {96, 96}},
	Shadow = {"file", "gnome/buildings/barracks_shadow.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-gnomish-barracks",
	AiDrops = {"unit-thrusting-sword", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-wool-shoes", "unit-furry-wool-shoes"},
	Sounds = {
		"ready", "basic-gnome-voices-work-complete",
		"help", "basic-gnome-voices-help-town"
	}
} )
