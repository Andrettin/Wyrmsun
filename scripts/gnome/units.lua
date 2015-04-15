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
--      units.ccl - Define the gnomish unit-types.
--
--      (c) Copyright 2014 by Andrettin
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

DefineUnitType("unit-gnomish-worker", { Name = _("Scavenger"),
	Parent = "unit-template-worker",
	Civilization = "gnome",
	Description = _("Scavengers serve as the main source of manual labor in the gnomish lands."),
	Image = {"file", "gnome/units/gnomish_worker.png", "size", {72, 72}},
	Animations = "animations-gnomish-worker", Icon = "icon-gnomish-worker",
	Accuracy = 9,
	Evasion = 10,
	Corpse = "unit-gnomish-dead-body",
	CanGatherResources = {
		{
			"file-when-loaded", "gnome/units/gnomish_worker_with_gold.png",
			"resource-id", "gold",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 3,
			"wait-at-depot", 150},
		{
			"file-when-loaded", "gnome/units/gnomish_worker_with_lumber.png",
			"resource-id", "lumber",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 24,
			"wait-at-depot", 150
		},
		{
			"file-when-loaded", "gnome/units/gnomish_worker_with_gold.png",
			"resource-id", "stone",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 24,
			"wait-at-depot", 150
		}
	},
	Variations = {
		{
			"variation-id", "blond-hair"
		},
		{
			"variation-id", "gray-hair",
			"icon", "icon-gnomish-worker-gray-hair",
			"file", "gnome/units/gnomish_worker_gray_hair.png",
			"file-when-loaded", "gold", "gnome/units/gnomish_worker_with_gold_gray_hair.png",
			"file-when-loaded", "lumber", "gnome/units/gnomish_worker_with_lumber_gray_hair.png"
		}
	},
	Sounds = {
		"selected", "gnomish-worker-selected-group",
		"acknowledge", "basic-gnome-voices-acknowledge",
		"ready", "gnomish-worker-ready",
		"help", "basic-gnome-voices-help",
		"dead", "basic-gnome-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-gnomish-recruit", { Name = _("Recruit"),
	Parent = "unit-template-infantry",
	Civilization = "gnome",
	Description = _("Gnomish recruits form the common soldiery of the gnomish armies. Due to their small size, they tend to attack by thrusting their swords, rather than slashing with them, seeking to strike vital points and cause more damage than their strength would allow when hacking away at enemies."),
	Quote = _("\"With a tremendous crash, the great mountain burst apart and a whole troop of tiny, little mountain gnomes came out, dancing grotesquely like sprites of another world.\" - The Gnomes of the Saline Mountains"),
	Image = {"file", "gnome/units/gnomish_recruit.png", "size", {72, 72}},
	Animations = "animations-gnomish-recruit", Icon = "icon-gnomish-recruit",
	HitPoints = 50,
	Accuracy = 12,
	Evasion = 12,
	Corpse = "unit-gnomish-dead-body",
	Variations = {
		{
			"variation-id", "blond-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "gnome/units/gnomish_recruit_gray_hair.png",
			"upgrade-required", "upgrade-old"
		}
	},
	Sounds = {
		"selected", "gnomish-recruit-selected-group",
		"acknowledge", "basic-gnome-voices-acknowledge",
		"ready", "gnomish-recruit-ready",
		"help", "basic-gnome-voices-help",
		"dead", "basic-gnome-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-gnomish-herbalist", { Name = _("Herbalist"),
	Parent = "unit-template-priest",
	Civilization = "gnome",
	Description = _("The priests of gnomish societies, herbalists are in deep contact with nature. They honor the souls of plants while using them to concoct powerful potions and medicines."),
	Image = {"file", "gnome/units/gnomish_herbalist.png", "size", {72, 72}},
	Animations = "animations-gnomish-herbalist", Icon = "icon-gnomish-herbalist",
	HitPoints = 35,
	Accuracy = 10,
	Evasion = 10,
	Corpse = "unit-gnomish-dead-body",
	CanCastSpell = {"spell-herbal-cure", "spell-portent"},
	AutoCastActive = {"spell-herbal-cure"},
	Variations = {
		{
			"variation-id", "blond-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "gnome/units/gnomish_herbalist_gray_hair.png",
			"upgrade-required", "upgrade-old"
		}
	},
	Sounds = {
		"selected", "gnomish-herbalist-selected-group",
		"acknowledge", "basic-gnome-voices-acknowledge",
		"ready", "gnomish-herbalist-ready",
		"help", "basic-gnome-voices-help",
		"dead", "basic-gnome-voices-dead",
		"hit", "dagger-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-gnomish-caravan", { Name = _("Caravan"),
	Class = "caravan",
	Civilization = "gnome",
	Description = _("These caravans are used by gnomish societies to conduct trade, bringing goods as far as the Heart Mountains."),
	Image = {"file", "gnome/units/gnomish_caravan.png", "size", {64, 64}},
	Animations = "animations-gnomish-caravan", Icon = "icon-gnomish-caravan",
	Costs = {"time", 250, "gold", 900, "lumber", 300},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Speed = 5,
	HitPoints = 110,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {63, 63},
	SightRange = 9, ComputerReactionRange = 11, PersonReactionRange = 9,
	Priority = 70,
	Points = 100,
	Demand = 1,
	Type = "land",
	Coward = true,
	RightMouseAction = "move",
	SelectableByRectangle = true,
	MaxOnBoard = 2,
	CanTransport = {"GroundAttack", "false", "Fauna", "false", "LoseCargo", "false", "Mounted", "false"}, -- forbidding ground attack as an ugly way of making ballistas not be able to enter the transporter; and forbidden "SaveCargo" is an ugly way of making caravans not be able to enter other caravans
	AttackFromTransporter = true,
	SaveCargo = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "ballista-acknowledge",
		"ready", "gnomish-caravan-ready",
		"help", "basic-gnome-voices-help",
		"dead", "explosion",
		"step", "step-grass",
		"step-rock", "step-rock",
		"step-grass", "step-grass"
	}
} )

DefineUnitType("unit-gnomish-town-hall", { Name = _("Town Hall"),
	Parent = "unit-template-town-hall",
	Civilization = "gnome",
	Description = _("The town hall is the center of a gnomish settlement's life."),
	Image = {"file", "gnome/buildings/town_hall.png", "size", {128, 128}},
	Animations = "animations-building", Icon = "icon-gnomish-town-hall",
	Sounds = {
		"selected", "town-hall-selected",
--		"acknowledge", "town-hall-acknowledge",
		"ready", "basic-gnome-voices-work-complete",
		"help", "basic-gnome-voices-help-town",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-gnomish-farm", { Name = _("Farm"),
	Parent = "unit-template-farm",
	Civilization = "gnome",
	Description = _("Gnomish farms provide sustenance for their settlements. Contrary to the dwarves, the gnomes tend to plant vegetables, rather than mushrooms, and they also breed livestock."),
	Image = {"file", "gnome/buildings/farm.png", "size", {64, 64}},
	Icon = "icon-gnomish-farm",
	Sounds = {
		"selected", "farm-selected",
--		"acknowledge", "farm-acknowledge",
		"ready", "basic-gnome-voices-work-complete",
		"help", "basic-gnome-voices-help-town",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-gnomish-barracks", { Name = _("Barracks"),
	Parent = "unit-template-barracks",
	Civilization = "gnome",
	Description = _("The gnomish barracks serves as a place for military training and arregimentation for the gnomes."),
	Image = {"file", "gnome/buildings/barracks.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-gnomish-barracks",
	Sounds = {
		"selected", "barracks-selected",
--		"acknowledge", "barracks-acknowledge",
		"ready", "basic-gnome-voices-work-complete",
		"help", "basic-gnome-voices-help-town",
		"dead", "building-destroyed"
	}
} )
