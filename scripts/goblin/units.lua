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
--      units.ccl - Define the goblin unit-types.
--
--      (c) Copyright 2014-2015 by Andrettin
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

DefineUnitType("unit-goblin-worker", { Name = _("Worker"),
	Parent = "unit-template-worker",
	Civilization = "goblin",
	Description = _("Goblin workers do not live an enviable life. Those that have the opportunity seek to become warriors instead, a position in which they can obtain much better food and everyday commodities by raiding."),
	Image = {"file", "goblin/units/goblin_worker.png", "size", {72, 72}},
	Animations = "animations-gnomish-worker", Icon = "icon-goblin-worker",
	Accuracy = 9,
	Evasion = 10,
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	Corpse = "unit-goblin-dead-body",
	BluntDamage = true,
	CanGatherResources = {
		{
			"resource-id", "gold",
			"file-when-loaded", "goblin/units/goblin_worker_with_gold.png"
		},
		{
			"resource-id", "silver",
			"file-when-loaded", "goblin/units/goblin_worker_with_gold.png"
		},
		{
			"resource-id", "copper",
			"file-when-loaded", "goblin/units/goblin_worker_with_gold.png"
		},
		{
			"resource-id", "lumber",
			"file-when-loaded", "goblin/units/goblin_worker_with_lumber.png"
		},
		{
			"resource-id", "stone",
			"file-when-loaded", "goblin/units/goblin_worker_with_gold.png"
		},
		{
			"resource-id", "coal",
			"file-when-loaded", "goblin/units/goblin_worker_with_gold.png"
		}
	},
	Variations = {
		{
			"variation-id", "bald"
		},
		{
			"variation-id", "spiky-hair",
			"file", "goblin/units/goblin_worker_spiky_hair.png",
			"file-when-loaded", "gold", "goblin/units/goblin_worker_with_gold_spiky_hair.png",
			"file-when-loaded", "lumber", "goblin/units/goblin_worker_with_lumber_spiky_hair.png"
		}
	},
	Sounds = {
		"selected", "basic-goblin-voices-selected-group",
		"acknowledge", "basic-goblin-voices-acknowledge",
		"repair", "basic-goblin-voices-repair",
		"attack", "basic-goblin-voices-attack",
		"ready", "goblin-worker-ready",
		"help", "basic-goblin-voices-help",
		"dead", "basic-goblin-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-goblin-thief", { Name = _("Thief"),
	Parent = "unit-template-thief",
	Civilization = "goblin",
	Description = _("With their light build, goblins make excellent thieves. Indeed, many goblins do partake in that profession, causing the malaise of goblin thievery to affect not only the local tribes, but even the dwarven and gnomish countryside. These bandits specialize in delivering fatal blows when a target has its back turned to them, and for such skills they are sometimes hired by enterprising leaders seeking to give their enemies a nasty surprise."),
	Image = {"file", "goblin/units/goblin_thief.png", "size", {72, 72}},
	Animations = "animations-goblin-thief", Icon = "icon-goblin-thief",
	HitPoints = 30,
	Accuracy = 15,
	Evasion = 15,
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	Corpse = "unit-goblin-dead-body",
	PierceDamage = true,
	Sounds = {
		"selected", "basic-goblin-voices-selected-group",
		"acknowledge", "basic-goblin-voices-acknowledge",
		"attack", "basic-goblin-voices-attack",
--		"ready", "goblin-worker-ready",
		"help", "basic-goblin-voices-help",
		"dead", "basic-goblin-voices-dead",
		"hit", "dagger-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-goblin-spearman", { Name = _("Impaler"),
	Parent = "unit-template-infantry",
	Civilization = "goblin",
	Image = {"file", "goblin/units/goblin_spearman.png", "size", {72, 72}},
	Description = _("Due to their small size, the goblin infantry soldiers use the spear as their weapon of choice, as with it they can target their enemies' vital points, relying less on their lackluster strength."),
	Animations = "animations-goblin-spearman", Icon = "icon-goblin-spearman",
	Costs = {"time", 50, "gold", 500, "lumber", 50},
	HitPoints = 50,
	BasicDamage = 6, -- reduced damage, since it has a bonus against mounted units
	Accuracy = 12,
	Evasion = 12,
	BonusAgainstMounted = 100,
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	PierceDamage = true,
	Corpse = "unit-goblin-dead-body",
	Sounds = {
		"selected", "basic-goblin-voices-selected-group",
		"acknowledge", "basic-goblin-voices-acknowledge",
		"attack", "basic-goblin-voices-attack",
		"ready", "goblin-impaler-ready",
		"help", "basic-goblin-voices-help",
		"dead", "basic-goblin-voices-dead",
		"hit", "spear-attack",
		"miss", "spear-miss"
	}
} )

DefineUnitType("unit-goblin-archer", { Name = _("Archer"),
	Parent = "unit-template-archer",
	Civilization = "goblin",
	Description = _("Swift and deadly, the goblin archers hone above all the art of the ambush. Wary of being caught unprepared, they carry daggers with them, should an enemy get too close."),
	Image = {"file", "goblin/units/goblin_archer.png", "size", {72, 72}},
	Animations = "animations-goblin-archer", Icon = "icon-goblin-archer",
	HitPoints = 35,
	Accuracy = 12,
	Evasion = 12,
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	Missile = "missile-goblin-arrow",
	PierceDamage = true,
	Corpse = "unit-goblin-dead-body",
	Sounds = {
		"selected", "basic-goblin-voices-selected-group",
		"acknowledge", "basic-goblin-voices-acknowledge",
		"attack", "basic-goblin-voices-attack",
		"ready", "goblin-archer-ready",
		"help", "basic-goblin-voices-help",
		"dead", "basic-goblin-voices-dead",
		"hit", "dagger-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-goblin-war-machine", { Name = _("War Machine"),
	Parent = "unit-template-siege-engine",
	Civilization = "goblin",
	Description = _("One recurring element of the goblin architectural style is the use of bones. With their siege weapons, it is no different: the goblin war machine displays a wyrm skull on its front, along with the beast's ribs on its sides. This siege weapon has the marks of goblin craftsmanship, combining brilliant plans and excellent initiative with lack of patience to perfect the machine and make it achieve its full potential. The war machine can hold its own even against warriors skilled in hand-to-hand combat, as the goblins within it won't hesitate to pierce them with their spears. This comes at a cost, however, as cramming a catapult and a couple of goblins in such a relatively small space reduces the structural integrity of the siege weapon. The use of wyrm bones in the construction of the war machine is considered to be something of a profanation by kobolds, who worship the ancient beasts as their progenitors."),
	Image = {"file", "goblin/units/goblin_war_machine.png", "size", {72, 72}},
	Animations = "animations-goblin-war-machine", Icon = "icon-goblin-war-machine",
	HitPoints = 90,
	Missile = "missile-catapult-flaming-rock",
	CanCastSpell = {"spell-war-machine-spear-attack"},
	AutoCastActive = {"spell-war-machine-spear-attack"},
	BluntDamage = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "ballista-acknowledge",
--		"ready", "dwarven-ballista-ready",
		"help", "basic-goblin-voices-help",
		"dead", "explosion"
	}
} )

DefineUnitType("unit-goblin-glider", { Name = _("Glider"),
	Class = "glider",
	Civilization = "goblin",
	Description = _("A brainchild of goblin inventiveness, gliders are used to scout ahead and determine enemy positions."),
	Image = {"file", "goblin/units/glider.png", "size", {100, 100}},
	Animations = "animations-goblin-glider", Icon = "icon-goblin-glider",
	Costs = {"time", 65, "gold", 500, "lumber", 100},
	NeutralMinimapColor = {192, 192, 192},
	Intelligence = 11,
	Speed = 14,
	HitPoints = 20,
	DrawLevel = 60,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 9,
	Armor = 2, Missile = "missile-none",
	Accuracy = 8,
	Evasion = 8, -- hard to escape attacks on a glider
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	Priority = 40,
	Points = 40,
	Demand = 1,
	Type = "fly",
--	Corpse = "unit-goblin-dead-body",
--	ShadowFly = {Value = 1, Enable = true}, -- deactivated the shadow because it was appearing on top of the unit
	RightMouseAction = "move",
	DetectCloak = true,
	Coward = true,
	organic = true,
	Flesh = true,
	SelectableByRectangle = true,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	Sounds = {
		"selected", "basic-goblin-voices-selected-group",
		"acknowledge", "glider-flying",
		"attack", "basic-goblin-voices-attack",
		"ready", "goblin-glider-ready",
		"help", "basic-goblin-voices-help",
		"dead", "basic-goblin-voices-dead"
	}
} )
 

DefineUnitType("unit-goblin-town-hall", { Name = _("Town Hall"),
	Parent = "unit-template-town-hall",
	Civilization = "goblin",
	Description = _("The town hall is the center of a goblin settlement's life."),
	Image = {"file", "goblin/buildings/town_hall.png", "size", {128, 128}},
	Shadow = {"file", "goblin/buildings/town_hall_shadow.png", "size", {128, 128}},
	Animations = "animations-building", Icon = "icon-goblin-town-hall",
	Sounds = {
		"help", "basic-goblin-voices-help-town"
	}
} )

DefineUnitType("unit-goblin-farm", { Name = _("Farm"),
	Parent = "unit-template-farm",
	Civilization = "goblin",
	Description = _("Goblin farms provide sustenance for their settlements. Due to their high population growth goblins seek to finish the construction of new farms as quickly as possible, although they sacrifice structural integrity in the process. Contrary to the dwarves, goblins tend to plant roots, rather than mushrooms, and they also breed livestock."),
	Image = {"file", "goblin/buildings/farm.png", "size", {64, 64}},
	Shadow = {"file", "goblin/buildings/farm_shadow.png", "size", {64, 64}},
	Icon = "icon-goblin-farm",
	HitPoints = 167, -- 200 with masonry
	Costs = {"time", 80, "gold", 400, "lumber", 200},
	Sounds = {
		"help", "basic-goblin-voices-help-town"
	}
} )

DefineUnitType("unit-goblin-mess-hall", { Name = _("Mess Hall"),
	Parent = "unit-template-barracks",
	Civilization = "goblin",
	Description = _("Within mess halls goblin warriors gather to hone their skills and plan raids on nearby settlements."),
	Image = {"file", "goblin/buildings/mess_hall.png", "size", {96, 96}},
	Shadow = {"file", "goblin/buildings/mess_hall_shadow.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-goblin-mess-hall",
	Sounds = {
		"help", "basic-goblin-voices-help-town"
	}
} )

DefineUnitType("unit-goblin-lumber-mill", { Name = _("Lumber Mill"),
	Parent = "unit-template-lumber-mill",
	Civilization = "goblin",
	Description = _("Although exhibiting a crude exterior, the goblin lumber mills carry saws as technologically advanced as that of other societies."),
	Image = {"file", "goblin/buildings/lumber_mill.png", "size", {96, 96}},
	Shadow = {"file", "goblin/buildings/lumber_mill_shadow.png", "size", {96, 96}},
	Icon = "icon-goblin-lumber-mill",
	Sounds = {
		"help", "basic-goblin-voices-help-town"
	}
} )

DefineUnitType("unit-goblin-smithy", { Name = _("Fugla Forge"),
	Parent = "unit-template-smithy",
	Civilization = "goblin",
	Description = _("Goblins construct their forges out of the skulls of massive birds found on Nidavellir."),
	Background = _("The name 'Fugla' was taken from the Proto-Germanic language (the reconstructed ancestor to all Germanic languages), and means 'bird'."),
	Image = {"file", "goblin/buildings/smithy.png", "size", {96, 96}},
	Shadow = {"file", "goblin/buildings/smithy_shadow.png", "size", {96, 96}},
	Icon = "icon-goblin-smithy",
	Sounds = {
		"help", "basic-goblin-voices-help-town"
	}
} )

DefineUnitType("unit-hero-greebo", { Name = _("Impaler"),
	Parent = "unit-goblin-spearman",
	DefaultName = "Greebo",
	Civilization = "goblin",
	Class = "",
	Description = _("Greebo is a scoundrel, simply put. He lives in a rocky hideout, and survives by stealing from the farms in the region. He is quick to thrust his short sword into those who get in his way, holding love only for his baby child."),
	Image = {"file", "goblin/units/goblin_swordsman.png", "size", {72, 72}},
	Animations = "animations-goblin-swordsman", Icon = "icon-greebo",
	Gender = "male",
	Hero = true,
	HackDamage = true,
	Sounds = {
		"selected", "basic-goblin-voices-selected-group",
		"acknowledge", "basic-goblin-voices-acknowledge",
		"attack", "basic-goblin-voices-acknowledge",
		"ready", "goblin-impaler-ready",
		"help", "basic-goblin-voices-help",
		"dead", "basic-goblin-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-goblin-banner", { Name = _("Goblin Banner"),
	Civilization = "goblin",
	Image = {"file", "goblin/decorations/goblin_banner.png", "size", {32, 32}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-goblin-banner", Icon = "icon-goblin-banner",
	Speed = 0,
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	BasicDamage = 0, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,
	VisibleUnderFog = true,
	IsNotSelectable = true,
	Building = true,
	Variations = {
		{
			"variation-id", "no-skull"
		},
		{
			"variation-id", "skull"
		}
	},
	Sounds = {
		"selected", "click",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
		"dead", "building-destroyed"
	}
})
