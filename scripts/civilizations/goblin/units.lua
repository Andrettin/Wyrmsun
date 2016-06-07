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
--      (c) Copyright 2014-2016 by Andrettin
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
	DefaultEquipment = {
		{"boots", "unit-boots"}
	},
	Accuracy = 9,
	Evasion = 10,
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	Corpse = "unit-goblin-dead-body",
	WeaponClasses = {"mace"},
	BluntDamage = true,
	AiDrops = {"unit-hammer", "unit-mining-pick", "unit-boots", "unit-cheese"},
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
			"file-when-loaded", "silver", "goblin/units/goblin_worker_with_gold_spiky_hair.png",
			"file-when-loaded", "copper", "goblin/units/goblin_worker_with_gold_spiky_hair.png",
			"file-when-loaded", "stone", "goblin/units/goblin_worker_with_gold_spiky_hair.png",
			"file-when-loaded", "coal", "goblin/units/goblin_worker_with_gold_spiky_hair.png",
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

DefineUnitType("unit-goblin-magnate", { Name = _("Magnate"),
	Parent = "unit-template-heroic-merchant",
	Civilization = "goblin",
	Description = _("The Goblin syndicates always keen on profitable opportunities. Their leadership is largely drawn from magnates, extremely wealthy and savvy merchants whose scruples leave something to be desired. Engaging in trade with all sorts of people and in all kinds of goods, goblin traders often stradle the twilight zone between legality and illegality."),
	Image = {"file", "goblin/units/rogue.png", "size", {72, 72}},
	Animations = "animations-goblin-thief", Icon = "icon-goblin-magnate",
	DefaultEquipment = {
		{"boots", "unit-boots"}
	},
	Accuracy = 11,
	Evasion = 15,
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	Corpse = "unit-goblin-dead-body",
	WeaponClasses = {"dagger"},
	PierceDamage = true,
	AiDrops = {"unit-boots", "unit-cheese"},
	Sounds = {
		"selected", "basic-goblin-voices-selected-group",
		"acknowledge", "basic-goblin-voices-acknowledge",
		"attack", "basic-goblin-voices-attack",
		"ready", "goblin-worker-ready",
		"help", "basic-goblin-voices-help",
		"dead", "basic-goblin-voices-dead",
		"hit", "dagger-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-goblin-thief", { Name = _("Thief"),
	Parent = "unit-template-thief",
	Civilization = "goblin",
	Description = _("With their light build, goblins make excellent thieves. Indeed, many goblins do partake in that profession, causing the malaise of goblin thievery to affect not only the local tribes, but even the dwarven and gnomish countryside. These bandits specialize in delivering fatal blows when a target has its back turned to them, and for such skills they are sometimes hired by enterprising leaders seeking to give their enemies a nasty surprise."),
	Image = {"file", "goblin/units/goblin_thief.png", "size", {72, 72}},
	Animations = "animations-goblin-thief", Icon = "icon-goblin-thief",
	DefaultEquipment = {
		{"boots", "unit-boots"}
	},
	HitPoints = 30,
	Accuracy = 15,
	Evasion = 15,
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	Corpse = "unit-goblin-dead-body",
	WeaponClasses = {"dagger"},
	PierceDamage = true,
	ButtonKey = "t",
	ButtonHint = _("Hire Goblin ~!Thief"),
	ButtonPos = 1,
	AiDrops = {"unit-boots", "unit-cheese", "unit-potion-of-healing"},
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

DefineUnitType("unit-goblin-swordsman", { Name = _("Swordsman"),
	Parent = "unit-template-infantry",
	Civilization = "goblin",
	Image = {"file", "goblin/units/goblin_swordsman.png", "size", {72, 72}},
	Description = _("Goblin swordsmen are amongst the most savage of their kind. With weapons in hand, they gleefully hack through their enemies' flesh."),
	Animations = "animations-goblin-swordsman", Icon = "icon-goblin-swordsman",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-round-shield"},
		{"boots", "unit-boots"}
	},
	Costs = {"time", 50},
	HitPoints = 50,
	Accuracy = 12,
	Evasion = 12,
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	WeaponClasses = {"sword", "thrusting-sword"},
	HackDamage = true,
	ButtonKey = "s",
	ButtonHint = _("Train ~!Swordsman"),
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-penetrating", "upgrade-item-prefix-vicious", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-the-snigill", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-trickery"}, -- allow more magic enchantments than normal to compensate for the unit not being able to upgrade
	Corpse = "unit-goblin-dead-body",
	Sounds = {
		"selected", "basic-goblin-voices-selected-group",
		"acknowledge", "basic-goblin-voices-acknowledge",
		"attack", "basic-goblin-voices-attack",
--		"ready", "goblin-impaler-ready",
		"help", "basic-goblin-voices-help",
		"dead", "basic-goblin-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-goblin-spearman", { Name = _("Impaler"),
	Parent = "unit-template-spearman",
	Civilization = "goblin",
	Image = {"file", "goblin/units/goblin_spearman.png", "size", {72, 72}},
	Description = _("The spear is a common weapon of choice amongst goblins. It is easy to manufacture, and the spear's length helps keeping larger foes at bay."),
	Animations = "animations-goblin-spearman", Icon = "icon-goblin-spearman",
	DefaultEquipment = {
		{"weapon", "unit-short-spear"},
		{"shield", "unit-round-shield"},
		{"boots", "unit-boots"}
	},
	Costs = {"time", 40},
	HitPoints = 50,
	Accuracy = 12,
	Evasion = 12,
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	ButtonKey = "i",
	ButtonHint = _("Train ~!Impaler"),
	AiDrops = {"unit-short-spear", "unit-long-spear", "unit-pike", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-penetrating", "upgrade-item-prefix-vicious", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-the-snigill", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-trickery"}, -- allow more magic enchantments than normal to compensate for the unit not being able to upgrade
	Corpse = "unit-goblin-dead-body",
	Sounds = {
		"selected", "basic-goblin-voices-selected-group",
		"acknowledge", "basic-goblin-voices-acknowledge",
		"attack", "basic-goblin-voices-attack",
		"ready", "goblin-impaler-ready",
		"help", "basic-goblin-voices-help",
		"dead", "basic-goblin-voices-dead"
	}
} )

DefineUnitType("unit-goblin-archer", { Name = _("Archer"),
	Parent = "unit-template-archer",
	Civilization = "goblin",
	Description = _("Swift and deadly, the goblin archers hone above all the art of the ambush."),
	Image = {"file", "goblin/units/goblin_archer.png", "size", {72, 72}},
	Animations = "animations-goblin-archer", Icon = "icon-goblin-archer",
	DefaultEquipment = {
		{"boots", "unit-boots"},
		{"arrows", "unit-arrows"}
	},
	HitPoints = 35,
	Accuracy = 12,
	Evasion = 12,
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	Missile = "missile-goblin-arrow",
	FireMissile = "missile-flaming-goblin-arrow",
	WeaponClasses = {"bow"},
	PierceDamage = true,
	ButtonKey = "a",
	ButtonHint = _("Train ~!Archer"),
	AiDrops = {"unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
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

DefineUnitType("unit-goblin-headhunter", { Name = _("Headhunter"),
	Parent = "unit-template-veteran-shooter",
	Civilization = "goblin",
	Description = _("Goblin headhunters are lethally accurate assassins, who revel in the suffering of their victims."),
	Image = {"file", "goblin/units/goblin_archer.png", "size", {72, 72}},
	Animations = "animations-goblin-archer", Icon = "icon-goblin-headhunter",
	DefaultEquipment = {
		{"boots", "unit-boots"},
		{"arrows", "unit-arrows"}
	},
	HitPoints = 40,
	Accuracy = 13,
	Evasion = 12,
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	Missile = "missile-goblin-arrow",
	FireMissile = "missile-flaming-goblin-arrow",
	Corpse = "unit-goblin-dead-body",
	WeaponClasses = {"bow"},
	PierceDamage = true,
	AiDrops = {"unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-the-snigill", "upgrade-item-suffix-of-trickery"},
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

DefineUnitType("unit-goblin-shaman", { Name = _("Shaman"),
	Parent = "unit-template-priest",
	Civilization = "goblin",
	Description = _("Adorned with skulls and bones, goblin shamans are steeped in the mysteries of life and death. Each shaman must choose his own path, whether it be taming the savage force of life or dealing in dark magics."),
	Image = {"file", "goblin/units/shaman.png", "size", {72, 72}},
	Animations = "animations-gnomish-herbalist", Icon = "icon-goblin-shaman",
	DefaultEquipment = {
		{"boots", "unit-boots"}
	},
	HitPoints = 35,
	Accuracy = 10,
	Evasion = 10,
	Corpse = "unit-goblin-dead-body",
	CanCastSpell = {"spell-terror"},
	AutoCastActive = {"spell-terror"},
	AiDrops = {"unit-boots", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-flaming", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-the-snigill", "upgrade-item-suffix-of-trickery"},
	HackDamage = true,
	ButtonPos = 2,
	ButtonKey = "s",
	ButtonHint = _("Train ~!Shaman"),
	Sounds = {
		"selected", "basic-goblin-voices-selected-group",
		"acknowledge", "basic-goblin-voices-acknowledge",
		"attack", "basic-goblin-voices-attack",
		"ready", "goblin-shaman-ready",
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
	Missile = "missile-catapult-sandstone-rock",
	FireMissile = "missile-flaming-catapult-rock",
	CanCastSpell = {"spell-war-machine-spear-attack"},
	AutoCastActive = {"spell-war-machine-spear-attack"},
	ButtonKey = "m",
	ButtonHint = _("Build War ~!Machine"),
	BluntDamage = true,
	Sounds = {
--		"acknowledge", "ballista-acknowledge",
--		"ready", "dwarven-ballista-ready",
		"help", "basic-goblin-voices-help",
		"dead", "explosion"
	}
} )

DefineUnitType("unit-goblin-glider", { Name = _("Glider"),
	Parent = "unit-template-sapient-unit",
	Class = "glider",
	Civilization = "goblin",
	Description = _("A brainchild of goblin inventiveness, gliders are used to scout ahead and determine enemy positions."),
	Image = {"file", "goblin/units/glider.png", "size", {100, 100}},
	Animations = "animations-goblin-glider", Icon = "icon-goblin-glider",
	DefaultEquipment = {
		{"boots", "unit-boots"}
	},
	Costs = {"time", 65, "gold", 500, "lumber", 300},
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
	Upkeep = 25,
	Type = "fly",
--	Corpse = "unit-goblin-dead-body",
	RightMouseAction = "move",
	DetectCloak = true,
	Coward = true,
	Flesh = true,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	ButtonKey = "g",
	ButtonHint = _("Build ~!Glider"),
	ButtonPos = 7,
	Traits = {"upgrade-ambitious", "upgrade-dim", "upgrade-genius", "upgrade-intelligent", "upgrade-keen", "upgrade-limping", "upgrade-near-sighted", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow", "upgrade-pious", "upgrade-wise"}, -- removed traits which affect damage, as this unit can't attack
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
	Icon = "icon-goblin-town-hall",
	Trains = {"unit-goblin-worker"},
	AiDrops = {"unit-boots"},
	DropAffixes = {"upgrade-item-prefix-flaming", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-the-snigill", "upgrade-item-suffix-of-trickery"},
	Sounds = {
		"help", "basic-goblin-voices-help-town"
	}
} )

DefineUnitType("unit-goblin-stronghold", { Name = _("Stronghold"),
	Parent = "unit-template-stronghold",
	Civilization = "goblin",
	Description = _("When a goblin tribe becomes large enough, it will build a stronghold in its main settlement to ward off invasions from envious lesser tribes."),
	Image = {"file", "goblin/buildings/stronghold.png", "size", {128, 128}},
	Shadow = {"file", "goblin/buildings/stronghold_shadow.png", "size", {128, 128}},
	Icon = "icon-goblin-stronghold",
	Trains = {"unit-goblin-worker"},
	AiDrops = {"unit-short-spear", "unit-long-spear", "unit-pike", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-boots", "unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows"},
	DropAffixes = {"upgrade-item-prefix-flaming", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-the-snigill", "upgrade-item-suffix-of-trickery"},
	Sounds = {
		"help", "basic-goblin-voices-help-town"
	}
})

DefineUnitType("unit-goblin-farm", { Name = _("Farm"),
	Parent = "unit-template-farm",
	Civilization = "goblin",
	Description = _("Goblin farms provide sustenance for their settlements. Due to their high population growth goblins seek to finish the construction of new farms as quickly as possible, although they sacrifice structural integrity in the process. Contrary to the dwarves, goblins tend to plant roots, rather than mushrooms, and they also breed livestock."),
	Image = {"file", "goblin/buildings/farm.png", "size", {64, 64}},
	Shadow = {"file", "goblin/buildings/farm_shadow.png", "size", {64, 64}},
	Icon = "icon-goblin-farm",
	HitPoints = 167, -- 200 with masonry
	Costs = {"time", 80, "gold", 400, "lumber", 600},
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
	Trains = {"unit-goblin-swordsman", "unit-goblin-spearman", "unit-goblin-archer", "unit-goblin-war-machine", "unit-goblin-glider"},
	ButtonKey = "m",
	ButtonHint = _("Build ~!Mess Hall"),
	AiDrops = {"unit-short-spear", "unit-long-spear", "unit-pike", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-boots", "unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows"},
	DropAffixes = {"upgrade-item-prefix-flaming", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-the-snigill", "upgrade-item-suffix-of-trickery"},
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
	AiDrops = {"unit-short-spear", "unit-long-spear", "unit-pike", "unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows"},
	DropAffixes = {"upgrade-item-prefix-flaming", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-the-snigill", "upgrade-item-suffix-of-trickery"},
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
	ButtonKey = "o",
	ButtonHint = _("Build Fugla F~!orge"),
	AiDrops = {"unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield"},
	DropAffixes = {"upgrade-item-prefix-flaming", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-the-snigill", "upgrade-item-suffix-of-trickery"},
	Sounds = {
		"help", "basic-goblin-voices-help-town"
	}
} )

DefineUnitType("unit-goblin-watch-tower", { Name = _("Watch Tower"),
	Parent = "unit-template-watch-tower",
	Civilization = "goblin",
	Description = _("Goblins are ever wary of being caught offguard by attacks from rival tribes or dwarven punitive expeditions. Their watch towers keep them informed if foes are approaching."),
	Image = {"file", "goblin/buildings/watch_tower.png", "size", {64, 64}},
	Shadow = {"file", "goblin/buildings/watch_tower_shadow.png", "size", {64, 64}},
	Icon = "icon-goblin-watch-tower",
	Sounds = {
		"help", "basic-goblin-voices-help-town"
	}
} )

DefineUnitType("unit-goblin-guard-tower", { Name = _("Guard Tower"),
	Parent = "unit-template-guard-tower",
	Civilization = "goblin",
	Description = _("The more powerful goblin tribes protect their settlements with the placement of guard towers on their perimeters. The archers garrisoned in these structures greet approaching enemies with deadly arrows."),
	Image = {"file", "goblin/buildings/guard_tower.png", "size", {64, 64}},
	Shadow = {"file", "goblin/buildings/guard_tower_shadow.png", "size", {64, 64}},
	Icon = "icon-goblin-guard-tower",
	Sounds = {
		"help", "basic-goblin-voices-help-town"
	}
} )

DefineUnitType("unit-goblin-worker", {
	Trains = {"unit-goblin-town-hall", "unit-goblin-farm", "unit-goblin-mess-hall", "unit-goblin-lumber-mill", "unit-goblin-smithy", "unit-goblin-watch-tower", "unit-gold-mine", "unit-silver-mine", "unit-copper-mine"}
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
	Missile = "missile-none",
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
