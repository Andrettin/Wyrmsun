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
	CanGatherResources = {
	 {"file-when-loaded", "dwarf/units/miner_with_gold.png",
		"resource-id", "gold",
--		"harvest-from-outside",
		"resource-capacity", 100,
		"wait-at-resource", 120,
		"wait-at-depot", 150},
	 {"file-when-loaded", "dwarf/units/miner_with_lumber.png",
		"resource-id", "lumber",
		"harvest-from-outside",
		"resource-capacity", 100,
		"resource-step", 2,
		"wait-at-resource", 29,
		"wait-at-depot", 150,
		"terrain-harvester"},
	 {"file-when-loaded", "dwarf/units/miner_with_coal.png",
		"resource-id", "coal",
		"resource-capacity", 100,
		"wait-at-resource", 120,
		"wait-at-depot", 150}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "dwarven-miner-acknowledge",
		"ready", "dwarven-miner-ready",
--		"help", "basic-dwarf-voices-help",
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
	Speed = 10,
	HitPoints = 30,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4, ComputerReactionRange = 6, PersonReactionRange = 4,
	Armor = 1, BasicDamage = 4, PiercingDamage = 2, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 50,
	BasePoints = 30,
	Demand = 1,
	Corpse = "unit-dwarven-dead-body",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	SelectableByRectangle = true,
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "dwarven-miner-acknowledge",
		"ready", "dwarven-miner-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "axe-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-axefighter", { Name = _("Axefighter"),
	Parent = "unit-template-infantry", -- parent has to be defined first, because when it is processed, the parent's data overwrites the unit type's
	Civilization = "dwarf",
	Description = _("Dwarven axefighters wield mighty battle axes, which make them feared opponents in close-range combat. Veteran axefighters often use the pay they've managed to spare to purchase steel armor for themselves at the local smithy."),
	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-axefighter",
	Corpse = "unit-dwarven-dead-body",
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/dwarven_axefighter_gray_hair.png",
			"icon", "icon-dwarven-axefighter-gray-hair",
			"upgrade-required", "upgrade-old"
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
		"ready", "dwarven-axefighter-ready",
--		"help", "basic-dwarf-voices-help",
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
	Armor = 4,
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/dwarven_steelclad_gray_hair.png",
			"icon", "icon-dwarven-steelclad-gray-hair",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"upgrade-required", "upgrade-old"
		},
		{
			"variation-id", "orange-hair",
			"file", "dwarf/units/dwarven_steelclad_orange_hair.png",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair",
			"file", "dwarf/units/dwarven_steelclad_blond_hair.png",
			"icon", "icon-dwarven-steelclad-blond-hair",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "black-hair",
			"file", "dwarf/units/dwarven_steelclad_black_hair.png",
			"icon", "icon-dwarven-steelclad-black-hair",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair",
			"file", "dwarf/units/dwarven_steelclad_brown_hair.png",
			"icon", "icon-dwarven-steelclad-brown-hair",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		-- Great Axe
		{
			"variation-id", "red-hair",
			"file", "dwarf/units/dwarven_steelclad_great_axe.png",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/dwarven_steelclad_gray_hair_great_axe.png",
			"icon", "icon-dwarven-steelclad-gray-hair",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"upgrade-required", "upgrade-old"
		},
		{
			"variation-id", "orange-hair",
			"file", "dwarf/units/dwarven_steelclad_orange_hair_great_axe.png",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair",
			"file", "dwarf/units/dwarven_steelclad_blond_hair_great_axe.png",
			"icon", "icon-dwarven-steelclad-blond-hair",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "black-hair",
			"file", "dwarf/units/dwarven_steelclad_black_hair_great_axe.png",
			"icon", "icon-dwarven-steelclad-black-hair",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair",
			"file", "dwarf/units/dwarven_steelclad_brown_hair_great_axe.png",
			"icon", "icon-dwarven-steelclad-brown-hair",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"upgrade-forbidden", "upgrade-old"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"ready", "dwarven-steelclad-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "axe-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-thane", { Name = _("Thane"),
	Parent = "unit-template-heroic-infantry",
	Civilization = "dwarf",
	Description = _("Clad in shining armor, these dwarves look like kings from under the mountains. They wield the axe with masterful skill, and though slow on their feet, these dwarves are a testament to the prowess of their kin. Thanes can yield varied political power, ranging from local chiefs to rulers of realms. One of the first thanes was Modsognir, the legendary chief who led his tribe through the depths of the Heart Mountains."),
	Quote = _("\"There was Modsognir | the mightiest made / Of all the dwarfs, | and Durin next; / Many a likeness | of apes they made, / The dwarfs in the earth, | as Durin said.\" - Dwarven Traditional Poetry"),
	Background = _("In Norse mythology, Modsognir appears in the ~<Voluspo~> as one of the first dwarves and the mightiest of them."),
	Image = {"file", "dwarf/units/thane.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-thane",
	Armor = 6,
	Corpse = "unit-dwarven-dead-body",
	CanCastSpell = {"spell-axe-twirl"},
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/thane_gray_hair.png",
			"icon", "icon-dwarven-thane-gray-hair",
			"upgrade-required", "upgrade-old"
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
		"ready", "dwarven-steelclad-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "axe-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-scout", { Name = _("Scout"),
	Parent = "unit-template-archer",
	Civilization = "dwarf",
--	Description = "Dwarven scouts use their lighter armor to their advantage, ranging ahead of the main force and reporting back on troop movements and dispositions, or securing important objectives. Outside of battle, they are often used to relay messages between dwarven communities. These scouts were instrumental for pathfinding during the migration of the group of dwarves led by Dvalin, who left the Heart Mountains, passed through swamps, and finally established themselves in a desert.", -- use the latter part of this for the pathfinder
	Description = _("Dwarven scouts use their lighter armor to their advantage, ranging ahead of the main force and reporting back on troop movements and dispositions, or securing important objectives. Outside of battle, they are often used to relay messages between dwarven communities. However, they pay for their speed with the poorer protection provided by their lighter armor."),
--	Background = _("In Norse mythology, there is a mention in the ~<Voluspo~> of a throng of dwarves led by Dvalin who moved away from the rocks and into the sands, these migrants being the ancestors of Lofar."), -- use this for the pathfinder
	Image = {"file", "dwarf/units/dwarven_scout.png", "size", {72, 72}},
	Animations = "animations-dwarven-scout", Icon = "icon-dwarven-scout",
	BasicDamage = 3, PiercingDamage = 6,
	Missile = "missile-throwing-axe",
	MaxAttackRange = 4,
	Speed = 11,
	Corpse = "unit-dwarven-dead-body",
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
			"icon", "icon-dwarven-scout-gray-hair",
			"upgrade-required", "upgrade-old"
		},
		{
			"variation-id", "gray-hair-braided-beard",
			"file", "dwarf/units/dwarven_scout_gray_hair.png",
			"icon", "icon-dwarven-scout-gray-hair-braided-beard",
			"upgrade-required", "upgrade-old"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"ready", "dwarven-scout-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead"
	}
} )

DefineUnitType("unit-dwarven-ballista", { Name = _("Ballista"),
	Parent = "unit-template-siege-engine",
	Civilization = "dwarf",
	Description = _("Dwarves employ heavy ballistas as their siege weapon of choice, with devastating effects on enemy fortifications."),
	Image = {"file", "dwarf/units/dwarven_ballista.png", "size", {64, 64}},
	Animations = "animations-dwarven-ballista", Icon = "icon-dwarven-ballista",
	Missile = "missile-dwarven-ballista-bolt",
	Sounds = {
		"selected", "click",
--		"acknowledge", "ballista-acknowledge",
		"ready", "dwarven-ballista-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "explosion"
} } )

DefineUnitType("unit-dwarven-gryphon-rider", { Name = _("Gryphon Rider"),
	Class = "flying-rider",
	Civilization = "dwarf",
	Description = _("Only a few are able to bond with the mighty gryphons. Those who do may become gryphon riders, and discover the world of the skies upon the backs of these flying beasts."),
	Quote = _("\"Ha ha! Gryphons as mounts, that is naught but the stuff of legends! Is there no end to your folly?\" - Relgorn, Chieftain of the Norlund Clan"),
	Image = {"file", "dwarf/units/gryphon_rider.png", "size", {100, 100}},
	DrawLevel = 45,
	Animations = "animations-dwarven-gryphon-rider", Icon = "icon-dwarven-gryphon-rider",
	Costs = {"time", 250, "gold", 1750, "lumber", 750},
	TechnologyPointCost = 1,
	Speed = 14,
	HitPoints = 100,
	DrawLevel = 60,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 6, ComputerReactionRange = 8, PersonReactionRange = 6,
	Armor = 0, BasicDamage = 4, PiercingDamage = 8, Missile = "missile-throwing-axe",
	MaxAttackRange = 4,
	Accuracy = 10,
	Evasion = 10,
	Priority = 65,
	Points = 150,
	Demand = 1,
	Type = "fly",
--	ShadowFly = {Value = 1, Enable = true}, -- deactivated the shadow because it was appearing on top of the unit
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	DetectCloak = true,
	organic = true,
	SelectableByRectangle = true,
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
			"file", "dwarf/units/gryphon_rider_gray_hair_brown_feathers.png",
			"upgrade-required", "upgrade-old"
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
		"ready", "dwarven-gryphon-rider-ready",
--		"help", "critter-help",
		"dead", "gryphon-dead"
	}
} )

DefineUnitType("unit-dwarven-town-hall", { Name = _("Mead Hall"),
	Parent = "unit-template-town-hall",
	Civilization = "dwarf",
	Description = _("The mead hall is the center of any sizable dwarven settlement, where they gather to discuss the issues facing the community and drink their strong mead. It was in one such hall that Fjalar and Galar feasted on the mead they made out of the blood of a dwarven sage, believing that it would grant them his breadth of knowledge. One of the most magnificent mead halls ever built is that of Lyr."),
	Quote = _("\"Durin spake: 'Now answer me, warder, | the question I ask, / For now the truth would I know: / What call they the hall, | encompassed here / With flickering magic flames?'\" - Dwarven Traditional Poetry"),
	Background = _("Mead was a recurring theme in Germanic mythology, from which dwarves originate. In one particular myth, the dwarves Fjalar and Galar invited the sage Kvasir to a large feast in their dwelling, only to murder him and brew his blood into a special mead, the ~<Mead of Poetry~>. As the pair of ruthless dwarves expected, drinking the mead imbibed them with Kvasir's breadth of knowledge. In the ~<Voluspo~> it is mentioned that a dwarven hall made of gold existed in Nidavellir. The hall of Lyr is mentioned in the ~<Svipdagsmol~>."),
	Image = {"file", "dwarf/buildings/town_hall.png", "size", {128, 128}},
	Animations = "animations-building", Icon = "icon-dwarven-town-hall"
} )

DefineUnitType("unit-dwarven-stronghold", { Name = _("Bastion"),
	Class = "stronghold",
	Civilization = "dwarf",
	Description = _("A dwarven settlement that has reached a certain status will often oversee the construction of a bastion, enhancing its defensive capabilities."),
	Image = {"file", "dwarf/buildings/stronghold.png", "size", {128, 128}},
	Animations = "animations-building", Icon = "icon-dwarven-stronghold",
--	Costs = {"time", 200, "gold", 2000, "lumber", 1000, "oil", 200},
	Costs = {"time", 200, "gold", 2200, "lumber", 1100},
	TechnologyPointCost = 1,
	RepairHp = 4,
--	RepairCosts = {"gold", 1, "lumber", 1, "oil", 1},
	RepairCosts = {"gold", 1, "lumber", 1},
	ImproveProduction = {"gold", 10},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 1167, -- 1400 with masonry
	DrawLevel = 20,
	TileSize = {4, 4}, BoxSize = {127, 127},
	SightRange = 3,
	Armor = 15, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 37, AnnoyComputerFactor = 40,
	Points = 600,
	Supply = 1,
	Corpse = "unit-destroyed-4x4-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true, Center = true, LumberImprove = true, OilImprove = false,
	BuildingRules = {
		{ "distance", { Distance = 3, DistanceType = ">", Type = "unit-gold-mine"},
		"distance", { Distance = 3, DistanceType = ">", Type = "unit-coal-mine"} }
	},
	CanStore = {"lumber", "gold", "coal"},
	MaxOnBoard = 3,
	CanTransport = {"LandUnit", "only", "organic", "only"},
	AttackFromTransporter = true,
	SaveCargo = true,
	Sounds = {
		"selected", "town-hall-selected",
--		"acknowledge", "town-hall-acknowledge",
--		"ready", "town-hall-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"}
} )

DefineUnitType("unit-dwarven-mushroom-farm", { Name = _("Mushroom Farm"),
	Parent = "unit-template-farm",
	Civilization = "dwarf",
	Description = _("For aeons, dwarves have practiced mushroom farming underground. At first, their crude agricultural methods allowed them only to use mushroom farming as a supplementary means of nutrition, so that they could remain in a given area for a longer time before migrating. Eventually, however, dwarven mushroom farming techniques developed to the point that dwarves were able to establish their first permanent communities."),
	Quote = _("\"This is how we get our food, me lad. Since we are a tad close to the surface here, some sunlight shines down through the cracks in the roof. If we baby the plants, we can usually get enough. They taste unco' foul but that's how we ha' survived all these long years.\" - Hamel, Lord of Knalga"),
	Image = {"file", "dwarf/buildings/mushroom_farm.png", "size", {64, 64}},
	Animations = "animations-building", Icon = "icon-dwarven-mushroom-farm"
} )

DefineUnitType("unit-dwarven-barracks", { Name = _("War Hall"),
	Parent = "unit-template-barracks",
	Civilization = "dwarf",
	Description = _("The war hall is where dwarves meet to train and hone their axefighting skills. Since early times, dwarves have faced many perils in the dark plains and caves of Nidavellir, such as goblins or hostile dwarven clans. To fight off these menaces, clans gradually developed means of organizing themselves militarily."),
	Quote = _("\"Loud roar the dwarves | by the doors of stone, / The masters of the rocks: | would you know yet more?\" - Dwarven Traditional Poetry"),
	Image = {"file", "dwarf/buildings/barracks.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-dwarven-barracks"
} )

DefineUnitType("unit-dwarven-lumber-mill", { Name = _("Lumber Mill"),
	Parent = "unit-template-lumber-mill",
	Civilization = "dwarf",
	Description = _("Dwarven culture places a great emphasis on handling stone and metal, to the detriment of woodworking. Nevertheless, the lumber mill employs a number of dwarven artisans skilled in woodworking, who strive to improve methods of lumber production and the scouts' throwing axes."),
	Background = _("In Germanic mythology, one instance related to dwarven woodwork to be found is the crafting of the ship Skidbladnir and the throwing spear Gungnir by the sons of Ivaldi. Skidbladnir is mentioned in the ~<Grimnismol~>."),
	Image = {"file", "dwarf/buildings/lumber_mill.png", "size", {96, 96}},
	Icon = "icon-dwarven-lumber-mill",
	TechnologyPointCost = 1
} )

DefineUnitType("unit-dwarven-smithy", { Name = _("Smithy"),
	Parent = "unit-template-smithy",
	Civilization = "dwarf",
	Description = _("Smithing is a highly-valued skill in dwarven society, and it is in this structure that dwarven smiths gather to produce weapons and armor for troops. Dwarves are renowned for their smithing abilities, and their craft attracts many non-dwarven customers. The most prestigious of dwarven metalworkers are the runesmiths, Thursagan being the greatest among them."),
	Quote = _("\"The land of Untersberg's banner bold / Comes not from its own land; / It comes from Dwarfdom, grim and old / Made by a runesmith's hand.\" - The Scepter of Fire"),
	Background = _("One of the primary talents of the dwarves in Norse mythology was smithing. In a number of myths, dwarven smiths would craft marvelous artifacts for the gods, and sometimes even for mortals. One example of such an artifact is Mjollnir, the famous hammer of the Norse god Thor, which was made by the dwarves Brokk and Eitri. Another example is the sword Gram, crafted by the dwarf Regin in the ~<Reginsmol~>.\n\nRunesmiths feature in the Battle for Wesnoth, and are mentioned in ~<The Sceptre of Fire~> poem."),
	Image = {"file", "dwarf/buildings/smithy.png", "size", {96, 96}},
	Icon = "icon-dwarven-smithy",
	TechnologyPointCost = 1,
	PersonalNamePrefixes = {"The Black", "Brisings'", "Brokk's", "Eitri's", "The Fiery", "Ivaldi's", "Regin's"}, -- The Brisings were a group of dwarves who crafter a magnificent necklace; Brokk and Eitri were skilled dwarven smiths; Ivaldi's sons were skilled dwarven smiths; Regin was a dwarven smith in the Siegfried myth
	PersonalNameSuffixes = {" Anvil", " Forge", " Hammer", " Smithy"}
} )

DefineUnitType("unit-dwarven-sentry-tower", { Name = _("Sentry Tower"),
	Parent = "unit-template-watch-tower",
	Civilization = "dwarf",
	Description = _("In these towers dwarves keep watch of threats approaching their settlements."),
	Image = {"file", "dwarf/buildings/sentry_tower.png", "size", {64, 64}},
	Animations = "animations-dwarven-sentry-tower", Icon = "icon-dwarven-sentry-tower",
	TechnologyPointCost = 1,
	Construction = "construction-dwarven-sentry-tower"
} )

DefineUnitType("unit-dwarven-guard-tower", { Name = _("Guard Tower"),
	Parent = "unit-template-guard-tower",
	Civilization = "dwarf",
	Description = _("Often garrisoned by dwarven scouts, these towers are an essential part of a dwarven settlement's defenses."),
	Image = {"file", "dwarf/buildings/guard_tower.png", "size", {64, 64}},
	Animations = "animations-dwarven-guard-tower", Icon = "icon-dwarven-guard-tower",
	TechnologyPointCost = 1
} )

DefineUnitType("unit-surghan-mercenary-steelclad", { Name = _("Surghan Mercenary"),
	Parent = "unit-dwarven-steelclad",
	Class = "",
	Civilization = "dwarf",
	Description = _("These scoundrels will hire their axes to the largest bidder, no questions asked. They have participated in a number of engagements, the most dangerous of which was the pursuit of a group of dwarves into the lair of the wyrm Svafnir and beyond."),
	Quote = _("\"It must be one of those Surghan mercenaries. I'll bet those Shinsplitters have hired more of them. That's bad news for us, for they are deadly, combat-hardened warriors.\" - Baglur, Retired Norlund Warrior"),
	Image = {"file", "dwarf/units/dwarven_steelclad.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-surghan-mercenary-steelclad",
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
	Animations = "animations-dwarven-axefighter", Icon = "icon-surghan-mercenary-thane"
} )

DefineUnitType("unit-hero-durin", { Name = _("Steelclad"),
	Parent = "unit-dwarven-steelclad",
	Class = "",
	DefaultName = "Durin",
	Civilization = "dwarf",
	Description = _("Durin is a valiant dwarven warrior and loyal vassal of chieftain Modsognir."),
	Background = _("In Norse mythology, Durin appears in the ~<Voluspo~> as one of the first dwarves."),
	Image = {"file", "dwarf/units/dwarven_steelclad_brown_hair.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-durin",
	Variations = {
		{
			"variation-id", "brown-hair",
			"upgrade-forbidden", "upgrade-dwarven-great-axe"
		},
		{
			"variation-id", "brown-hair",
			"file", "dwarf/units/dwarven_steelclad_brown_hair_great_axe.png",
			"upgrade-required", "upgrade-dwarven-great-axe"
		}
	}
} )

DefineUnitType("unit-hero-durin-thane", { Name = _("Thane"),
	Parent = "unit-dwarven-thane",
	Class = "",
	DefaultName = "Durin",
	Civilization = "dwarf",
	Image = {"file", "dwarf/units/thane_brown_hair.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-durin"
} )

DefineUnitType("unit-hero-rugnur", { Name = _("Axefighter"),
	Parent = "unit-dwarven-axefighter",
	Class = "",
	DefaultName = "Rugnur",
	Civilization = "dwarf",
	Description = _("Rugnur is a relatively young dwarven warrior. He belongs to the lower strata of his tribe's notables, not being of high enough rank to have a leading position in the clan, but important enough to be granted control of an outpost in the Chaincolt Foothills. Despite being neither ambitious nor adventurous, Rugnur nevertheless ended up being embroiled in the quest to craft the Scepter of Fire for a gnomish monarch."),
	Image = {"file", "dwarf/units/rugnur.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-rugnur"
} )

DefineUnitType("unit-hero-rugnur-steelclad", { Name = _("Steelclad"),
	Parent = "unit-dwarven-steelclad",
	Class = "",
	DefaultName = "Rugnur",
	Civilization = "dwarf",
	Image = {"file", "dwarf/units/dwarven_steelclad_brown_hair.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-rugnur",
	Variations = {
		{
			"variation-id", "brown-hair",
			"upgrade-forbidden", "upgrade-dwarven-great-axe"
		},
		{
			"variation-id", "brown-hair",
			"file", "dwarf/units/dwarven_steelclad_brown_hair_great_axe.png",
			"upgrade-required", "upgrade-dwarven-great-axe"
		}
	}
} )

DefineUnitType("unit-hero-rugnur-thane", { Name = _("Thane"),
	Parent = "unit-dwarven-thane",
	Class = "",
	DefaultName = "Rugnur",
	Civilization = "dwarf",
	Image = {"file", "dwarf/units/thane_brown_hair.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-rugnur-older",
} )

DefineUnitType("unit-hero-baglur", { Name = _("Steelclad"),
	Parent = "unit-dwarven-steelclad",
	Class = "",
	DefaultName = "Baglur",
	Civilization = "dwarf",
	Description = _("Baglur is an old and well-experienced warrior. He came back from retirement to help Rugnur defend their homeland against an attack from the Shinsplitter Clan."),
--	Quote = _("\"Argh! I'm a retired warrior... it looks like I'll ha' to come out and help ye, else we'll be overrun by these damn raiders...\" - Baglur"), -- repeats information already given
	Image = {"file", "dwarf/units/dwarven_steelclad_gray_hair.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-baglur",
	Variations = {
		{
			"variation-id", "gray-hair",
			"upgrade-forbidden", "upgrade-dwarven-great-axe"
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/dwarven_steelclad_gray_hair_great_axe.png",
			"upgrade-required", "upgrade-dwarven-great-axe"
		}
	}
} )

DefineUnitType("unit-hero-baglur-thane", { Name = _("Thane"),
	Parent = "unit-dwarven-thane",
	Class = "",
	DefaultName = "Baglur",
	Civilization = "dwarf",
	Image = {"file", "dwarf/units/thane_gray_hair.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-baglur"
} )

DefineUnitType("unit-hero-thursagan", { Name = _("Thane"),
	Parent = "unit-dwarven-thane",
	Class = "",
	DefaultName = "Thursagan",
	Civilization = "dwarf",
	Description = _("Thursagan is an extremely skilled runemaster who has retired to live as a hermit in the Northern Wastelands. Due to his talents, he was contacted by Rugnur to craft of the Scepter of Fire. His hammer is considered legendary, and dwarves have sought to find it for centuries after his death."),
	Quote = _("\"Ye mean the insane dwarf who lives in the far north?!\" - Baglur, Retired Norlund Warrior"),
	Background = "~<The Sceptre of Fire~> poem about the crafting of that artifact mentions Thursagan (as \"a runesmith\") as the maker of the scepter.",
	Image = {"file", "dwarf/units/thane_gray_hair.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-thursagan"
} )

DefineUnitType("unit-hero-durstorn", { Name = _("Thane"),
	Parent = "unit-dwarven-thane",
	Class = "",
	DefaultName = "Durstorn",
	Civilization = "dwarf",
	Description = _("Durstorn is the chief of the Norlund Clan. Despite being greedy and unpleasant to be around, he makes a passable leader. When under pressure, however, he tends to become hasty and crass, impoverishing his capability to make good decisions."),
	Image = {"file", "dwarf/units/thane_brown_hair.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-durstorn"
} )
