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
--      units.ccl - Define the dwarven unit-types.
--
--      (c) Copyright 2013-2015 by Andrettin
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

DefineUnitType("unit-dwarven-miner", { Name = _("Miner"),
	Parent = "unit-template-worker",
	Civilization = "dwarf",
	Description = _("Dwarven miners are the grunt workers of dwarven society. They take the precious ores out of the ground, but do not ever take part in the crafting of weapons or artifacts. Although their expertise makes them quite efficient in mining, this comes at the cost of neglecting training in the harvesting of other resources."),
	Background = _("In Norse mythology, dwarves were shown to have an affinity for metals, and often they lived in mountainous homes."),
	Image = {"file", "dwarf/units/miner.png", "size", {72, 72}},
	Animations = "animations-dwarven-miner", Icon = "icon-dwarven-miner",
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"mace"},
	BluntDamage = true,
	AiDrops = {"unit-hammer", "unit-mining-pick", "unit-boots", "unit-cheese"},
	CanGatherResources = {
		{
			"resource-id", "gold",
			"file-when-loaded", "dwarf/units/miner_with_gold.png",
			"wait-at-resource", 5
		},
		{
			"resource-id", "silver",
			"file-when-loaded", "dwarf/units/miner_with_gold.png",
			"wait-at-resource", 5
		},
		{
			"resource-id", "copper",
			"file-when-loaded", "dwarf/units/miner_with_gold.png",
			"wait-at-resource", 5
		},
		{
			"resource-id", "lumber",
			"file-when-loaded", "dwarf/units/miner_with_lumber.png",
			"wait-at-resource", 29
		},
		{
			"resource-id", "stone",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "coal",
			"file-when-loaded", "dwarf/units/miner_with_coal.png",
			"wait-at-resource", 5
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "dwarven-miner-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-miner-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-militia", { Name = _("Militia"),
	Class = "militia",
	Civilization = "dwarf",
	Description = _("When enemies approach, dwarven miners pick up arms from the nearest storage center in defense of their homelands."),
	Image = {"file", "dwarf/units/militia.png", "size", {72, 72}},
	Animations = "animations-dwarven-militia", Icon = "icon-dwarven-militia",
	Intelligence = 10,
	Speed = 10,
	HitPoints = 30,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	Armor = 1, BasicDamage = 6, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 50,
	Points = 30,
	Demand = 1,
	Corpse = "unit-dwarven-dead-body",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	Flesh = true,
	SelectableByRectangle = true,
	WeaponClasses = {"axe"},
	HackDamage = true,
	AiDrops = {"unit-battle-axe", "unit-round-shield", "unit-boots", "unit-cheese"},
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-dextrous", "upgrade-clumsy", "upgrade-reckless", "upgrade-near-sighted", "upgrade-keen", "upgrade-limping", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow", "upgrade-cruel"},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "dwarven-miner-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-miner-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "axe-attack",
		"miss", "attack-miss",
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-grass", "step-leaves",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone"
	}
} )

DefineUnitType("unit-dwarven-axefighter", { Name = _("Axefighter"),
	Parent = "unit-template-infantry",
	Civilization = "dwarf",
	Description = _("Dwarven axefighters wield mighty battle axes, which make them feared opponents in close-range combat. Veteran axefighters often use the pay they've managed to spare to purchase steel armor for themselves at the local smithy."),
	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-axefighter",
	Costs = {"time", 60, "gold", 495, "lumber", 22},
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"axe"},
	HackDamage = true,
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-round-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-suffix-of-the-snigill"},
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/dwarven_axefighter_gray_hair.png",
			"icon", "icon-dwarven-axefighter-gray-hair"
		},
		{
			"variation-id", "orange-hair",
			"file", "dwarf/units/dwarven_axefighter_orange_hair.png",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair",
			"file", "dwarf/units/dwarven_axefighter_blond_hair.png",
			"icon", "icon-dwarven-axefighter-blond-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "black-hair",
			"file", "dwarf/units/dwarven_axefighter_black_hair.png",
			"icon", "icon-dwarven-axefighter-black-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair",
			"file", "dwarf/units/dwarven_axefighter_brown_hair.png",
			"icon", "icon-dwarven-axefighter-brown-hair",
			"upgrade-forbidden", "upgrade-old"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-axefighter-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "axe-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-steelclad", { Name = _("Steelclad"),
	Parent = "unit-template-veteran-infantry",
	Civilization = "dwarf",
	Description = _("The more experienced dwarven steelclad fighters wear heavy chain mail and plate armor, for which they are rightly famous."),
	Image = {"file", "dwarf/units/dwarven_steelclad.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-steelclad",
	Costs = {"time", 90, "gold", 825, "lumber", 75},
	Armor = 4,
	WeaponClasses = {"axe"},
	HackDamage = true,
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-round-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-the-snigill"},
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/dwarven_steelclad_gray_hair.png",
			"icon", "icon-dwarven-steelclad-gray-hair",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-great-axe"
		},
		{
			"variation-id", "orange-hair",
			"file", "dwarf/units/dwarven_steelclad_orange_hair.png",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair",
			"file", "dwarf/units/dwarven_steelclad_blond_hair.png",
			"icon", "icon-dwarven-steelclad-blond-hair",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "black-hair",
			"file", "dwarf/units/dwarven_steelclad_black_hair.png",
			"icon", "icon-dwarven-steelclad-black-hair",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair",
			"file", "dwarf/units/dwarven_steelclad_brown_hair.png",
			"icon", "icon-dwarven-steelclad-brown-hair",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		-- Great Axe
		{
			"variation-id", "red-hair",
			"file", "dwarf/units/dwarven_steelclad_great_axe.png",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"item-equipped", "unit-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/dwarven_steelclad_gray_hair_great_axe.png",
			"icon", "icon-dwarven-steelclad-gray-hair",
			"upgrade-required", "upgrade-dwarven-great-axe"
		},
		{
			"variation-id", "orange-hair",
			"file", "dwarf/units/dwarven_steelclad_orange_hair_great_axe.png",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"item-equipped", "unit-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair",
			"file", "dwarf/units/dwarven_steelclad_blond_hair_great_axe.png",
			"icon", "icon-dwarven-steelclad-blond-hair",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"item-equipped", "unit-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "black-hair",
			"file", "dwarf/units/dwarven_steelclad_black_hair_great_axe.png",
			"icon", "icon-dwarven-steelclad-black-hair",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"item-equipped", "unit-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair",
			"file", "dwarf/units/dwarven_steelclad_brown_hair_great_axe.png",
			"icon", "icon-dwarven-steelclad-brown-hair",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"item-equipped", "unit-great-axe",
			"upgrade-forbidden", "upgrade-old"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-steelclad-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "axe-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-thane", { Name = _("Stonelord"),
	Parent = "unit-template-heroic-infantry",
	Civilization = "dwarf",
	Description = _("Clad in shining armor, these dwarves look like kings from under the mountains. They wield the axe with masterful skill, and though slow on their feet, these dwarves are a testament to the prowess of their kin. Stonelords can yield varied political power, ranging from local chiefs to rulers of realms. One of the first stonelords was Modsognir, the legendary chieftain who led his tribe against the perils of Svarinshaug."),
	Quote = _("\"There was Modsognir | the mightiest made / Of all the dwarfs, | and Durin next; / Many a likeness | of apes they made, / The dwarfs in the earth, | as Durin said.\" - Dwarven Traditional Poetry"),
	Background = _("In Norse mythology, the dwarven leader Modsognir appears in the ~<Voluspo~> as one of the first dwarves and the mightiest of them."),
	Image = {"file", "dwarf/units/thane.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-thane",
	Armor = 6,
	Corpse = "unit-dwarven-dead-body",
	CanCastSpell = {"spell-axe-twirl"},
	WeaponClasses = {"axe", "mace"},
	HackDamage = true,
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-round-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-the-colossus", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-the-snigill"},
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/thane_gray_hair.png",
			"icon", "icon-dwarven-thane-gray-hair"
		},
		{
			"variation-id", "orange-hair",
			"file", "dwarf/units/thane_orange_hair.png",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair",
			"file", "dwarf/units/thane_blond_hair.png",
			"icon", "icon-dwarven-thane-blond-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "black-hair",
			"file", "dwarf/units/thane_black_hair.png",
			"icon", "icon-dwarven-thane-black-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair",
			"file", "dwarf/units/thane_brown_hair.png",
			"icon", "icon-dwarven-thane-brown-hair",
			"upgrade-forbidden", "upgrade-old"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-steelclad-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "axe-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-scout", { Name = _("Scout"),
	Parent = "unit-template-archer",
	Civilization = "dwarf",
--	Description = "Dwarven scouts use their lighter armor to their advantage, ranging ahead of the main force and reporting back on troop movements and dispositions, or securing important objectives. Outside of battle, they are often used to relay messages between dwarven communities. These scouts were instrumental for pathfinding during the migration of the group of dwarves led by Dvalin, who left the Heart Mountains, passed through swamps, and finally established themselves in a desert.", -- use the latter part of this for the pathfinder
	Description = _("Dwarven scouts use their speed to their advantage, ranging ahead of the main force and reporting back on troop movements and dispositions. Outside of battle, they are often used to relay messages between dwarven communities. However, they pay for their speed with the poorer protection provided by their lighter armor."),
--	Background = _("In Norse mythology, there is a mention in the ~<Voluspo~> of a throng of dwarves led by Dvalin who moved away from the rocks and into the sands, these migrants being the ancestors of Lofar."), -- use this for the pathfinder
	Image = {"file", "dwarf/units/dwarven_scout.png", "size", {72, 72}},
	Animations = "animations-dwarven-scout", Icon = "icon-dwarven-scout",
	BasicDamage = 10,
	Missile = "missile-throwing-axe",
	FireMissile = "missile-flaming-throwing-axe",
	MaxAttackRange = 4,
	SightRange = 6,
	Corpse = "unit-dwarven-dead-body",
	TechnologyPointCost = 1,
	WeaponClasses = {"throwing-axe"},
	HackDamage = true,
	AiDrops = {"unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "orange-hair-short-beard",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "orange-hair-braided-beard",
			"icon", "icon-dwarven-scout-braided-beard",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair-short-beard",
			"file", "dwarf/units/dwarven_scout_blond_hair.png",
			"icon", "icon-dwarven-scout-blond-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair-braided-beard",
			"file", "dwarf/units/dwarven_scout_blond_hair.png",
			"icon", "icon-dwarven-scout-blond-hair-braided-beard",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair-short-beard",
			"file", "dwarf/units/dwarven_scout_gray_hair.png",
			"icon", "icon-dwarven-scout-gray-hair"
		},
		{
			"variation-id", "gray-hair-braided-beard",
			"file", "dwarf/units/dwarven_scout_gray_hair.png",
			"icon", "icon-dwarven-scout-gray-hair-braided-beard"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-scout-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead"
	}
} )

DefineUnitType("unit-dwarven-pathfinder", { Name = _("Pathfinder"),
	Parent = "unit-template-veteran-shooter",
	Civilization = "dwarf",
	Description = _("These hardy dwarves are sometimes away from their caves for long periods, scouting and patrolling the borders. They spend this time watching for invaders, and fighting bandits and thieves who encroach on dwarven territory. Their deftly thrown axes can rival the power and accuracy of a gnomish marksman."),
	Image = {"file", "dwarf/units/dwarven_scout.png", "size", {72, 72}},
	Animations = "animations-dwarven-scout", Icon = "icon-dwarven-pathfinder",
	BasicDamage = 11,
	Missile = "missile-throwing-axe",
	FireMissile = "missile-flaming-throwing-axe",
	MaxAttackRange = 4,
	SightRange = 6,
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"throwing-axe"},
	HackDamage = true,
	AiDrops = {"unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "orange-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair",
			"file", "dwarf/units/dwarven_scout_blond_hair.png",
			"icon", "icon-dwarven-pathfinder-blond-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/dwarven_scout_gray_hair.png",
			"icon", "icon-dwarven-pathfinder-gray-hair"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead"
	}
} )

DefineUnitType("unit-dwarven-yale-rider", { Name = _("Yale Rider"),
	Parent = "unit-template-cavalry",
	Civilization = "dwarf",
	Description = _("Although dwarves have a stronger affinity for fighting on foot than many other peoples, they nevertheless possess formidable cavalry in the form of yale riders. These mounted dwarves are fierce in the battlefield, and their yales can easily traverse the mountainous terrain dwarves usually inhabit."),
	Image = {"file", "dwarf/units/yale_rider_red_hair_gray_fur.png", "size", {72, 72}},
	Animations = "animations-melee-unit", Icon = "icon-dwarven-yale-rider",
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"axe"},
	HackDamage = true,
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-round-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-the-snigill"},
	Variations = {
		{
			"variation-id", "black-hair-brown-fur",
			"file", "dwarf/units/yale_rider_black_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-black-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "black-hair-gray-brown-fur",
			"file", "dwarf/units/yale_rider_black_hair_gray_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-black-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair-brown-fur",
			"file", "dwarf/units/yale_rider_blond_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-blond-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair-brown-fur",
			"file", "dwarf/units/yale_rider_brown_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-brown-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair-white-fur",
			"file", "dwarf/units/yale_rider_brown_hair_white_fur.png",
			"icon", "icon-dwarven-yale-rider-brown-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair-gray-brown-fur",
			"file", "dwarf/units/yale_rider_gray_hair_gray_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-gray-hair"
		},
		{
			"variation-id", "orange-hair-brown-fur",
			"file", "dwarf/units/yale_rider_orange_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-orange-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "orange-hair-white-fur",
			"file", "dwarf/units/yale_rider_orange_hair_white_fur.png",
			"icon", "icon-dwarven-yale-rider-orange-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "red-hair-gray-fur",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "red-hair-brown-fur",
			"file", "dwarf/units/yale_rider_red_hair_brown_fur.png",
			"upgrade-forbidden", "upgrade-old"
		}
	},
	Sounds = {
		"selected", "yale-rider-selected-group",
		"acknowledge", "yale-rider-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-yale-rider-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "axe-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-gryphon-rider", { Name = _("Gryphon Rider"),
	Parent = "unit-template-flying-rider",
	Civilization = "dwarf",
	Description = _("Only a few dwarves are able to bond with the mighty gryphons. Those who do may become gryphon riders, and discover the world of the skies upon the backs of these flying beasts."),
	Quote = _("\"Ha ha! Gryphons as mounts, that is naught but the stuff of legends! Is there no end to your folly?\" - Relgorn, Chieftain of the Norlund Clan"),
	Image = {"file", "dwarf/units/gryphon_rider.png", "size", {100, 100}},
	Animations = "animations-dwarven-gryphon-rider", Icon = "icon-dwarven-gryphon-rider",
	Missile = "missile-throwing-axe",
	FireMissile = "missile-flaming-throwing-axe",
	BasicDamage = 13,
	MaxAttackRange = 4,
	WeaponClasses = {"throwing-axe"},
	HackDamage = true,
	AiDrops = {"unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-storm", "upgrade-item-suffix-of-lightning", "upgrade-item-suffix-of-the-snigill"},
	Variations = {
		{
			"variation-id", "black-hair-brown-feathers",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair-blue-feathers",
			"file", "dwarf/units/gryphon_rider_brown_hair_blue_feathers.png",
			"icon", "icon-dwarven-gryphon-rider-brown-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair-brown-feathers",
			"file", "dwarf/units/gryphon_rider_gray_hair_brown_feathers.png"
		},
		{
			"variation-id", "red-hair-gray-feathers",
			"file", "dwarf/units/gryphon_rider_red_hair_gray_feathers.png",
			"icon", "icon-dwarven-gryphon-rider-red-hair",
			"upgrade-forbidden", "upgrade-old"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-gryphon-rider-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "gryphon-dead"
	}
} )

DefineUnitType("unit-dwarven-ballista", { Name = _("Ballista"),
	Parent = "unit-template-siege-engine",
	Civilization = "dwarf",
	Description = _("Dwarves employ heavy ballistas as their siege weapon of choice, with devastating effects on enemy fortifications."),
	Image = {"file", "dwarf/units/dwarven_ballista.png", "size", {64, 64}},
	Animations = "animations-dwarven-ballista", Icon = "icon-dwarven-ballista",
	Missile = "missile-dwarven-ballista-bolt",
	FireMissile = "missile-flaming-dwarven-ballista-bolt",
	PierceDamage = true,
	Sounds = {
--		"acknowledge", "ballista-acknowledge",
		"ready", "dwarven-ballista-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "explosion"
	}
})

DefineUnitType("unit-dwarven-transport-ship", { Name = _("Transport"),
	Parent = "unit-template-transport-ship",
	Civilization = "dwarf",
	Description = _("Sailing the Deep Sea and underground rivers alike, these ships are manned by hearty dwarven crews. Every journey brings back new tales, be it of a kobold dwarf-eating tribe, or of treacherous goblin pirates..."),
	Image = {"file", "dwarf/units/transport.png", "size", {72, 72}},
	LightImage = {"file", "dwarf/units/transport_water.png"},
	Animations = "animations-transport-ship", Icon = "icon-dwarven-transport-ship",
	Sounds = {
		"help", "basic-dwarf-voices-help"
	}
})

DefineUnitType("unit-dwarven-town-hall", { Name = _("Mead Hall"),
	Parent = "unit-template-town-hall",
	Civilization = "dwarf",
	Description = _("The mead hall is the center of any sizable dwarven settlement, where they gather to discuss the issues facing the community and drink their strong mead. It was in one such hall that Fjalar and Galar feasted on the mead they made out of the blood of a dwarven sage, believing that it would grant them his breadth of knowledge. One of the most magnificent mead halls ever built is that of Lyr."),
	Background = _("Mead was a recurring theme in Germanic mythology, from which dwarves originate. In one particular myth, the dwarves Fjalar and Galar invited the sage Kvasir to a large feast in their dwelling, only to murder him and brew his blood into a special mead, the ~<Mead of Poetry~>. As the pair of ruthless dwarves expected, drinking the mead imbibed them with Kvasir's breadth of knowledge. In the ~<Voluspo~> it is mentioned that a dwarven hall made of gold existed in Nidavellir. The hall of Lyr is mentioned in the ~<Svipdagsmol~>."),
	Image = {"file", "dwarf/buildings/town_hall.png", "size", {128, 128}},
	Shadow = {"file", "dwarf/buildings/town_hall_shadow.png", "size", {128, 128}},
	Icon = "icon-dwarven-town-hall",
	Costs = {"time", 255, "gold", 1200, "lumber", 600, "stone", 200},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	AiDrops = {"unit-boots"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-the-snigill"},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-stronghold", { Name = _("Bastion"),
	Parent = "unit-template-stronghold",
	Civilization = "dwarf",
	Description = _("A dwarven settlement that has reached a certain status will often oversee the construction of a bastion, enhancing its defensive capabilities."),
	Quote = _("\"Durin spake: 'Now answer me, warder, | the question I ask, / For now the truth would I know: / What call they the hall, | encompassed here / With flickering magic flames?'\" - Dwarven Traditional Poetry"),
	Image = {"file", "dwarf/buildings/stronghold.png", "size", {128, 128}},
	Shadow = {"file", "dwarf/buildings/stronghold_shadow.png", "size", {128, 128}},
	Icon = "icon-dwarven-stronghold",
	Costs = {"time", 200, "gold", 2200, "lumber", 275, "stone", 825},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	TechnologyPointCost = 1,
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe", "unit-round-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-the-snigill"},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-mushroom-farm", { Name = _("Mushroom Farm"),
	Parent = "unit-template-farm",
	Civilization = "dwarf",
	Description = _("For aeons, dwarves have practiced mushroom farming underground. At first, their crude agricultural methods allowed them only to use mushroom farming as a supplementary means of nutrition, so that they could remain in a given area for a longer time before migrating. Eventually, however, dwarven mushroom farming techniques developed to the point that dwarves were able to establish their first permanent communities."),
	Quote = _("\"This is how we get our food, me lad. Since we are a tad close to the surface here, some sunlight shines down through the cracks in the roof. If we baby the plants, we can usually get enough. They taste unco' foul but that's how we ha' survived all these long years.\" - Hamel, Lord of Knalga"),
	Image = {"file", "dwarf/buildings/mushroom_farm.png", "size", {64, 64}},
	Shadow = {"file", "dwarf/buildings/mushroom_farm_shadow.png", "size", {64, 64}},
	Icon = "icon-dwarven-mushroom-farm",
	Costs = {"time", 100, "gold", 500, "lumber", 190, "stone", 60},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	Drops = {"unit-wood-pile"},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-barracks", { Name = _("War Hall"),
	Parent = "unit-template-barracks",
	Civilization = "dwarf",
	Description = _("The war hall is where dwarves meet to train and hone their axefighting skills. Since early times, dwarves have faced many perils in the dark plains and caves of Nidavellir, such as goblins or hostile dwarven clans. To fight off these menaces, clans gradually developed means of organizing themselves militarily."),
	Quote = _("\"Loud roar the dwarves | by the doors of stone, / The masters of the rocks: | would you know yet more?\" - Dwarven Traditional Poetry"),
	Image = {"file", "dwarf/buildings/barracks.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/barracks_shadow.png", "size", {96, 96}},
	Icon = "icon-dwarven-barracks",
	Costs = {"time", 200, "gold", 700, "lumber", 340, "stone", 110},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe", "unit-round-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-the-snigill"},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-lumber-mill", { Name = _("Lumber Mill"),
	Parent = "unit-template-lumber-mill",
	Civilization = "dwarf",
	Description = _("Dwarven culture places a great emphasis on handling stone and metal, to the detriment of woodworking. Nevertheless, the lumber mill employs a number of dwarven artisans skilled in woodworking, who strive to improve methods of lumber production and the scouts' throwing axes."),
	Background = _("In Germanic mythology, one instance related to dwarven woodwork to be found is the crafting of the ship Skidbladnir and the throwing spear Gungnir by the sons of Ivaldi. Skidbladnir is mentioned in the ~<Grimnismol~>."),
	Image = {"file", "dwarf/buildings/lumber_mill.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/lumber_mill_shadow.png", "size", {96, 96}},
	Icon = "icon-dwarven-lumber-mill",
--	Costs = {"time", 165, "gold", 660, "lumber", 495},
	Costs = {"time", 165, "gold", 660, "lumber", 370, "stone", 125},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	TechnologyPointCost = 1,
	AiDrops = {"unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe"},
	DropAffixes = {"upgrade-item-prefix-storm", "upgrade-item-suffix-of-lightning", "upgrade-item-suffix-of-the-snigill"},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-smithy", { Name = _("Smithy"),
	Parent = "unit-template-smithy",
	Civilization = "dwarf",
--	Description = _("Smithing is a highly-valued skill in dwarven society, and it is in this structure that dwarven smiths gather to produce weapons and armor for troops. Dwarves are renowned for their smithing abilities, and their craft attracts many non-dwarven customers. The most prestigious of dwarven metalworkers are the runesmiths, Thursagan being the greatest among them."),
	Description = _("Smithing is a highly-valued skill in dwarven society, leading many to dedicate themselves to that profession. Dwarven smiths are renowned for their abilities, and their craft attracts many foreign customers. The most prestigious of dwarven metalworkers are the runesmiths."),
	Quote = _("\"The land of Untersberg's banner bold / Comes not from its own land; / It comes from Dwarfdom, grim and old / Made by a runesmith's hand.\" - The Scepter of Fire"),
	Background = _("One of the primary talents of the dwarves in Norse mythology was smithing. In a number of myths, dwarven smiths would craft marvelous artifacts for the gods, and sometimes even for mortals."),
--	Background = _("One of the primary talents of the dwarves in Norse mythology was smithing. In a number of myths, dwarven smiths would craft marvelous artifacts for the gods, and sometimes even for mortals. One example of such an artifact is Mjollnir, the famous hammer of the Norse god Thor, which was made by the dwarves Brokk and Eitri. Another example is the sword Gram, crafted by the dwarf Regin in the ~<Reginsmol~>.\n\nRunesmiths feature in the Battle for Wesnoth, and are mentioned in ~<The Sceptre of Fire~> poem."),
	Image = {"file", "dwarf/buildings/smithy.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/smithy_shadow.png", "size", {96, 96}},
	Icon = "icon-dwarven-smithy",
--	Costs = {"time", 190, "gold", 810, "lumber", 450},
	Costs = {"time", 190, "gold", 810, "lumber", 340, "stone", 110},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	TechnologyPointCost = 1,
	PersonalNamePrefixes = {"The Black", "Brisings'", "Brokk's", "Eitri's", "The Fiery", "Ivaldi's", "Regin's"}, -- The Brisings were a group of dwarves who crafter a magnificent necklace; Brokk and Eitri were skilled dwarven smiths; Ivaldi's sons were skilled dwarven smiths; Regin was a dwarven smith in the Siegfried myth
	PersonalNameSuffixes = {" Anvil", " Forge", " Hammer", " Smithy"},
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-round-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-spatha"}, -- drops Spatha to allow dropping dwarven unique swords
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-flaming", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-the-snigill", "upgrade-item-suffix-of-aedi",  "upgrade-item-suffix-of-othola"}, -- has flaming prefix to allow dropping The Hammer of Thursagan; Aedi and Othola are Norse runes
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-yale-pen", { Name = _("Yale Pen"),
	Parent = "unit-template-stables",
	Civilization = "dwarf",
	Description = _("Although the underground dwarves shun mounted combat, their wild hill-dwelling kin cherish it as a noble tradition. The mobility given by the yale is crucial for traversing their homelands' hills and peaks. Dwarves have been breeding yales since time immemorial, the animals being valuable not only as mounts, but also as beasts of carry."),
	Image = {"file", "dwarf/buildings/yale_pen.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/yale_pen_shadow.png", "size", {96, 96}},
	Icon = "icon-dwarven-yale-pen",
--	Costs = {"time", 150, "gold", 1000, "lumber", 300},
	Costs = {"time", 150, "gold", 1000, "lumber", 240, "stone", 60},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	TechnologyPointCost = 1,
	Drops = {"unit-yale"},
	Sounds = {
		"selected", "yale-pen-selected",
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-sentry-tower", { Name = _("Sentry Tower"),
	Parent = "unit-template-watch-tower",
	Civilization = "dwarf",
	Description = _("In these solid towers dwarves keep watch of threats approaching their settlements."),
	Image = {"file", "dwarf/buildings/sentry_tower.png", "size", {64, 64}},
	Shadow = {"file", "dwarf/buildings/sentry_tower_shadow.png", "size", {64, 64}},
	Animations = "animations-dwarven-sentry-tower", Icon = "icon-dwarven-sentry-tower",
	Costs = {"time", 60, "gold", 550, "lumber", 50, "stone", 150},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	HitPoints = 250, -- 300 with masonry
	Construction = "construction-dwarven-sentry-tower",
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-guard-tower", { Name = _("Guard Tower"),
	Parent = "unit-template-guard-tower",
	Civilization = "dwarf",
	Description = _("Often garrisoned by dwarven scouts, these towers are an essential part of a dwarven settlement's sturdy defenses."),
	Image = {"file", "dwarf/buildings/guard_tower.png", "size", {64, 64}},
	Shadow = {"file", "dwarf/buildings/guard_tower_shadow.png", "size", {64, 64}},
	Animations = "animations-dwarven-guard-tower", Icon = "icon-dwarven-guard-tower",
	Costs = {"time", 140, "gold", 500, "lumber", 40, "stone", 110},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	HitPoints = 325, -- 390 with masonry
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-dock", { Name = _("Dock"),
	Parent = "unit-template-dock",
	Civilization = "dwarf",
	Description = _("Although nautical dwarves are few in number, dwarven shipwrighting is a refined craft. They construct sturdy ships, capable of braving oceans and subterranean rivers alike."),
	Image = {"file", "dwarf/buildings/dock.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/dock_shadow.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-dwarven-dock",
	Costs = {"time", 200, "gold", 800, "lumber", 360, "stone", 90},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-surghan-mercenary-steelclad", { Name = _("Surghan Mercenary"),
	Parent = "unit-dwarven-steelclad",
	Class = "",
	Civilization = "dwarf",
	Description = _("These scoundrels will hire their axes to the largest bidder, no questions asked. They have participated in a number of engagements, the most dangerous of which was the pursuit of a group of dwarves into the lair of the wyrm Svafnir and beyond."),
	Quote = _("\"It must be one of those Surghan mercenaries. I'll bet those Shinsplitters have hired more of them. That's bad news for us, for they are deadly, combat-hardened warriors.\" - Baglur, Retired Norlund Warrior"),
	Image = {"file", "dwarf/units/dwarven_steelclad.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-surghan-mercenary-steelclad",
	Costs = {"time", 0, "gold", 900, "lumber", 0},
	TrainQuantity = 4,
	Mercenary = true,
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-dwarven-great-axe"
		},
		{
			"variation-id", "red-hair",
			"file", "dwarf/units/dwarven_steelclad_great_axe.png",
			"upgrade-required", "upgrade-dwarven-great-axe"
		}
	}
} )

DefineUnitType("unit-surghan-mercenary-thane", { Name = _("Surghan Mercenary"),
	Parent = "unit-dwarven-thane",
	Class = "",
	Civilization = "dwarf",
	Image = {"file", "dwarf/units/thane.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-surghan-mercenary-thane",
	Mercenary = true,
	Variations = {}
} )
