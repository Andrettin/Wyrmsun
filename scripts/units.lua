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
--      (c) Copyright 1998-2017 by Lutz Sammer, Jimmy Salmon and Andrettin
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

UnitTypeFiles = {}

Units = {
	"upgrade-trading-company",
	"unit-latin-town-hall", "unit-latin-farm", "unit-latin-barracks", "unit-latin-smithy", "unit-latin-stables",
	"upgrade-latin-civilization",
	"unit-germanic-worker", "unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-chieftain", "unit-germanic-spearman", "unit-germanic-archer",
	"unit-germanic-priest",
	"unit-germanic-transport-ship",
	"unit-germanic-town-hall", "unit-germanic-farm", "unit-germanic-barracks",
	"unit-germanic-carpenters-shop", "unit-germanic-smithy", --"unit-germanic-temple",
	"unit-germanic-dock",
	"upgrade-germanic-broad-sword", "upgrade-germanic-long-spear", "upgrade-germanic-bronze-shield",
	"upgrade-germanic-barbed-arrow",
	"upgrade-germanic-wood-plow",
	"upgrade-teuton-civilization",
	"upgrade-faction-bavarian-tribe",
	"upgrade-faction-saxon-tribe", "upgrade-faction-cherusci-tribe", "upgrade-faction-varini-tribe",
	"upgrade-faction-austria", "upgrade-faction-bavaria", "upgrade-faction-carinthia",
	"upgrade-faction-thuringia",
	"upgrade-faction-baden", "upgrade-faction-swabia", "upgrade-faction-switzerland", "upgrade-faction-wurtemberg",
	"upgrade-faction-saxony",
	"unit-teuton-worker", "unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-teuton-heroic-swordsman",
	"unit-teuton-spearman", "unit-teuton-archer",
	"unit-teuton-ritter", "unit-teuton-knight-lord",
	"unit-teuton-priest", 
	"unit-teuton-catapult",
	"unit-teuton-kogge",
	"unit-teuton-town-hall", "unit-teuton-stronghold",
	"unit-teuton-farm", "unit-teuton-barracks",
	"unit-teuton-lumber-mill", "unit-teuton-smithy",
	"unit-teuton-stables", "unit-teuton-temple",
	"unit-teuton-watch-tower", "unit-teuton-guard-tower",
	"unit-teuton-dock",
	"upgrade-teuton-spatha", "upgrade-frank-spatha", "upgrade-teuton-pike", "upgrade-teuton-iron-shield", "upgrade-teuton-bodkin-arrow",
	"upgrade-teuton-catapult-projectile-1", "upgrade-teuton-catapult-projectile-2",
	"upgrade-teuton-iron-tipped-wood-plow",
	"upgrade-teuton-masonry",
	"upgrade-teuton-coinage", "upgrade-teuton-writing", "upgrade-teuton-alchemy",
	"upgrade-suebi-civilization",
	"unit-suebi-swordsman", 
	"upgrade-faction-suebi-tribe", "upgrade-faction-semnone-tribe",
	"upgrade-faction-marcomanni-tribe", "upgrade-faction-quadi-tribe", "upgrade-faction-buri-tribe",
	"upgrade-faction-alamanni-tribe",
	"upgrade-faction-hermunduri-tribe", "upgrade-faction-thuringian-tribe",
	"upgrade-faction-galicia",
	"unit-frank-swordsman", "unit-frank-veteran-swordsman", "unit-frank-heroic-swordsman", "unit-frank-spearman",
	"unit-frank-horseman", "unit-frank-knight-lord",
	"unit-celt-farm",
	"upgrade-celt-civilization",
	"upgrade-faction-norlund-clan", "upgrade-faction-shadowcharm-clan", "upgrade-faction-shinsplitter-clan", "upgrade-faction-shorbear-clan", 
	"upgrade-faction-kal-kartha", "upgrade-faction-knalga",
	"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner", "unit-dwarven-militia",
	"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
	"unit-dwarven-guard",
	"unit-dwarven-scout", "unit-dwarven-pathfinder", "unit-dwarven-explorer",
	"unit-dwarven-yale-rider", "unit-dwarven-yale-lord", "unit-dwarven-ballista",
	"unit-dwarven-witness", 
	"unit-dwarven-gryphon-rider",
	"unit-dwarven-transport-ship",
	"unit-dwarven-town-hall", "unit-dwarven-stronghold",
	"unit-dwarven-mushroom-farm", "unit-dwarven-barracks",
	"unit-dwarven-lumber-mill", "unit-dwarven-smithy",
	"unit-dwarven-yale-pen", "unit-dwarven-temple",
	"unit-dwarven-sentry-tower", "unit-dwarven-guard-tower",
	"unit-dwarven-dock",
	"upgrade-dwarven-broad-axe", "upgrade-dwarven-great-axe", "upgrade-dwarven-shield-1", "upgrade-dwarven-shield-2",
	"upgrade-dwarven-long-spear", "upgrade-dwarven-pike",
	"upgrade-dwarven-sharp-throwing-axe", "upgrade-dwarven-bearded-throwing-axe", "upgrade-dwarven-ballista-bolt-1", "upgrade-dwarven-ballista-bolt-2",
	"upgrade-dwarven-wood-plow", "upgrade-dwarven-iron-tipped-wood-plow",
	"upgrade-dwarven-masonry",
	"upgrade-dwarven-coinage", "upgrade-dwarven-runewriting", "upgrade-dwarven-alchemy",
	"upgrade-faction-brising-clan", "upgrade-faction-lyr",
	"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner", "unit-brising-militia",
	"unit-brising-smithy",
	"upgrade-faction-eikinskjaldi-clan", "upgrade-faction-joruvellir",
	"unit-joruvellir-yale-pen",
	"unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-duelist", "unit-gnomish-master-at-arms", "unit-gnomish-herbalist", "unit-gnomish-caravan",
	"unit-gnomish-town-hall", "unit-gnomish-farm", "unit-gnomish-barracks",
	"unit-deep-gnomish-worker", "unit-deep-gnomish-recruit", "unit-deep-gnomish-duelist", "unit-deep-gnomish-master-at-arms", "unit-deep-gnomish-herbalist",
	"unit-derro-worker", "unit-derro-thug", "unit-derro-executioner", "unit-derro-shadowguard",
	"upgrade-faction-aurvang", "upgrade-faction-ezmarria", "upgrade-faction-myridia", "upgrade-faction-stilgar", "upgrade-faction-tenebris",
	"unit-goblin-worker", "unit-goblin-militia", "unit-goblin-magnate",
	"unit-goblin-swordsman", "unit-goblin-barbarian", "unit-goblin-warlord", "unit-goblin-spearman",
	"unit-goblin-archer", "unit-goblin-headhunter", "unit-goblin-shadowstalker", "unit-goblin-thief", "unit-goblin-shaman",
	"unit-goblin-war-machine", "unit-goblin-glider",
	"unit-goblin-transport-ship",
	"unit-goblin-town-hall", "unit-goblin-stronghold",
	"unit-goblin-mess-hall", "unit-goblin-farm", "unit-goblin-lumber-mill", "unit-goblin-smithy", "unit-goblin-temple",
	"unit-goblin-watch-tower", "unit-goblin-guard-tower",
	"unit-goblin-dock",
	"upgrade-goblin-broad-sword", "upgrade-goblin-long-sword", "upgrade-goblin-rimmed-shield", "upgrade-goblin-embossed-shield",
	"upgrade-goblin-long-spear", "upgrade-goblin-pike",
	"upgrade-goblin-barbed-arrow", "upgrade-goblin-bodkin-arrow",
	"upgrade-goblin-catapult-projectile-1", "upgrade-goblin-catapult-projectile-2",
	"upgrade-goblin-wood-plow", "upgrade-goblin-iron-tipped-wood-plow",
	"upgrade-goblin-masonry",
	"upgrade-goblin-coinage", "upgrade-goblin-writing", "upgrade-goblin-alchemy",
	"unit-kobold-footpad",
	"unit-elven-swordsman", "unit-elven-priest", 
	"unit-orc-spearthrower", "unit-orc-sea-orc", "unit-orc-shaman",
	"unit-ettin",
--	"unit-adelobasileus-cromptoni", "unit-galerix-exilis", "unit-megacricetodon-collongensis", "unit-rat",
	"unit-adelobasileus-cromptoni", "unit-galerix-exilis", "unit-rat",
	"unit-goat", "unit-boar", "unit-horse",
	"unit-wolf",
	"unit-slime", "unit-yale", "unit-gryphon", "unit-wyrm", "unit-water-elemental",
	"unit-unicorn",
	"unit-gold-rock", "unit-gold-deposit", "unit-gold-mine",
	"unit-silver-rock", "unit-silver-deposit", "unit-silver-mine",
	"unit-copper-rock", "unit-copper-deposit", "unit-copper-mine",
	"unit-coal-mine",
	"unit-mercenary-camp",
--	"unit-cavern-entrance",
--	"unit-portal",
	"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
	"unit-carrots", "unit-cheese", "unit-wyrm-heart", "unit-potion-of-healing"
}

if (OldDefineUnitType == nil) then
	OldDefineUnitType = DefineUnitType
end

function DefineUnitType(unit_type, data)
	local town_hall = false
	if (data.Class == "town-hall" or data.Class == "stronghold") then
		town_hall = true
	end
	
	if (data.Parent ~= nil) then
		OldDefineUnitType(unit_type, {Parent = data.Parent})
		data.Parent = nil
		if ((GetUnitTypeData(unit_type, "Class") == "town-hall" or GetUnitTypeData(unit_type, "Class") == "stronghold") and data.Class == nil) then
			town_hall = true
		end
	end
	
	data.OnInit = InitializeUnit
	
	if (town_hall) then
		data.BuildingRules = {
			{
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-gold-rock"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-gold-deposit"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-gold-mine"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-silver-rock"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-silver-deposit"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-silver-mine"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-copper-rock"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-copper-deposit"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-copper-mine"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-coal-mine"}
			}
		}
	end
	
	OldDefineUnitType(unit_type, data)
end

-- Load the animations for the units.
Load("scripts/anim.lua")

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--
DefineUnitType("unit-template-unit", { Name = _("Unit"),
	TileSize = {1, 1}, BoxSize = {31, 31}, -- default tile and box size
	Animations = "animations-melee-unit-new",
	DrawLevel = 40,
	SelectableByRectangle = true,
	ButtonLevel = 0,
	ButtonPopup = "popup-unit"
})

DefineUnitType("unit-template-building", {
	Name = "Building",
	TileSize = {2, 2}, BoxSize = {63, 63}, -- default tile and box size
	Animations = "animations-building",
	DrawLevel = 40,
	SightRange = 2,
	Building = true,
	VisibleUnderFog = true,
	SelectableByRectangle = true,
	ButtonLevel = 1,
	ButtonPopup = "popup-building"
})

DefineUnitType("unit-template-sapient-unit", { Name = _("Sapient Unit"),
	Parent = "unit-template-unit",
	NeutralMinimapColor = {192, 192, 192},
	Strength = 10,
	Dexterity = 10,
	Intelligence = 10,
	Charisma = 10,
	organic = true,
	Traits = {"upgrade-ambitious", "upgrade-clumsy", "upgrade-cruel", "upgrade-dextrous", "upgrade-dim", "upgrade-dutiful", "upgrade-genius", "upgrade-intelligent", "upgrade-keen", "upgrade-limping", "upgrade-mighty", "upgrade-near-sighted", "upgrade-old", "upgrade-pious", "upgrade-quick", "upgrade-reckless", "upgrade-resilient", "upgrade-slow", "upgrade-strong", "upgrade-weak", "upgrade-wise"}
})

Load("scripts/items.lua")
Load("scripts/units_fauna.lua")

DefineUnitType("unit-template-deposit", {
	Name = "Deposit",
	Parent = "unit-template-building",
	NeutralMinimapColor = {255, 255, 0},
	Costs = {"time", 150},
	Construction = "construction-land2",
	Speed = 0,
	HitPoints = 25500,
	TileSize = {3, 3}, BoxSize = {95, 95},
	Armor = 20, Missile = "missile-none",
	Priority = 0,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	StartingResources = {50000},
	Affixes = {"upgrade-item-prefix-dwindling", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-replenishing", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-replenishment", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "gold-mine-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-mine", {
	Name = _("Mine"),
	Parent = "unit-template-building",
	Animations = "animations-mine",
	NeutralMinimapColor = {255, 255, 0},
	Construction = "construction-mine",
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Speed = 0,
	HitPoints = 650,
	TileSize = {3, 3}, BoxSize = {95, 95},
--	Armor = 20, Missile = "missile-none",
	Armor = 5, Missile = "missile-none",
	Priority = 20, AnnoyComputerFactor = 20,
	Points = 160,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	BuilderOutside = true,
	CanHarvest = true,
	BurnPercent = 50,
	BurnDamageRate = 1,
	Affixes = {"upgrade-item-prefix-dwindling", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-replenishing", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-replenishment", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "gold-mine-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-gold-deposit", { Name = _("Gold Deposit"),
	Parent = "unit-template-deposit",
	Description = _("Gold deposits contain deep veins of gold, which can be gainfully mined after the proper infrastructure is put into place."),
	Image = {"file", "neutral/buildings/gold_deposit.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/gold_deposit_shadow.png", "size", {96, 96}},
	Icon = "icon-gold-deposit",
	BuildingRules = {
		{
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-dwarven-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-dwarven-stronghold"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-germanic-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-gnomish-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-goblin-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-goblin-stronghold"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-latin-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-teuton-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-teuton-stronghold"}
		}
	},
	GivesResource = "gold"
} )

DefineUnitType("unit-gold-mine", {
	Name = _("Gold Mine"),
	Parent = "unit-template-mine",
	Class = "gold-mine",
	Description = _("Gold is a crucial metal for most societies, as it serves both as a durable stock of value, and as a means of exchange with which a myriad of goods and services can be traded for."),
	Image = {"file", "neutral/buildings/gold_mine.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/gold_mine_shadow.png", "size", {96, 96}},
	LightImage = {"file", "neutral/buildings/gold_mine_light.png"},
	Icon = "icon-gold-mine",
--	Costs = {"time", 200, "copper", 700, "lumber", 450},
	Costs = {"time", 200, "lumber", 2050},
	BuildingRules = { { "ontop", { Type = "unit-gold-deposit", ReplaceOnDie = true, ReplaceOnBuild = true} } },
	GivesResource = "gold",
	ButtonPos = 12,
	ButtonKey = "g",
	ButtonHint = _("Build ~!Gold Mine")
} )

DefineUnitType("unit-silver-deposit", {
	Name = _("Silver Deposit"),
	Parent = "unit-template-deposit",
	Description = _("Silver deposits often contain deep veins of silver, which can be gainfully mined after the proper infrastructure is put into place."),
	Image = {"file", "neutral/buildings/silver_deposit.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/silver_deposit_shadow.png", "size", {96, 96}},
	Icon = "icon-silver-deposit",
	BuildingRules = {
		{
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-dwarven-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-dwarven-stronghold"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-germanic-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-gnomish-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-goblin-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-goblin-stronghold"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-latin-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-teuton-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-teuton-stronghold"}
		}
	},
	GivesResource = "silver"
} )

DefineUnitType("unit-silver-mine", {
	Name = _("Silver Mine"),
	Parent = "unit-template-mine",
	Class = "silver-mine",
	Description = _("Silver is a crucial metal for most societies, as it serves both as a durable stock of value, and as a means of exchange with which a myriad of goods and services can be traded for. Although not as valuable as gold, silver is still a highly sought-after metal."),
	Image = {"file", "neutral/buildings/silver_mine.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/silver_mine_shadow.png", "size", {96, 96}},
	LightImage = {"file", "neutral/buildings/silver_mine_light.png"},
	Icon = "icon-silver-mine",
	Costs = {"time", 200, "lumber", 2050},
	BuildingRules = { { "ontop", { Type = "unit-silver-deposit", ReplaceOnDie = true, ReplaceOnBuild = true} } },
	GivesResource = "silver",
	ButtonPos = 11,
	ButtonKey = "v",
	ButtonHint = _("Build Sil~!ver Mine")
} )

DefineUnitType("unit-copper-deposit", {
	Name = _("Copper Deposit"),
	Parent = "unit-template-deposit",
	Description = _("Copper deposits contain deep veins of copper, which can be gainfully mined after the proper infrastructure is put into place."),
	Image = {"file", "neutral/buildings/copper_deposit.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/copper_deposit_shadow.png", "size", {96, 96}},
	Icon = "icon-copper-deposit",
	BuildingRules = {
		{
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-dwarven-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-dwarven-stronghold"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-germanic-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-gnomish-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-goblin-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-goblin-stronghold"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-latin-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-teuton-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-teuton-stronghold"}
		}
	},
	GivesResource = "copper"
} )

DefineUnitType("unit-copper-mine", {
	Name = _("Copper Mine"),
	Parent = "unit-template-mine",
	Class = "copper-mine",
	Description = _("More common than either gold or silver, copper has a multitude of uses. It not only serves as a stock of value and means of exchange, but also as a material for utensils and as an ingredient to the making of bronze."),
	Image = {"file", "neutral/buildings/copper_mine.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/copper_mine_shadow.png", "size", {96, 96}},
	LightImage = {"file", "neutral/buildings/copper_mine_light.png"},
	Icon = "icon-copper-mine",
	Costs = {"time", 200, "lumber", 2050},
	BuildingRules = { { "ontop", { Type = "unit-copper-deposit", ReplaceOnDie = true, ReplaceOnBuild = true} } },
	GivesResource = "copper",
	ButtonPos = 10,
	ButtonKey = "c",
	ButtonHint = _("Build ~!Copper Mine")
} )

DefineUnitType("unit-coal-mine", {
	Name = _("Coal Mine"),
	Parent = "unit-template-building",
	Description = _("Coal is a valuable heating material."),
	Image = {"file", "neutral/buildings/coal_mine.png", "size", {96, 96}},
	Animations = "animations-mine", Icon = "icon-coal-mine",
	NeutralMinimapColor = {255, 255, 0},
	Costs = {"time", 150},
	Construction = "construction-land2",
	Speed = 0,
	HitPoints = 25500,
	TileSize = {3, 3}, BoxSize = {95, 95},
	Armor = 20, Missile = "missile-none",
	Priority = 0,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	BuildingRules = {
		{
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-dwarven-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-dwarven-stronghold"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-germanic-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-gnomish-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-goblin-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-goblin-stronghold"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-latin-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-teuton-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-teuton-stronghold"}
		}
	},
	GivesResource = "coal", CanHarvest = true,
	Sounds = {
		"selected", "gold-mine-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-gold-rock", {
	Name = _("Gold Rock"),
	Image = {"file", "neutral/buildings/gold_rock.png", "size", {43, 43}},
	Shadow = {"file", "neutral/buildings/gold_rock_shadow.png", "size", {43, 43}},
	Animations = "animations-decoration", Icon = "icon-gold-rock",
	NeutralMinimapColor = {255, 255, 0},
	Costs = {"time", 150},
	Speed = 0,
	HitPoints = 25500,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
--	Corpse = "unit-destroyed-3x3-place",
--	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	StartingResources = {500, 1000},
	NumDirections = 1,
	Building = false, VisibleUnderFog = true,
	GivesResource = "gold", CanHarvest = true,
	HarvestFromOutside = true,
	Variations = {
		{
			"variation-id", "1",
			"resource-min", 501
		},
		{
			"variation-id", "2",
			"resource-min", 501
		},
		{
			"variation-id", "3",
			"resource-min", 501
		},
		{
			"variation-id", "4",
			"resource-min", 501
		},
		{
			"variation-id", "small-1",
			"resource-max", 500
		},
		{
			"variation-id", "small-2",
			"resource-max", 500
		},
		{
			"variation-id", "small-3",
			"resource-max", 500
		},
		{
			"variation-id", "small-4",
			"resource-max", 500
		}
	},
	Sounds = {
		"selected", "metal-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
--		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-silver-rock", {
	Name = _("Silver Rock"),
	Image = {"file", "neutral/buildings/silver_rock_1.png", "size", {43, 43}},
	Shadow = {"file", "neutral/buildings/silver_rock_1_shadow.png", "size", {43, 43}},
	Animations = "animations-building", Icon = "icon-silver-rock",
	Offset = {0, -2},
	NeutralMinimapColor = {255, 255, 0},
	Costs = {"time", 150},
	Speed = 0,
	HitPoints = 25500,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
--	Corpse = "unit-destroyed-3x3-place",
	Type = "land",
	StartingResources = {1000},
	NumDirections = 1,
	Building = false, VisibleUnderFog = true,
	GivesResource = "silver", CanHarvest = true,
	HarvestFromOutside = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2",
			"file", "neutral/buildings/silver_rock_2.png",
			"shadow-file", "neutral/buildings/silver_rock_2_shadow.png"
		},
		{
			"variation-id", "3",
			"file", "neutral/buildings/silver_rock_3.png",
			"shadow-file", "neutral/buildings/silver_rock_3_shadow.png"
		},
		{
			"variation-id", "4",
			"file", "neutral/buildings/silver_rock_4.png",
			"shadow-file", "neutral/buildings/silver_rock_4_shadow.png"
		}
	},
	Sounds = {
		"selected", "metal-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
--		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-copper-rock", {
	Name = _("Copper Rock"),
	Image = {"file", "neutral/buildings/copper_rock_1.png", "size", {43, 43}},
	Shadow = {"file", "neutral/buildings/copper_rock_1_shadow.png", "size", {43, 43}},
	Animations = "animations-building", Icon = "icon-copper-rock",
	Offset = {0, -2},
	NeutralMinimapColor = {255, 255, 0},
	Costs = {"time", 150},
	Speed = 0,
	HitPoints = 25500,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
--	Corpse = "unit-destroyed-3x3-place",
	Type = "land",
	StartingResources = {1000},
	NumDirections = 1,
	Building = false, VisibleUnderFog = true,
	GivesResource = "copper", CanHarvest = true,
	HarvestFromOutside = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2",
			"file", "neutral/buildings/copper_rock_2.png",
			"shadow-file", "neutral/buildings/copper_rock_2_shadow.png"
		},
		{
			"variation-id", "3",
			"file", "neutral/buildings/copper_rock_3.png",
			"shadow-file", "neutral/buildings/copper_rock_3_shadow.png"
		},
		{
			"variation-id", "4",
			"file", "neutral/buildings/copper_rock_4.png",
			"shadow-file", "neutral/buildings/copper_rock_4_shadow.png"
		}
	},
	Sounds = {
		"selected", "metal-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
--		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-wood-pile", {
	Name = _("Wood Pile"),
	Image = {"file", "neutral/buildings/wood_pile.png", "size", {43, 43}},
	Animations = "animations-decoration", Icon = "icon-wood-pile",
	NeutralMinimapColor = {165, 42, 42},
	Costs = {"time", 150},
	Speed = 0,
	HitPoints = 25500,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
--	Corpse = "unit-destroyed-3x3-place",
	Type = "land",
	StartingResources = {400},
	Building = true, VisibleUnderFog = true,
	GivesResource = "lumber", CanHarvest = true,
	HarvestFromOutside = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		}
	},
	Sounds = {
		"selected", "tree-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
--		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-stone-pile", {
	Name = _("Stone Pile"),
	Image = {"file", "neutral/buildings/stone_pile.png", "size", {43, 43}},
	Shadow = {"file", "neutral/buildings/stone_pile_shadow.png", "size", {43, 43}},
	Animations = "animations-decoration", Icon = "icon-stone-pile",
	NeutralMinimapColor = {92, 92, 92},
	Costs = {"time", 150},
	Speed = 0,
	HitPoints = 25500,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
--	Corpse = "unit-destroyed-3x3-place",
	Type = "land",
	StartingResources = {200, 400},
	Building = true, VisibleUnderFog = true,
	GivesResource = "stone", CanHarvest = true,
	HarvestFromOutside = true,
	Variations = {
		{
			"variation-id", "1",
			"resource-min", 201
		},
		{
			"variation-id", "2",
			"resource-min", 201
		},
		{
			"variation-id", "3",
			"resource-min", 201
		},
		{
			"variation-id", "4",
			"resource-min", 201
		},
		{
			"variation-id", "small-1",
			"resource-max", 200
		},
		{
			"variation-id", "small-2",
			"resource-max", 200
		},
		{
			"variation-id", "small-3",
			"resource-max", 200
		},
		{
			"variation-id", "small-4",
			"resource-max", 200
		}
	},
	Sounds = {
		"selected", "click",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
--		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-tree-stump", {
	Name = _("Tree Stump"),
	Image = {"file", "neutral/buildings/tree_stump.png", "size", {72, 72}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-tree-stump", Icon = "icon-tree-stump",
	Speed = 0,
	HitPoints = 20,
	DrawLevel = 30,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Type = "land",
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	NumDirections = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	VisibleUnderFog = true,
	MaxOnBoard = 1,
	CanTransport = {"organic", "only", "Mounted", "false"},
	SaveCargo = true,
	StartingResources = {200},
	GivesResource = "lumber", CanHarvest = true,
	HarvestFromOutside = true,
	RightMouseAction = "rally-point",
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2",
			"file", "neutral/buildings/tree_stump_2.png"
		},
		{
			"variation-id", "3",
			"file", "neutral/buildings/tree_stump_3.png"
		},
		{
			"variation-id", "4",
			"file", "neutral/buildings/tree_stump_4.png"
		},
		{
			"variation-id", "5",
			"file", "neutral/buildings/tree_stump_5.png"
		}
	},
	Sounds = {
		"selected", "tree-selected",
--		"acknowledge", "dwarven-sentry-tower-acknowledge",
--		"ready", "dwarven-sentry-tower-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-hole", { Name = _("Hole"),
	Image = {"file", "tilesets/cave/neutral/buildings/hole.png", "size", {64, 64}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-tree-stump", Icon = "icon-hole",
	Speed = 0,
	HitPoints = 50,
	DrawLevel = 30,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Type = "land",
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	NumDirections = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	VisibleUnderFog = true,
	MaxOnBoard = 1,
	CanTransport = {"organic", "only", "Mounted", "false"},
	SaveCargo = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "dwarven-sentry-tower-acknowledge",
--		"ready", "dwarven-sentry-tower-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-cavern-entrance", {
	Name = _("Cavern Entrance"),
	Image = {"file", "neutral/buildings/cavern_entrance.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/cavern_entrance_shadow.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-cavern-entrance",
	Description = "Cavern entrances connect different surface levels.",
	NeutralMinimapColor = {128, 128, 0},
	Costs = {"time", 150},
	Speed = 0,
	HitPoints = 25500,
	DrawLevel = 40,
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	VisibleUnderFog = true,
	Indestructible = true,
	Building = true,
	Variations = {
		{
			"variation-id", "gray"
		},
		{
			"variation-id", "brown",
			"file", "neutral/buildings/cavern_entrance_brown.png",
			"icon", "icon-cavern-entrance-brown"
		}
	},
	Sounds = {
		"selected", "click"
	}
} )

DefineUnitType("unit-portal", {
	Name = _("Portal"),
	Image = {"file", "neutral/buildings/portal_frame.png", "size", {96, 96}},
	LightImage = {"file", "neutral/buildings/portal.png"},
	Animations = "animations-portal", Icon = "icon-portal",
	Description = "Portals establish a link between different worlds or planes, though they are invisible to all but those who have attuned themselves to that which is magical.",
	NeutralMinimapColor = {128, 128, 0},
	Costs = {"time", 150},
	Speed = 0,
	HitPoints = 25500,
	DrawLevel = 10,
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
--	VisibleUnderFog = true,
	Indestructible = true,
	Building = true,
	NonSolid = true,
	Ethereal = true,
	Sounds = {
		"selected", "click"
	}
} )

DefineUnitType("unit-mushroom", {
	Name = "Mushroom",
	Image = {"file", "neutral/decorations/mushroom.png", "size", {32, 32}},
	Animations = "animations-mushroom-patch", Icon = "icon-mushroom",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Variations = {
		{
			"variation-id", "red"
		},
		{
			"variation-id", "orange"
		},
		{
			"variation-id", "green"
		},
		{
			"variation-id", "yellow"
		}
	},
	Sounds = {}
})

DefineUnitType("unit-mushroom-patch", {
	Name = "Mushroom Patch",
	Image = {"file", "neutral/decorations/mushrooms.png", "size", {32, 32}},
	Animations = "animations-mushroom-patch", Icon = "icon-mushroom",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Variations = {
		{
			"variation-id", "red"
		},
		{
			"variation-id", "orange"
		},
		{
			"variation-id", "green"
		},
		{
			"variation-id", "yellow"
		}
	},
	Sounds = {}
})

DefineUnitType("unit-flowers", {
	Name = "Flowers",
	Image = {"file", "neutral/decorations/flowers.png", "size", {32, 32}},
	Animations = "animations-building", Icon = "icon-flowers",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Vegetable = true,
	Variations = {
		{
			"variation-id", "forest",
			"terrain", "grass",
			"terrain", "dirt"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/flowers_swamp_1.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/flowers_swamp_2.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/flowers_swamp_3.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		}
	},
	Sounds = {}
} )

DefineUnitType("unit-large-flower", {
	Name = "Large Flower",
	Image = {"file", "neutral/decorations/large_flower_1.png", "size", {32, 32}},
	Animations = "animations-building", Icon = "icon-large-flower",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Vegetable = true,
	Variations = {
		{
			"variation-id", "forest",
			"terrain", "grass",
			"terrain", "dirt"
		},
		{
			"variation-id", "forest",
			"file", "neutral/decorations/large_flower_2.png",
			"terrain", "grass",
			"terrain", "dirt"
		},
		{
			"variation-id", "forest",
			"file", "neutral/decorations/large_flower_3.png",
			"terrain", "grass",
			"terrain", "dirt"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_1.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_2.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_3.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_4.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_5.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_6.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_7.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_8.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_9.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_10.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_11.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_12.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		}
	},
	Sounds = {}
} )

DefineUnitType("unit-fern", { Name = "Fern",
	Image = {"file", "neutral/decorations/fern.png", "size", {48, 48}},
	Animations = "animations-building", Icon = "icon-fern",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Vegetable = true,
	Variations = {
		{
			"variation-id", "forest",
			"terrain", "grass",
			"terrain", "dirt"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/fern_swamp_1.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/fern_swamp_2.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/fern_swamp_3.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/fern_swamp_4.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		}
	},
	Sounds = {}
} )

DefineUnitType("unit-twigs", { Name = _("Twigs"),
	Image = {"file", "neutral/decorations/twigs.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-twigs",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		},
		{
			"variation-id", "5"
		},
		{
			"variation-id", "6"
		},
		{
			"variation-id", "7"
		},
		{
			"variation-id", "8"
		},
		{
			"variation-id", "9"
		},
		{
			"variation-id", "10"
		},
		{
			"variation-id", "11"
		},
		{
			"variation-id", "12"
		},
		{
			"variation-id", "13"
		},
		{
			"variation-id", "14"
		},
		{
			"variation-id", "15"
		},
		{
			"variation-id", "16"
		},
		{
			"variation-id", "17"
		},
		{
			"variation-id", "18"
		},
		{
			"variation-id", "19"
		},
		{
			"variation-id", "20"
		},
		{
			"variation-id", "21"
		},
		{
			"variation-id", "22"
		},
		{
			"variation-id", "23"
		},
		{
			"variation-id", "24"
		},
		{
			"variation-id", "25"
		}
	},
	Sounds = {} }
)

DefineUnitType("unit-log", {
	Name = "Log",
	Image = {"file", "neutral/decorations/log.png", "size", {56, 56}},
	Animations = "animations-decoration-old", Icon = "icon-log",
	NeutralMinimapColor = {165, 42, 42},
	Speed = 0,
	HitPoints = 20,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,
	VisibleUnderFog = true,
	StartingResources = {400},
	GivesResource = "lumber", CanHarvest = true,
	HarvestFromOutside = true,
	Sounds = {
		"selected", "tree-selected"
	}
})

DefineUnitType("unit-bones", { Name = "Bones",
	Image = {"file", "neutral/decorations/bones.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-bones",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		}
	},
	Sounds = {} }
)

DefineUnitType("unit-wyrm-skeleton", {
	Name = "Wyrm Skeleton",
	Image = {"file", "neutral/decorations/wyrm_skeleton.png", "size", {128, 32}},
	Animations = "animations-building", Icon = "icon-wyrm-skeleton",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {4, 1}, BoxSize = {127, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Variations = {
		{
			"variation-id", "non-horned"
		},
		{
			"variation-id", "horned",
			"file", "neutral/decorations/wyrm_skeleton_horned.png"
		}
	},
	Sounds = {} }
)

DefineUnitType("unit-small-rocks", { Name = "Small Rocks",
	Image = {"file", "neutral/decorations/small_rocks.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-small-rocks",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Gravel = true, -- makes them play the gravel step sound when stepped upon
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		},
		{
			"variation-id", "5"
		},
		{
			"variation-id", "6"
		}
	},
	Sounds = {} }
)

DefineUnitType("unit-stalagmites", { Name = _("Stalagmites"),
	Image = {"file", "neutral/decorations/stalagmites.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-stalagmites",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		}
	},
	Sounds = {} }
)

function VolcanicCraterSpit(unit) -- this is called every second
	OrderUnit(GetUnitVariable(unit, "Player"), GetUnitVariable(unit, "Ident"), {GetUnitVariable(unit, "PosX"), GetUnitVariable(unit, "PosY")}, nil, "stop")
	if (GetCurrentQuest() ~= "the-wyrm") then
		if (SyncRand(10) == 0) then -- one chance in thirty to happen (that is, this is going to happen on average once every half minute)
			if (SyncRand(2) == 0) then
				local target_x = GetUnitVariable(unit,"PosX") + SyncRand(GetUnitVariable(unit,"AttackRange") + GetUnitTypeData(GetUnitVariable(unit, "Ident"), "TileWidth") + GetUnitVariable(unit,"AttackRange")) - GetUnitVariable(unit,"AttackRange")
				local target_y = GetUnitVariable(unit,"PosY") + SyncRand(GetUnitVariable(unit,"AttackRange") + GetUnitTypeData(GetUnitVariable(unit, "Ident"), "TileHeight") + GetUnitVariable(unit,"AttackRange")) - GetUnitVariable(unit,"AttackRange")
				OrderUnit(GetUnitVariable(unit, "Player"), GetUnitVariable(unit, "Ident"), {GetUnitVariable(unit, "PosX"), GetUnitVariable(unit, "PosY")}, {target_x, target_y}, "attack-ground")
			else
				if (GetNumUnitsAt(PlayerNumNeutral, "unit-miasma", {0, 0}, {512, 512}) < GetNumUnitsAt(PlayerNumNeutral, "unit-volcanic-crater", {0, 0}, {512, 512})) then
					CreateUnit("unit-miasma", PlayerNumNeutral, {GetUnitVariable(unit, "PosX"), GetUnitVariable(unit, "PosY")})
				end
			end
		end
	end
end

DefineUnitType("unit-volcanic-crater", { Name = _("Volcanic Crater"),
	Image = {"file", "neutral/decorations/volcanic_crater.png", "size", {64, 64}},
	Animations = "animations-volcanic-crater", Icon = "icon-volcanic-crater",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 30,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 0,
	FireDamage = 80, Missile = "missile-flaming-catapult-rock",
	Priority = 0,
	Type = "land",
	MaxAttackRange = 2,
	GroundAttack = true,
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true,
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Accuracy = 0,
	OnEachSecond = VolcanicCraterSpit,
	Sounds = {} }
)

DefineUnitType("unit-glyph", {
	Name = _("Glyph"),
	Image = {"file", "neutral/buildings/glyph.png", "size", {32, 32}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-decoration", Icon = "icon-glyph",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 4,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NonSolid = true,
	NumDirections = 1,
	Indestructible = true,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	VisibleUnderFog = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		},
		{
			"variation-id", "5"
		},
		{
			"variation-id", "6"
		},
		{
			"variation-id", "7"
		},
		{
			"variation-id", "8"
		},
		{
			"variation-id", "9"
		},
		{
			"variation-id", "10"
		},
		{
			"variation-id", "11"
		},
		{
			"variation-id", "12"
		},
		{
			"variation-id", "13"
		},
		{
			"variation-id", "14"
		},
		{
			"variation-id", "15"
		},
		{
			"variation-id", "16"
		},
		{
			"variation-id", "17"
		},
		{
			"variation-id", "18"
		},
		{
			"variation-id", "19"
		},
		{
			"variation-id", "20"
		},
		{
			"variation-id", "21"
		},
		{
			"variation-id", "22"
		},
		{
			"variation-id", "23"
		},
		{
			"variation-id", "24"
		}
	},
	Sounds = {
		"selected", "click",
		"used", "magic-holy",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
		"dead", "building-destroyed"
	}
})

DefineUnitType("unit-stairs", { Name = _("Stairs"),
	Image = {"file", "neutral/buildings/stairs.png", "size", {32, 32}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-decoration", Icon = "icon-stairs",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	NonSolid = true, 
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		}
	},
	Sounds = {} }
)

DefineUnitType("unit-door", {
	Name = _("Door"),
	Image = {"file", "tilesets/dungeon/neutral/decorations/door_left.png", "size", {32, 32}},
	Animations = "animations-door", Icon = "icon-door",
	NeutralMinimapColor = {128, 128, 0},
	Speed = 0,
	HitPoints = 10,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	VisibleUnderFog = true,
	Obstacle = true,
	AirUnpassable = true,
	Variations = {
		{
			"variation-id", "left"
		},
		{
			"variation-id", "right",
			"file", "tilesets/dungeon/neutral/decorations/door_right.png"
		}
	},
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"
	}
})

DefineUnitType("unit-shelf", {
	Name = "Shelf",
	Image = {"file", "neutral/decorations/shelf.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-shelf",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	NonSolid = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		},
		{
			"variation-id", "5"
		}
	},
	Sounds = {} }
)

DefineUnitType("unit-outer-wall-decoration", { Name = "Outer Wall Decoration",
	Image = {"file", "neutral/decorations/outer_wall_decoration.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-outer-wall-decoration",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	NonSolid = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		}
	},
	Sounds = {} }
)

DefineUnitType("unit-inner-wall-decoration", { Name = "Inner Wall Decoration",
	Image = {"file", "neutral/decorations/inner_wall_decoration.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-inner-wall-decoration",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	NonSolid = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		}
	},
	Sounds = {} }
)

DefineUnitType("unit-floor-decoration", { Name = "Floor Decoration",
	Image = {"file", "neutral/decorations/floor_decoration.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-floor-decoration",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		}
	},
	Sounds = {} }
)

DefineUnitType("unit-dwarven-dead-body", {
	Name = "Dead Body",
	Image = {"file", "neutral/units/dwarven_corpse.png", "size", {72, 72}},
	Animations = "animations-dwarven-dead-body", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Vanishes = true,
	Detritus = true,
	Sounds = {}
} )

DefineUnitType("unit-gnomish-dead-body", {
	Name = "Dead Body",
	Image = {"file", "neutral/units/gnomish_goblin_and_kobold_corpses.png", "size", {72, 72}},
	Animations = "animations-gnomish-dead-body", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Vanishes = true,
	Detritus = true,
	Sounds = {}
} )

DefineUnitType("unit-goblin-dead-body", {
	Name = "Dead Body",
	Image = {"file", "neutral/units/gnomish_goblin_and_kobold_corpses.png", "size", {72, 72}},
	Animations = "animations-goblin-dead-body", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Vanishes = true,
	Detritus = true,
	Sounds = {}
} )

DefineUnitType("unit-human-dead-body", {
	Name = "Dead Body",
	Image = {"file", "neutral/units/human_corpse.png", "size", {72, 72}},
	Animations = "animations-dwarven-dead-body", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Vanishes = true,
	Detritus = true,
	Sounds = {}
} )

DefineUnitType("unit-kobold-dead-body", {
	Name = "Dead Body",
	Image = {"file", "neutral/units/gnomish_goblin_and_kobold_corpses.png", "size", {72, 72}},
	Animations = "animations-kobold-dead-body", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Vanishes = true,
	Detritus = true,
	Sounds = {}
} )

--DefineUnitType("unit-dead-sea-body", { Name = "Dead Body",
--	Image = {"file", "neutral/units/corpses.png", "size", {72, 72}},
--	Animations = "animations-dead-sea-body", Icon = "icon-dwarven-miner",
--	Speed = 0,
--	HitPoints = 255,
--	DrawLevel = 30,
--	TileSize = {2, 2}, BoxSize = {31, 31},
--	SightRange = 1,
--	Missile = "missile-none",
--	Priority = 0,
--	Type = "naval",
--	Vanishes = true,
--	Sounds = {} } )

DefineUnitType("unit-raft", { Name = _("Raft"),
	Image = {"file", "neutral/units/raft.png", "size", {72, 72}},
	Animations = "animations-raft", Icon = "icon-raft",
	NeutralMinimapColor = {128, 128, 0},
	Speed = 0,
	HitPoints = 15,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {42, 42},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "naval",
	Bridge = true,
	VisibleUnderFog = true,
	Sounds = {
		"selected", "click",
		"dead", "ship-destroyed"
	} 
} )

DefineUnitType("unit-scepter-of-fire", { Name = _("Scepter of Fire"),
	Image = {"file", "neutral/items/scepter.png", "size", {32, 32}},
	Animations = "animations-item", Icon = "icon-scepter",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	Item = true,
	Sounds = {
		"selected", "click",
		"used", "gold-coins"
	} 
} )

DefineUnitType("unit-gold-coins", { Name = _("Gold Coins"),
	Image = {"file", "neutral/items/gold_coins.png", "size", {12, 13}},
	Animations = "animations-item", Icon = "icon-gold-coins",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	PowerUp = true,
	GivesResource = "gold",
	StartingResources = {5},
	Sounds = {
		"selected", "click",
		"used", "gold-coins"
	} 
} )

DefineUnitType("unit-gold-sack", {
	Name = _("Gold Sack"),
	Image = {"file", "neutral/items/gold_sack.png", "size", {16, 14}},
	Animations = "animations-item", Icon = "icon-gold-sack",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
--	GivesResource = "gold", CanHarvest = true,
	NumDirections = 1,	
	PowerUp = true,
	GivesResource = "gold",
	StartingResources = {100},
	Sounds = {
		"selected", "click",
		"used", "gold-coins"
	} 
} )

DefineUnitType("unit-gold-chest", { Name = _("Chest"),
	Image = {"file", "neutral/items/chest.png", "size", {32, 32}},
	Animations = "animations-gold-chest", Icon = "icon-chest",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 100,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"} } )

DefineUnitType("unit-gold-and-gems-chest", { Name = _("Chest"),
	Image = {"file", "neutral/items/chest.png", "size", {32, 32}},
	Animations = "animations-gold-and-gems-chest", Icon = "icon-chest",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 100,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"} } )

DefineUnitType("unit-alchemy-bench", { Name = _("Alchemy Bench"),
	Image = {"file", "neutral/items/alchemy_bench.png", "size", {32, 32}},
	Animations = "animations-alchemy-bench", Icon = "icon-alchemy-bench",
	NeutralMinimapColor = {128, 128, 0},
	Speed = 0,
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,
	ExplodeWhenKilled = "missile-explosion",
	DeathExplosion = DeathExplosion,
	Obstacle = true,
	VisibleUnderFog = true,
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-table", { Name = _("Table"),
	Image = {"file", "neutral/decorations/table.png", "size", {32, 32}},
	Animations = "animations-table", Icon = "icon-table",
	NeutralMinimapColor = {128, 128, 0},
	Speed = 0,
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,
	Obstacle = true,
	VisibleUnderFog = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		},
		{
			"variation-id", "5"
		},
		{
			"variation-id", "6"
		},
		{
			"variation-id", "7"
		},
		{
			"variation-id", "8"
		},
		{
			"variation-id", "9"
		},
		{
			"variation-id", "10"
		},
		{
			"variation-id", "11"
		},
		{
			"variation-id", "12"
		},
		{
			"variation-id", "13"
		},
		{
			"variation-id", "14"
		},
		{
			"variation-id", "15"
		},
		{
			"variation-id", "16"
		},
		{
			"variation-id", "17"
		},
		{
			"variation-id", "18"
		},
		{
			"variation-id", "19"
		},
		{
			"variation-id", "20"
		},
		{
			"variation-id", "21"
		},
		{
			"variation-id", "22"
		},
		{
			"variation-id", "23"
		},
		{
			"variation-id", "24"
		},
		{
			"variation-id", "25"
		},
		{
			"variation-id", "26"
		},
		{
			"variation-id", "27"
		},
		{
			"variation-id", "28"
		},
		{
			"variation-id", "29"
		}
	},
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-chair", { Name = _("Chair"),
	Image = {"file", "neutral/decorations/chair.png", "size", {32, 32}},
	Animations = "animations-chair", Icon = "icon-chair",
	NeutralMinimapColor = {128, 128, 0},
	Speed = 0,
	HitPoints = 3,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,
	Obstacle = true,
	VisibleUnderFog = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		}
	},
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-bed", { Name = _("Bed"),
	Image = {"file", "neutral/decorations/bed.png", "size", {32, 32}},
	Animations = "animations-bed", Icon = "icon-bed",
	NeutralMinimapColor = {128, 128, 0},
	Speed = 0,
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,
	Obstacle = true,
	VisibleUnderFog = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		}
	},
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-potion-of-decay", { Name = _("Potion of Decay"),
	Image = {"file", "neutral/items/potion_blue.png", "size", {16, 16}},
	Animations = "animations-potion", Icon = "icon-blue-potion",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	PowerUp = true,
	HitPointHealing = -15,
	Sounds = {
		"selected", "click",
		"used", "potion"
	} 
} )

DefineUnitType("unit-potion-of-slowness", { Name = _("Potion of Slowness"),
	Image = {"file", "neutral/items/potion_purple.png", "size", {16, 16}},
	Animations = "animations-potion", Icon = "icon-purple-potion",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	PowerUp = true,
	Slows = true,
	Sounds = {
		"selected", "click",
		"used", "potion"
	} 
} )

DefineUnitType("unit-barrel", { Name = _("Barrel"),
	Image = {"file", "neutral/items/barrel.png", "size", {32, 32}},
	Animations = "animations-barrel", Icon = "icon-barrel",
	NeutralMinimapColor = {128, 128, 0},
	Speed = 0,
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,
	Drops = {"unit-potion-of-healing", "unit-potion-of-decay", "unit-potion-of-slowness"},
	VisibleUnderFog = true,
	Obstacle = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2",
			"file", "neutral/items/barrel_2.png"
		}
	},
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-explosive-barrel", { Name = _("Explosive Barrel"),
	Image = {"file", "neutral/items/explosive_barrel.png", "size", {32, 32}},
	Animations = "animations-barrel", Icon = "icon-barrel",
	NeutralMinimapColor = {128, 128, 0},
	Speed = 0,
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,
	VisibleUnderFog = true,
	Obstacle = true,
	ExplodeWhenKilled = "missile-explosion",
	DeathExplosion = DeathExplosion,
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-gryphon-feather", { Name = _("Gryphon Feather"),
	Image = {"file", "neutral/items/gryphon_feather.png", "size", {28, 26}},
	Animations = "animations-item", Icon = "icon-gryphon-feather",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	Item = true,
	Sounds = {}
} )

DefineUnitType("unit-caltrops", { Name = _("Caltrops"),
	Image = {"file", "neutral/items/caltrops.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-caltrops",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 10,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	PiercingDamage = 10, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	Trap = true,
	PierceDamage = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		},
		{
			"variation-id", "5"
		},
		{
			"variation-id", "6"
		}
	},
	Sounds = {
		"selected", "click"
	} 
} )

DefineUnitType("unit-trap", { Name = _("Trap"),
	Image = {"file", "neutral/items/trap.png", "size", {32, 32}},
	Animations = "animations-trap", Icon = "icon-trap",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 15,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	PiercingDamage = 15, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	Trap = true,
	PierceDamage = true,
	Sounds = {
		"selected", "click",
		"hit", "axe-attack"
	} 
} )

DefineUnitType("unit-roaming-fog", { Name = _("Roaming Fog"),
	Image = {"file", "neutral/decorations/roaming_fog.png", "size", {498, 277}},
	Animations = "animations-roaming-fog", Icon = "icon-roaming-fog",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 3,
	HitPoints = 1,
	DrawLevel = 45,
	TileSize = {15, 8}, BoxSize = {497, 276},
	SightRange = 1,
	Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 37,
	Points = 1,
	Demand = 1,
	Type = "fly",
	IsNotSelectable = true,
	RightMouseAction = "move",
	RandomMovementProbability = 100,
	NumDirections = 1,
	Diminutive = true, 
	Transparency = 50,
	Decoration = true,
	Indestructible = true,
	VisibleUnderFog = false,
	Sounds = {
		"selected", "click",
--		"acknowledge", "bat-selected",
--		"ready", "bat-selected",
--		"help", "critter-help",
--		"dead", "rat-dead"
	}
} )

DefineUnitType("unit-roaming-fog-small", { Name = _("Roaming Fog"),
	Image = {"file", "neutral/decorations/roaming_fog_small.png", "size", {256, 171}},
	Animations = "animations-roaming-fog", Icon = "icon-roaming-fog",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 3,
	HitPoints = 1,
	DrawLevel = 45,
	TileSize = {8, 5}, BoxSize = {255, 169},
	SightRange = 1,
	Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 37,
	Points = 1,
	Demand = 1,
	Type = "fly",
	IsNotSelectable = true,
	RightMouseAction = "move",
	RandomMovementProbability = 100,
	NumDirections = 1,
	Diminutive = true, 
	Transparency = 50,
	Decoration = true,
	Indestructible = true,
	VisibleUnderFog = false,
	Sounds = {
		"selected", "click",
--		"acknowledge", "bat-selected",
--		"ready", "bat-selected",
--		"help", "critter-help",
--		"dead", "rat-dead"
	}
} )

DefineUnitType("unit-miasma", { Name = _("Miasma"),
	Image = {"file", "neutral/decorations/miasma.png", "size", {128, 128}},
	Animations = "animations-roaming-fog", Icon = "icon-miasma",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 3,
	HitPoints = 30, -- miasma lives for 30 seconds
	DrawLevel = 45,
	TileSize = {4, 4}, BoxSize = {127, 127},
	SightRange = 1,
	Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 37,
	Points = 1,
	Demand = 1,
	Type = "fly",
	IsNotSelectable = true,
	RightMouseAction = "move",
	RandomMovementProbability = 100,
	NumDirections = 1,
	Diminutive = true,
	Transparency = 50,
	Decoration = true,
	Indestructible = true,
	VisibleUnderFog = false,
	RegenerationRate = -1,
	Sounds = {
		"selected", "click",
--		"acknowledge", "bat-selected",
--		"ready", "bat-selected",
--		"help", "critter-help",
--		"dead", "rat-dead"
	}
} )

--DefineUnitType("unit-destroyed-1x1-place", { Name = "Destroyed 1x1 Place",
--	Image = {"size", {32, 32}},
--	Animations = "animations-destroyed-place", Icon = "icon-dwarven-miner",
--	Speed = 0,
--	HitPoints = 255,
--	DrawLevel = 10,
--	TileSize = {1, 1}, BoxSize = {31, 31},
--	SightRange = 2,
--	Missile = "missile-none",
--	Priority = 0,
--	Type = "land",
--	Building = true, VisibleUnderFog = true,
--	Vanishes = true,
--	Sounds = {} } )

DefineUnitType("unit-destroyed-2x2-place", {
	Name = "Destroyed 2x2 Place",
	Image = {"file", "neutral/buildings/destroyed_site.png", "size", {64, 64}},
	Animations = "animations-destroyed-place", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 10,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Building = true, VisibleUnderFog = true,
	Vanishes = true,
	Sounds = {}
})

DefineUnitType("unit-destroyed-3x3-place", {
	Name = "Destroyed 3x3 Place",
	Image = {"file", "neutral/buildings/destroyed_site.png", "size", {64, 64}},
	Animations = "animations-destroyed-place", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 10,
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Building = true, VisibleUnderFog = true,
	Vanishes = true,
	Sounds = {}
})

--DefineUnitType("unit-destroyed-3x3-place-water", { Name = "Destroyed 3x3 Place Water",
--	Image = {"size", {64, 64}},
--	Animations = "animations-destroyed-place-water", Icon = "icon-dwarven-miner",
--	Speed = 0,
--	HitPoints = 255,
--	DrawLevel = 10,
--	TileSize = {3, 3}, BoxSize = {95, 95},
--	SightRange = 0,
--	Missile = "missile-none",
--	Priority = 0,
--	Type = "naval",
--	Building = true, VisibleUnderFog = true,
--	Vanishes = true,
--	Sounds = {} } )

DefineUnitType("unit-destroyed-4x4-place", {
	Name = "Destroyed 4x4 Place",
	Image = {"file", "neutral/buildings/destroyed_site.png", "size", {64, 64}},
	Animations = "animations-destroyed-place", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 10,
	TileSize = {4, 4}, BoxSize = {127, 127},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Building = true, VisibleUnderFog = true,
	Vanishes = true,
	Sounds = {}
})

DefineUnitType("unit-revealer", { Name = "Revealer",
	Animations = "animations-building", Icon = "icon-eagle-eye",
	Speed = 0,
	HitPoints = 1,
	TileSize = {1, 1}, BoxSize = {1, 1},
	SightRange = 12,
	Missile = "missile-none",
	Priority = 0,
	DecayRate = 1,
	Type = "land",
	Building = true, VisibleUnderFog = true,
	Revealer = true,
	DetectCloak = true,
	HiddenInEditor = true,
	Sounds = {}
} )

-- Template Units

DefineUnitType("unit-template-worker", {
	Name = _("Worker"),
	Parent = "unit-template-sapient-unit",
	Class = "worker",
	Costs = {"time", 45, "copper", 400},
	Speed = 10,
	HitPoints = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	AutoRepairRange = 4,
	BasicDamage = 5, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 8,
	Evasion = 9,
	Priority = 50,
	Points = 30,
	Demand = 1,
	Gender = "male",
	Type = "land",
	RightMouseAction = "harvest",
	CanAttack = true, RepairRange = 1,
	CanTargetLand = true,
	Coward = true,
	Flesh = true,
	ButtonPos = 1,
	ButtonKey = "w",
	ButtonHint = _("Train ~!Worker"),
	CanGatherResources = {
		{
			"resource-id", "gold",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "silver",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "copper",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "lumber",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "stone",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "coal",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		}
	},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-skilled-miner", {
	Name = _("Skilled Miner"),
	Parent = "unit-template-worker",
	Class = "skilled-miner",
	HitPoints = 40,
	BasicDamage = 6,
	Accuracy = 9,
	Points = 45,
	Level = 2,
	CanGatherResources = {
		{
			"resource-id", "gold",
			"resource-step", 6
		},
		{
			"resource-id", "silver",
			"resource-step", 6
		},
		{
			"resource-id", "copper",
			"resource-step", 6
		},
		{
			"resource-id", "coal",
			"resource-step", 6
		}
	}
} )

DefineUnitType("unit-template-expert-miner", {
	Name = _("Expert Miner"),
	Parent = "unit-template-skilled-miner",
	Class = "expert-miner",
	HitPoints = 50,
	BasicDamage = 7,
	Accuracy = 10,
	Points = 60,
	Level = 3,
	Inventory = true,
	CanGatherResources = {
		{
			"resource-id", "gold",
			"resource-step", 8
		},
		{
			"resource-id", "silver",
			"resource-step", 8
		},
		{
			"resource-id", "copper",
			"resource-step", 8
		},
		{
			"resource-id", "coal",
			"resource-step", 8
		}
	}
} )

DefineUnitType("unit-template-militia", { Name = _("Militia"),
	Parent = "unit-template-sapient-unit",
	Class = "militia",
	Speed = 10,
	HitPoints = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	Armor = 1, BasicDamage = 6, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 50,
	Points = 30,
	Demand = 1,
	Gender = "male",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	Flesh = true,
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-grass", "step-leaves",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone"
	}
} )

DefineUnitType("unit-template-merchant", { Name = _("Merchant"),
	Parent = "unit-template-sapient-unit",
	Class = "merchant",
	Strength = 10,
	Dexterity = 11,
	Intelligence = 12,
	Charisma = 12,
	Speed = 10,
	HitPoints = 45,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	BasicDamage = 6, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 12,
	Priority = 50,
	Points = 75,
	Demand = 1,
	Gender = "male",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	Coward = true,
	Flesh = true,
	ButtonPos = 1,
	ButtonKey = "m",
	ButtonHint = _("Train ~!Merchant"),
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-heroic-merchant", {
	Name = _("Heroic Merchant"),
	Parent = "unit-template-merchant",
	Class = "heroic-merchant",
	Costs = {"time", 120, "copper", 1200},
	Strength = 10,
	Dexterity = 12,
	Intelligence = 13,
	Charisma = 14,
	HitPoints = 60,
	BasicDamage = 7,
	Evasion = 14,
	Points = 90,
	Level = 3,
	LeadershipAura = 1,
	Inventory = true
} )

DefineUnitType("unit-template-infantry", {
	Name = _("Infantry"),
	Parent = "unit-template-sapient-unit",
	Class = "infantry",
	Costs = {"time", 60, "copper", 600},
	Strength = 11,
	Speed = 10,
	HitPoints = 60,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	Armor = 2, BasicDamage = 9, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 60,
	Points = 50,
	Demand = 1,
	Upkeep = 25,
	Gender = "male",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	Flesh = true,
	CanCastSpell = {"spell-stun"},
	AutoCastActive = {"spell-stun"},
	ButtonPos = 1,
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-veteran-infantry", {
	Name = "Veteran Infantry",
	Parent = "unit-template-infantry",
	Class = "veteran-infantry",
	Costs = {"time", 90, "copper", 900},
	Strength = 12,
	Dexterity = 12,
	Intelligence = 11,
	Charisma = 11,
	HitPoints = 75,
	BasicDamage = 10,
	Points = 75,
	Level = 2,
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	AiDrops = {"unit-horn", "unit-amulet", "unit-ring"},
	DropAffixes = {"upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-vicious", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-thorns"}
})

DefineUnitType("unit-template-heroic-infantry", {
	Name = "Heroic Infantry",
	Parent = "unit-template-veteran-infantry",
	Class = "heroic-infantry",
	Costs = {"time", 120, "copper", 1200},
	Strength = 13,
	Dexterity = 12,
	Intelligence = 12,
	Charisma = 12,
	HitPoints = 90,
	BasicDamage = 12,
	Points = 100,
	Level = 3,
	Type = "land",
	RightMouseAction = "attack",
	Inventory = true,
	Mana = {Enable = true, Max = 225, Value = 225, Increase = 1},
	DropAffixes = {"upgrade-item-suffix-of-power", "upgrade-item-suffix-of-regeneration", "upgrade-item-suffix-of-slaughter", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-victory", "upgrade-item-suffix-of-vision"}
})

DefineUnitType("unit-template-spearman", {
	Name = "Spearman",
	Parent = "unit-template-infantry",
	Class = "spearman",
	Costs = {"time", 50, "copper", 400, "lumber", 100},
	BasicDamage = 5, -- reduced damage, since it is cheaper, and because it has a bonus against mounted units
	BonusAgainstMounted = 100,
	Armor = 1,
	WeaponClasses = {"spear"},
	PierceDamage = true,
	DropAffixes = {},
	Mana = {Enable = true, Max = 75, Value = 75, Increase = 1},
	CanCastSpell = {"spell-puncture"},
	AutoCastActive = {"spell-puncture"},
	ButtonPos = 2,
	Sounds = {
		"hit", "spear-attack",
		"miss", "spear-miss"
	}
})

DefineUnitType("unit-template-archer", { Name = _("Shooter"),
	Parent = "unit-template-sapient-unit",
	Class = "shooter",
	Costs = {"time", 70, "copper", 500, "lumber", 150},
	Dexterity = 11,
	Speed = 10,
	HitPoints = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 5,
	BasicDamage = 9,
	Missile = "missile-arrow",
	FireMissile = "missile-flaming-arrow",
	MaxAttackRange = 5,
	Accuracy = 10,
	Evasion = 10,
	Priority = 55,
	Points = 60,
	Demand = 1,
	Upkeep = 25,
	Gender = "male",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	Flesh = true,
	AttackFromTransporter = true,
	ButtonPos = 3,
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-veteran-shooter", {
	Name = _("Veteran Shooter"),
	Parent = "unit-template-archer",
	Class = "veteran-shooter",
	Costs = {"time", 105, "copper", 750, "lumber", 225},
	Strength = 11,
	Dexterity = 12,
	Intelligence = 11,
	Charisma = 11,
	HitPoints = 50,
	BasicDamage = 10,
	Accuracy = 11,
	Points = 90,
	Level = 2,
	AiDrops = {"unit-horn", "unit-amulet", "unit-ring"},
	DropAffixes = {"upgrade-item-prefix-penetrating", "upgrade-item-prefix-vicious", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed"}
} )

DefineUnitType("unit-template-heroic-shooter", { Name = _("Heroic Shooter"),
	Parent = "unit-template-veteran-shooter",
	Class = "heroic-shooter",
	Costs = {"time", 140, "copper", 1000, "lumber", 300},
	Strength = 12,
	Dexterity = 13,
	Intelligence = 12,
	Charisma = 12,
	HitPoints = 60,
	BasicDamage = 11,
	Accuracy = 12,
	Points = 120,
	Level = 3,
	Mana = {Enable = true, Max = 225, Value = 225, Increase = 1},
	Inventory = true,
	CanCastSpell = {"spell-precise-shot"},
	AutoCastActive = {"spell-precise-shot"},
	DropAffixes = {"upgrade-item-prefix-impregnable", "upgrade-item-suffix-of-thorns"}
} )

DefineUnitType("unit-template-thief", {
	Name = _("Thief"),
	Parent = "unit-template-sapient-unit",
	Class = "thief",
	Costs = {"time", 0, "copper", 400},
	Dexterity = 11,
	Intelligence = 11,
	Charisma = 11,
	Speed = 10,
	HitPoints = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	BasicDamage = 6, Missile = "missile-none",
	MaxAttackRange = 1,
	Backstab = 100,
	Accuracy = 12,
	Evasion = 12,
	Priority = 50,
	Points = 30,
	Demand = 1,
	Upkeep = 25,
	Gender = "male",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	Flesh = true,
	HiddenOwnership = true,
	CanCastSpell = {"spell-puncture"},
	AutoCastActive = {"spell-puncture"},
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-cavalry", {
	Name = _("Cavalry"),
	Parent = "unit-template-sapient-unit",
	Class = "cavalry",
	Costs = {"time", 90, "copper", 900},
	Strength = 12,
	Dexterity = 11,
	Intelligence = 11,
	Charisma = 11,
	Speed = 13,
	HitPoints = 75,
	TileSize = {1, 1}, BoxSize = {42, 42},
	SightRange = 4,
	Armor = 2, BasicDamage = 12, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 9,
	Priority = 63,
	Points = 75,
	Demand = 2,
	Gender = "male",
	Level = 2,
	Upkeep = 25,
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	Mounted = true,
	Flesh = true,
	Mana = {Enable = true, Max = 150, Value = 150, Increase = 1},
	ButtonPos = 4,
	AiDrops = {"unit-horn", "unit-amulet", "unit-ring"},
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vicious", "upgrade-item-prefix-vulnerable", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-heroic-cavalry", { Name = _("Heroic Cavalry"),
	Parent = "unit-template-cavalry",
	Class = "heroic-cavalry",
	Costs = {"time", 120, "copper", 1200},
	Strength = 13,
	Dexterity = 12,
	Intelligence = 12,
	Charisma = 12,
	HitPoints = 90,
	BasicDamage = 14,
	Points = 100,
	Level = 3,
	Inventory = true,
	Mana = {Enable = true, Max = 225, Value = 225, Increase = 1},
	CanCastSpell = {"spell-stun"},
	AutoCastActive = {"spell-stun"},
	DropAffixes = {"upgrade-item-suffix-of-power", "upgrade-item-suffix-of-regeneration", "upgrade-item-suffix-of-slaughter", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-victory", "upgrade-item-suffix-of-vision"}
} )

DefineUnitType("unit-template-priest", {
	Name = _("Priest"),
	Parent = "unit-template-sapient-unit",
	Class = "priest",
	Costs = {"time", 80, "copper", 700},
	Intelligence = 12,
	Charisma = 12,
	Speed = 8,
	HitPoints = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 9,
	BasicDamage = 6, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 8,
	Evasion = 8,
	Priority = 70,
	Points = 60,
	Demand = 1,
	Upkeep = 25,
	Gender = "male",
	Type = "land",
	RightMouseAction = "attack",
	Coward = true,
	CanAttack = true,
	CanTargetLand = true,
	Flesh = true,
	Mana = {Enable = true, Max = 190, Value = 190, Increase = 1},
	ButtonPos = 1,
	AiDrops = {"unit-amulet", "unit-ring", "unit-scroll", "unit-book"},
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vicious", "upgrade-item-prefix-vulnerable", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-vulnerability"},
	DropSpells = {"spell-detachment", "spell-forgetfulness", "spell-retraining"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-flying-rider", { Name = _("Flying Rider"),
	Parent = "unit-template-sapient-unit",
	Class = "flying-rider",
	Costs = {"time", 250, "copper", 1750, "lumber", 750},
	Strength = 12,
	Dexterity = 13,
	Intelligence = 12,
	Charisma = 12,
	Speed = 14,
	HitPoints = 100,
	DrawLevel = 60,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 6,
	BasicDamage = 12, Missile = "missile-arrow",
	MaxAttackRange = 5,
	Accuracy = 10,
	Evasion = 10,
	Priority = 65,
	Points = 100,
	Level = 3,
	Demand = 2,
	Upkeep = 50,
	Mana = {Enable = true, Max = 225, Value = 225, Increase = 1},
	Gender = "male",
	Type = "fly",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	DetectCloak = true,
	Flesh = true,
	Mounted = true,
	Inventory = true,
	ButtonPos = 6,
	AiDrops = {"unit-horn", "unit-amulet", "unit-ring"},
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vicious", "upgrade-item-prefix-vulnerable", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-power", "upgrade-item-suffix-of-regeneration", "upgrade-item-suffix-of-slaughter", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-victory", "upgrade-item-suffix-of-vision", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
	}
} )

DefineUnitType("unit-template-siege-engine", {
	Name = _("Siege Engine"),
	Parent = "unit-template-unit",
	Class = "siege-engine",
	Costs = {"time", 250, "copper", 900, "lumber", 900},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Speed = 5,
	HitPoints = 110,
	TileSize = {1, 1}, BoxSize = {63, 63},
	SightRange = 9,
	BasicDamage = 75, Missile = "missile-catapult-sandstone-rock",
	MinAttackRange = 2, MaxAttackRange = 8,
	Accuracy = 8,
	Evasion = 2,
	Priority = 70,
	Points = 100,
	Demand = 2,
	Upkeep = 50,
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	RightMouseAction = "attack",
	GroundAttack = true,
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true,
	NoFriendlyFire = true, -- don't attack a target if friendly units would get hurt too
	ButtonPos = 5,
	Sounds = {
		"selected", "click",
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-ship", {
	Name = _("Ship"),
	Parent = "unit-template-unit",
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
--	Corpse = "unit-dead-sea-body",
	Type = "naval",
	Sounds = {
		"selected", "ship-selected",
		"ready", "ship-selected",
		"acknowledge", "ship-move",
		"dead", "ship-destroyed"
	}
})

DefineUnitType("unit-template-transport-ship", {
	Name = _("Transport"),
	Parent = "unit-template-ship",
	Class = "transport-ship",
	Animations = "animations-transport-ship", 
--	Costs = {"time", 70, "copper", 600, "lumber", 200, "oil", 500},
	Costs = {"time", 70, "copper", 600, "lumber", 2100},
	Speed = 10,
	HitPoints = 150,
	MaxOnBoard = 3,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 4,
	Missile = "missile-none",
	MaxAttackRange = 1,
	Evasion = 5,
	Priority = 70, AnnoyComputerFactor = 15,
	Points = 50,
	Demand = 2,
	Upkeep = 50, -- should be more?
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	RightMouseAction = "attack",
	CanTransport = {"LandUnit", "only"},
	SideAttack = true,
	CanAttack = true,
	CanDock = true,
	AttackFromTransporter = true,
	ButtonPos = 1,
	ButtonKey = "t",
	ButtonHint = _("Build ~!Transport"),
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-vulnerability"}
})

DefineUnitType("unit-template-town-hall", {
	Name = "Town Hall",
	Parent = "unit-template-building",
	Class = "town-hall",
	Costs = {"time", 255, "copper", 1200, "lumber", 2400},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 1000, -- 1200 with masonry
	TileSize = {4, 4}, BoxSize = {127, 127},
	SightRange = 6,
	Armor = 5, Missile = "missile-none",
	Priority = 35, AnnoyComputerFactor = 45,
	Points = 200,
	Supply = 5,
	Corpse = "unit-destroyed-4x4-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	TownHall = true,
	LumberImprove = true, StoneImprove = true,
	BuilderOutside = true,
	RecruitHeroes = true,
	CanStore = {"copper", "silver", "gold", "lumber", "stone", "coal"},
	Drops = {"unit-wood-pile"},
	RightMouseAction = "rally-point",
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonPos = 1,
	ButtonKey = "h",
	ButtonHint = _("Build Town ~!Hall"),
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	AiDrops = {"unit-hammer", "unit-mining-pick", "unit-amulet", "unit-ring", "unit-scroll", "unit-book"}, -- worker-related items, as well as those we would expect a center of administration to have
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vulnerable", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-power", "upgrade-item-suffix-of-regeneration", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-vision", "upgrade-item-suffix-of-vulnerability"},
	DropSpells = {"spell-detachment", "spell-forgetfulness", "spell-retraining"},
	Sounds = {
		"selected", "town-hall-selected",
--		"acknowledge", "town-hall-acknowledge",
		"ready", "town-hall-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-stronghold", {
	Name = _("Stronghold"),
	Parent = "unit-template-town-hall",
	Class = "stronghold",
	Costs = {"time", 200, "copper", 2000, "lumber", 2100, "stone", 1500},
	RepairCosts = {"copper", 1, "lumber", 1, "stone", 1},
	HitPoints = 1167, -- 1400 with masonry
	SightRange = 9,
	MaxAttackRange = 1,
	Priority = 37, AnnoyComputerFactor = 40,
	Points = 600,
	MaxOnBoard = 3,
	CanTransport = {"LandUnit", "only", "organic", "only"},
	AttackFromTransporter = true,
	SaveCargo = true,
	ButtonLevelForTransporter = 1,
	Drops = {"unit-stone-pile"},
	AiDrops = {}, -- worker-related items, as well as those we would expect a center of administration to have; and military ones, since this is a stronghold
	Affixes = {"upgrade-item-suffix-of-the-colossus"},
	DropAffixes = {"upgrade-item-suffix-of-slaughter", "upgrade-item-suffix-of-victory"},
	Sounds = {
		"selected", "fortress-selected",
--		"acknowledge", "town-hall-acknowledge",
		"ready", "fortress-ready",
--		"help", "basic-dwarf-voices-help"
	}
} )

DefineUnitType("unit-template-farm", {
	Name = "Farm",
	Parent = "unit-template-building",
	Class = "farm",
	Costs = {"time", 100, "copper", 500, "lumber", 750},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 334, -- 400 with masonry
	TileSize = {2, 2}, BoxSize = {63, 63},
	Armor = 5, Missile = "missile-none",
	Priority = 20, AnnoyComputerFactor = 45,
	Points = 100,
	Supply = 4,
	Corpse = "unit-destroyed-2x2-place",
	ExplodeWhenKilled = "missile-explosion",
	Drops = {"unit-cheese", "unit-carrots", "unit-wood-pile"},
	Type = "land",
	BuilderOutside = true,
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonPos = 2,
	ButtonKey = "f",
	ButtonHint = "Build ~!Farm",
	UnitStock = {"unit-cheese", 3, "unit-carrots", 3},
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	PersonalNames = {
		"Blackfield",
		"Blackgarden",
		"Brownfield",
		"Browngarden",
		"Greengarden",
		"Greenfield",
		"Lushfield",
		"Newfield",
		"Newgarden",
		"Oldfield",
		"Oldgarden",
		"Redfield",
		"Redgarden",
		"Stonefield",
		"Stonegarden",
		"Whitefield",
		"Whitegarden"
	},
	Sounds = {
		"selected", "farm-selected",
--		"acknowledge", "farm-acknowledge",
		"ready", "farm-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-barracks", {
	Name = _("Barracks"),
	Parent = "unit-template-building",
	Class = "barracks",
	Costs = {"time", 200, "copper", 700, "lumber", 1350},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 667, -- 800 with masonry
	TileSize = {3, 3}, BoxSize = {95, 95},
	Armor = 5, Missile = "missile-none",
	Priority = 30, AnnoyComputerFactor = 35,
	Points = 160,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	BuilderOutside = true,
	Drops = {"unit-wood-pile"},
	RightMouseAction = "rally-point",
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonPos = 3,
	ButtonKey = "b",
	ButtonHint = _("Build ~!Barracks"),
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vicious", "upgrade-item-prefix-vulnerable", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-power", "upgrade-item-suffix-of-regeneration", "upgrade-item-suffix-of-slaughter", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-victory", "upgrade-item-suffix-of-vision", "upgrade-item-suffix-of-vulnerability"},
	PersonalNames = {
		"Axehall",
		"Bloodhall",
		"Daggerhall",
		"Hammerhall",
		"Helmhall",
		"Shieldhall",
		"Spearhall",
		"Stonehall",
		"Swordhall"
	},
	Sounds = {
		"selected", "barracks-selected",
--		"acknowledge", "barracks-acknowledge",
		"ready", "barracks-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-lumber-mill", {
	Name = _("Lumber Mill"),
	Parent = "unit-template-building",
	Class = "lumber-mill",
	Costs = {"time", 150, "copper", 600, "lumber", 1350},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	ImproveProduction = {"lumber", 25},
	GrandStrategyProductionEfficiencyModifier = {"lumber", 25},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 500, -- 600 with masonry
	TileSize = {3, 3}, BoxSize = {95, 95},
	Armor = 5, Missile = "missile-none",
	Priority = 25, AnnoyComputerFactor = 15,
	Points = 150,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	LumberImprove = true,
	CanStore = {"lumber"},
	BuilderOutside = true,
	Drops = {"unit-wood-pile"},
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonPos = 4,
	ButtonKey = "l",
	ButtonHint = _("Build ~!Lumber Mill"),
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vicious", "upgrade-item-prefix-vulnerable", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-slaughter", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-victory", "upgrade-item-suffix-of-vulnerability"},
	PersonalNames = {
		"The Black Board",
		"The Black Hammer",
		"The Black Nail",
		"The Black Plank",
		"The Black Saw",
		"The Black Tree",
		"The Brass Hammer",
		"The Brass Nail",
		"The Brass Saw",
		"The Bronze Hammer",
		"The Bronze Nail",
		"The Bronze Saw",
		"The Copper Hammer",
		"The Copper Nail",
		"The Copper Saw",
		"The Golden Hammer",
		"The Golden Nail",
		"The Golden Saw",
		"The Silver Hammer",
		"The Silver Nail",
		"The Silver Saw",
		"The Glittering Board",
		"The Glittering Hammer",
		"The Glittering Nail",
		"The Glittering Plank",
		"The Glittering Saw",
		"The Glittering Tree",
		"The Laughing Board",
		"The Laughing Hammer",
		"The Laughing Nail",
		"The Laughing Plank",
		"The Laughing Saw",
		"The Laughing Tree"
	},
	Sounds = {
		"selected", "lumber-mill-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
		"ready", "storehouse-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-smithy", {
	Name = _("Smithy"),
	Parent = "unit-template-building",
	Class = "smithy",
--	Costs = {"time", 200, "copper", 800, "lumber", 450, "oil", 100},
	Costs = {"time", 200, "copper", 800, "lumber", 1650},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 646, -- 775 with masonry
	TileSize = {3, 3}, BoxSize = {95, 95},
	Armor = 5, Missile = "missile-none",
	Priority = 15, AnnoyComputerFactor = 20,
	Points = 170,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	BuilderOutside = true,
	Drops = {"unit-wood-pile"},
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonPos = 5,
	ButtonKey = "s",
	ButtonHint = _("Build ~!Smithy"),
	AiDrops = {"unit-hammer", "unit-mining-pick", "unit-amulet", "unit-ring"},
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vicious", "upgrade-item-prefix-vulnerable", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-the-colossus", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-power", "upgrade-item-suffix-of-regeneration", "upgrade-item-suffix-of-slaughter", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-victory", "upgrade-item-suffix-of-vision", "upgrade-item-suffix-of-vulnerability"},
	PersonalNames = {
		"The Black Anvil",
		"The Black Furnace",
		"The Black Gauntlet",
		"The Black Hammer",
		"The Black Helm",
		"The Black Stone",
		"The Brass Anvil",
		"The Brass Furnace",
		"The Brass Gauntlet",
		"The Brass Hammer",
		"The Brass Helm",
		"The Bronze Anvil",
		"The Bronze Furnace",
		"The Bronze Gauntlet",
		"The Bronze Hammer",
		"The Bronze Helm",
		"The Copper Anvil",
		"The Copper Furnace",
		"The Copper Gauntlet",
		"The Copper Hammer",
		"The Copper Helm",
		"The Golden Anvil",
		"The Golden Furnace",
		"The Golden Gauntlet",
		"The Golden Hammer",
		"The Golden Helm",
		"The Silver Anvil",
		"The Silver Furnace",
		"The Silver Gauntlet",
		"The Silver Hammer",
		"The Silver Helm",
		"The Glittering Anvil",
		"The Glittering Furnace",
		"The Glittering Gauntlet",
		"The Glittering Hammer",
		"The Glittering Helm",
		"The Glittering Stone",
		"The Laughing Anvil",
		"The Laughing Furnace",
		"The Laughing Hammer",
		"The Laughing Stone"
	},
	Sounds = {
		"selected", "smithy-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
		"ready", "smithy-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-stables", {
	Name = _("Stables"),
	Parent = "unit-template-building",
	Class = "stables",
	Costs = {"time", 150, "copper", 1000, "lumber", 900},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 417, -- 500 with masonry
	TileSize = {3, 3}, BoxSize = {95, 95},
	Armor = 5, Missile = "missile-none",
	Priority = 15, AnnoyComputerFactor = 15,
	Points = 210,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	BuilderOutside = true,
	Drops = {"unit-wood-pile"},
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonPos = 6,
	ButtonKey = "e",
	ButtonHint = _("Build Stabl~!es"),
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "stables-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
		"ready", "stables-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-temple", {
	Name = _("Temple"),
	Parent = "unit-template-building",
	Class = "temple",
	Costs = {"time", 175, "copper", 900, "lumber", 1500},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 584, -- 700 with masonry
	TileSize = {3, 3}, BoxSize = {95, 95},
	Armor = 5, Missile = "missile-none",
	Priority = 15, AnnoyComputerFactor = 35,
	Points = 240,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	BuilderOutside = true,
	RightMouseAction = "rally-point",
	Drops = {"unit-wood-pile"},
	BurnPercent = 50,
	BurnDamageRate = 1,
	RegenerationAura = 1,
	ButtonPos = 7,
	ButtonKey = "p",
	ButtonHint = _("Build Tem~!ple"),
	UnitStock = {"unit-potion-of-healing", 6},
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	SoldUnits = {"unit-scroll"},
	AiDrops = {"unit-amulet", "unit-ring", "unit-scroll", "unit-book"},
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vicious", "upgrade-item-prefix-vulnerable", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-vulnerability"},
	DropSpells = {"spell-detachment", "spell-forgetfulness", "spell-retraining"},
	Sounds = {
		"selected", "temple-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
		"ready", "temple-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-watch-tower", {
	Name = _("Watch Tower"),
	Parent = "unit-template-building",
	Class = "watch-tower",
	Costs = {"time", 60, "copper", 550, "lumber", 300, "stone", 300},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1, "stone", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 167, -- 200 with masonry
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 9,
	Armor = 5, Missile = "missile-none",
	Priority = 55, AnnoyComputerFactor = 50,
	Points = 95,
	Corpse = "unit-destroyed-2x2-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	DetectCloak = true,
	MaxOnBoard = 1,
	CanTransport = {"LandUnit", "only", "organic", "only"},
	AttackFromTransporter = true,
	SaveCargo = true,
	BuilderOutside = true,
	Drops = {"unit-wood-pile", "unit-stone-pile"},
	RightMouseAction = "attack",
	CanAttack = true,
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonPos = 8,
	ButtonKey = "t",
	ButtonHint = _("Build Watch ~!Tower"),
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-the-colossus", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "tower-selected",
--		"acknowledge", "dwarven-sentry-tower-acknowledge",
		"ready", "tower-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-guard-tower", {
	Name = _("Guard Tower"),
	Parent = "unit-template-building",
	Class = "guard-tower",
	Costs = {"time", 140, "copper", 500, "lumber", 225, "stone", 225},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1, "stone", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 217, -- 260 with masonry
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 9,
	Armor = 5, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 40, AnnoyComputerFactor = 50,
	Points = 200,
	Corpse = "unit-destroyed-2x2-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	DetectCloak = true,
	MaxOnBoard = 2,
	CanTransport = {"LandUnit", "only", "organic", "only"},
	AttackFromTransporter = true,
	SaveCargo = true,
	Drops = {"unit-wood-pile", "unit-stone-pile"},
	RightMouseAction = "attack",
	CanAttack = true,
	BurnPercent = 50,
	BurnDamageRate = 1,
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-the-colossus", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "tower-selected",
--		"acknowledge", "dwarven-sentry-tower-acknowledge",
		"ready", "tower-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-dock", {
	Name = _("Dock"),
	Parent = "unit-template-building",
	Class = "dock",
	Costs = {"time", 200, "copper", 800, "lumber", 1350},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "construction-dock",
	Speed = 0,
	HitPoints = 917, -- 1100 with masonry
	TileSize = {3, 3}, BoxSize = {95, 95},
	Armor = 5, Missile = "missile-none",
	Priority = 30, AnnoyComputerFactor = 20,
	Points = 170,
--	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	BuilderOutside = true,
	ShoreBuilding = true,
--	Drops = {"unit-wood-pile"},
	RightMouseAction = "rally-point",
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonPos = 9,
	ButtonKey = "d",
	ButtonHint = _("Build ~!Dock"),
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
--		"selected", "lumber-mill-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
--		"ready", "storehouse-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

-- Load the different civilizations
Load("scripts/civilizations/celt/units.lua")
Load("scripts/civilizations/dwarf/units.lua")
Load("scripts/civilizations/elf/units.lua")
Load("scripts/civilizations/ettin/units.lua")
Load("scripts/civilizations/germanic/units.lua")
Load("scripts/civilizations/gnome/units.lua")
Load("scripts/civilizations/goblin/units.lua")
Load("scripts/civilizations/kobold/units.lua")
Load("scripts/civilizations/suebi/units.lua")
Load("scripts/civilizations/teuton/units.lua")
Load("scripts/civilizations/latin/units.lua")

-- Other civilizations' units

DefineUnitType("unit-orc-spearthrower", { Name = _("Spearthrower"),
	Parent = "unit-template-archer",
	Civilization = "orc",
--	Description = _("Amongst orcs, throwing spears are often regarded as a cowardly weapon; but even orcs, especially youths and those of slight build, are pragmatic enough to use them in spite of this. Orcish spearthrowers are seldom well equipped, and have no semblance of training. Even as poorly handled as they are, their weapons can still be quite deadly, and the wielders thereof rarely march alone."),
	Image = {"file", "dwarf/units/dwarven_scout.png", "size", {72, 72}},
	Animations = "animations-dwarven-scout", Icon = "icon-orc-spearthrower",
	Missile = "missile-javelin",
	WeaponClasses = {"javelin"},
	PierceDamage = true,
	Corpse = "unit-dwarven-dead-body",
	HiddenInEditor = true,
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"ready", "dwarven-scout-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead"
	}
} )

DefineUnitType("unit-orc-sea-orc", { Name = _("Sea Orc"),
	Parent = "unit-template-unit",
	Class = "marine-infantry",
	Civilization = "orc",
--	Description = _("While often viewed as inferior to their land-loving counterparts, sea orcs represent a great leap for all orcs as they have adapted to aquatic environments. These orcs use their ships to raid the coasts of the Eelhome Sea. With their curved swords they are competent warriors, although their poor fighting skills on land do represent a strategic weakness."),
--	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-orc-sea-orc",
	Costs = {"time", 60, "copper", 600},
	Speed = 10,
	HitPoints = 60,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	Armor = 2, BasicDamage = 9, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 60,
	Points = 50,
	Demand = 1,
--	Corpse = "unit-dwarven-dead-body",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	WeaponClasses = {"sword", "thrusting-sword"},
	HackDamage = true,
	HiddenInEditor = true,
	Sounds = {
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-orc-shaman", { Name = _("Shaman"),
	Parent = "unit-template-unit",
	Class = "priest",
	Civilization = "orc",
--	Description = _("Orc shamans are the guardians of orcish magic. Respected among orcish tribes, they form the Orcish Council, which makes important decisions for the whole orcish community and arbitrates the many conflicts that arise between tribes of this argumentative race."),
--	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-orc-shaman",
	Costs = {"time", 60, "copper", 600},
	Speed = 10,
	HitPoints = 60,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	Armor = 2, BasicDamage = 9, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 60,
	Points = 50,
	Demand = 1,
--	Corpse = "unit-dwarven-dead-body",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	BluntDamage = true,
	HiddenInEditor = true
} )

DefineUnitType("unit-water-elemental", { Name = _("Water Elemental"),
	Parent = "unit-template-unit",
--	Description = _("These creatures inhabit the warmer parts of the world of Niflheim. Although in many respects they act like a living being, they seem to be nearly entirely made out of water, putting in doubt just what they really are."),
--	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-water-elemental",
	Costs = {"time", 70, "copper", 500, "lumber", 150},
	Speed = 8,
	HitPoints = 60,
	TileSize = {1, 1}, BoxSize = {36, 36},
	SightRange = 3,
	BasicDamage = 12, Missile = "missile-none",
	MaxAttackRange = 3,
	Priority = 63,
	Points = 100,
	Demand = 1,
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	HiddenInEditor = true,
	Sounds = {
		"dead", "squishy-hit",
		"hit", "squishy-attack",
		"miss", "squishy-miss"
	}
} )

DefineUnitType("unit-long-swordsman", { Name = _("Long Swordsman"),
	Parent = "unit-template-unit",
	Image = {"file", "neutral/units/long_swordsman.png", "size", {72, 72}},
	Animations = "animations-static-npc", Icon = "icon-long-swordsman",
	Costs = {"time", 60, "copper", 600},
	Speed = 10,
	HitPoints = 60,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	Armor = 2, BasicDamage = 9, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 60,
	Points = 50,
	Demand = 1,
	Corpse = "unit-human-dead-body",
	Type = "land",
--	RightMouseAction = "attack",
	CanAttack = false, -- since it doesn't have attack animations as of now
--	CanTargetLand = true,
	Indestructible = true, -- because it doesn't have death animations
	WeaponClasses = {"sword"},
	HackDamage = true,
	NumDirections = 1,
	HiddenInEditor = true,
	Sounds = {
		"selected", "click",
		"dead", "basic-human-voices-dead"}
} )

-- define the mercenary camp after the rest because it refers to unit types of the civilizations
DefineUnitType("unit-mercenary-camp", {
	Name = _("Mercenary Camp"),
	Parent = "unit-template-building",
	Class = "mercenary-camp",
	Description = _("This camp houses a number of mercenary groups, who offer their talents for hire."),
	Image = {"file", "neutral/buildings/mercenary_camp.png", "size", {96, 99}},
	Shadow = {"file", "neutral/buildings/mercenary_camp_shadow.png", "size", {96, 99}},
	NeutralMinimapColor = {192, 192, 192},
	Animations = "animations-mercenary-camp", Icon = "icon-mercenary-camp",
	Costs = {"time", 200, "copper", 700, "lumber", 1350},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 800,
	TileSize = {3, 3}, BoxSize = {95, 95},
	Armor = 20, Missile = "missile-none",
	Priority = 30, AnnoyComputerFactor = 35,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Drops = {"unit-wood-pile"},
	RightMouseAction = "rally-point",
	BurnPercent = 50,
	BurnDamageRate = 1,
	RecruitHeroes = true,
	Trains = {"unit-goblin-thief", "unit-kobold-footpad"},
	UnitStock = {"unit-goblin-thief", 6, "unit-kobold-footpad", 4},
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "click",
--		"acknowledge", "barracks-acknowledge",
--		"ready", "barracks-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )


DefineUnitType("unit-dungeon-wall", {
	Name = "Dungeon Wall",
	TerrainType = "dungeon-wall",
	Image = {"file", "neutral/buildings/glyph.png", "size", {32, 32}},
	Animations = "animations-building", Icon = "icon-teuton-lumber-mill",
	Costs = {"time", 30, "copper", 20, "lumber", 30},
	Construction = "construction-wall",
	Speed = 0,
	HitPoints = 40,
	DrawLevel = 39,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0, AnnoyComputerFactor = 45,
	Points = 1,
--	Corpse = "unit-destroyed-1x1-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Indestructible = true, Building = true, VisibleUnderFog = true, Wall = true,
	HiddenInEditor = true,
	Sounds = {
		"dead", "building-destroyed"
	}
} )
