
LoadFactions("Nidavellir")

LoadProvinces("Nidavellir")

-- generate procedural provinces
GenerateProvince({
	Province = WorldMapProvinces.Aurvang,
	BorderProvinces = {"Svarinshaug"},
	BorderProvinceSouth = true,
	Resources = {
		lumber = 3,
		mushrooms = 1
	}
})
GenerateProvince({
	Province = WorldMapProvinces.Joruvellir,
	BorderProvinces = {"Aurvang"},
	BorderProvinceSouth = true,
	Resources = {
		gold = 1,
		lumber = 1,
		mushrooms = 2,
		stone = 2
	}
})
GenerateProvince({
	Province = WorldMapWaterProvinces.DeepSea,
	BorderProvinces = {"Kal Kartha", "Lyr"},
	BorderProvinceEast = true,
	Water = true,
	MaximumSize = 300
})

-- generate resources for provinces
--AddProvinceResource(WorldMapProvinces.BrownHills, "gold", 1)
AddProvinceResource(WorldMapProvinces.BrownHills, "mushrooms", 2)
AddProvinceResource(WorldMapProvinces.BrownHills, "stone", 1)
AddProvinceResource(WorldMapProvinces.CavernsOfChaincolt, "mushrooms", 3)
AddProvinceResource(WorldMapProvinces.CavernsOfChaincolt, "stone", 1)
AddProvinceResource(WorldMapProvinces.CavernsOfFlame, "mushrooms", 1)
AddProvinceResource(WorldMapProvinces.EasternMines, "mushrooms", 1)
AddProvinceResource(WorldMapProvinces.Heartfangs, "mushrooms", 1)
AddProvinceResource(WorldMapProvinces.Heartfangs, "stone", 3)
AddProvinceResource(WorldMapProvinces.HighPass, "mushrooms", 1)
AddProvinceResource(WorldMapProvinces.HighPass, "stone", 1)
AddProvinceResource(WorldMapProvinces.HighbrookPass, "mushrooms", 2)
AddProvinceResource(WorldMapProvinces.HighbrookPass, "stone", 1)
AddProvinceResource(WorldMapProvinces.KalKartha, "mushrooms", 4)
AddProvinceResource(WorldMapProvinces.KalKartha, "stone", 1)
AddProvinceResource(WorldMapProvinces.Lyr, "mushrooms", 3)
AddProvinceResource(WorldMapProvinces.Lyr, "stone", 1)
AddProvinceResource(WorldMapProvinces.NorthernWastelands, "mushrooms", 1)
AddProvinceResource(WorldMapProvinces.NorthernWastelands, "stone", 1)
AddProvinceResource(WorldMapProvinces.PeacefulValley, "mushrooms", 1)
AddProvinceResource(WorldMapProvinces.ShorbearHills, "mushrooms", 2)
AddProvinceResource(WorldMapProvinces.ShorbearHills, "stone", 1)
AddProvinceResource(WorldMapProvinces.SouthernTunnels, "mushrooms", 2)
AddProvinceResource(WorldMapProvinces.SouthernTunnels, "stone", 1)
--AddProvinceResource(WorldMapProvinces.Svarinshaug, "gold", 1)
AddProvinceResource(WorldMapProvinces.Svarinshaug, "mushrooms", 2)
AddProvinceResource(WorldMapProvinces.Svarinshaug, "stone", 1)

MercenaryGroups = {
	unit_surghan_mercenary_steelclad = 4
}

LoadEvents("Nidavellir")

if (GrandStrategyYear >= -3000) then
	SetProvinceHero("Svarinshaug", "Modsognir", "unit-dwarven-steelclad", 2) 
	SetFactionRuler("dwarf", "Modsogning Clan", "Modsognir")
	SetProvinceHero("Svarinshaug", "Durin", "unit-dwarven-steelclad", 2)
	SetProvinceUnitQuantity("Svarinshaug", "unit-dwarven-miner", 4)
	
	-- give plow technology to the dwarven factions
	SetFactionTechnology("dwarf", "Modsogning Clan", "upgrade-dwarven-wood-plow", true)
	SetFactionTechnology("dwarf", "Norlund Clan", "upgrade-dwarven-wood-plow", true)
	SetFactionTechnology("dwarf", "Shinsplitter Clan", "upgrade-dwarven-wood-plow", true)
	SetFactionTechnology("dwarf", "Shorbear Clan", "upgrade-dwarven-wood-plow", true)
	SetFactionTechnology("dwarf", "Knalga", "upgrade-dwarven-wood-plow", true)
	SetFactionTechnology("dwarf", "Joruvellir", "upgrade-dwarven-wood-plow", true)
	SetFactionTechnology("dwarf", "Kal Kartha", "upgrade-dwarven-wood-plow", true)
	SetFactionTechnology("dwarf", "Lyr", "upgrade-dwarven-wood-plow", true)
end

if (GrandStrategyYear >= -2970) then -- estimated date
	GrandStrategyEvents.ARockyHome = nil -- should be placed at an earlier date
	GrandStrategyEvents.TheMeadOfWisdom = nil -- should be placed at an earlier date
	GrandStrategyEvents.TheTreasuresOfSvarinshaug = nil -- should be placed at an earlier date

	GrandStrategyEvents.TheNecklaceOfTheBrisings = nil -- should be placed at an earlier date
	SetProvinceUnitQuantity("Aurvang", "unit-dwarven-steelclad", 0) -- bandits rooted out
	SetProvinceUnitQuantity("Aurvang", "unit-dwarven-axefighter", 0)
	SetProvinceUnitQuantity("Aurvang", "unit-goblin-spearman", 6) -- place some goblins in Aurvang after the dwarven bandits are gone
	SetProvinceUnitQuantity("Aurvang", "unit-goblin-archer", 3)
		
	GrandStrategyEvents.TheBindingOfGrafvitnir = nil -- should be placed at an earlier date
	SetProvinceHero("Svarinshaug", "Modsognir", "unit-dwarven-steelclad", 0)
	SetProvinceHero("Svarinshaug", "Durin", "unit-dwarven-steelclad", 0)
end

if (GrandStrategyYear >= -1) then
	GrandStrategyEvents.TheNorlundClan = nil
	GrandStrategyEvents.TheShinsplitterClan = nil
	GrandStrategyEvents.TheShorbearClan = nil
	SetProvinceOwner("Caverns of Chaincolt", "dwarf", "Norlund Clan")
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-miner", 4)
	SetProvinceSettlementBuilding("Caverns of Chaincolt", "unit-dwarven-town-hall", true)
	SetProvinceSettlementBuilding("Caverns of Chaincolt", "unit-dwarven-barracks", true) -- has capability to train warriors
	SetProvinceSettlementBuilding("Caverns of Chaincolt", "unit-dwarven-smithy", true) -- Durstorn has runesmiths under his employ
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-goblin-spearman", 0)
--	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-steelclad", 4) -- Neglur, Glinar, Kuhnar, Theganli
--	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-scout", 1) -- Noiraran
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-axefighter", 4) -- 4 Dwarven Guardsmen (5 if easy mode)
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-steelclad", 2) -- Neglur, Glinar
	SetWorldMapResourceProspected("gold", 30, 12, true)
	SetProvinceOwner("Shorbear Hills", "dwarf", "Shorbear Clan")
	SetProvinceSettlementBuilding("Shorbear Hills", "unit-dwarven-town-hall", true)
	SetProvinceSettlementBuilding("Shorbear Hills", "unit-dwarven-stronghold", true) -- Shorbear Hold
	SetProvinceSettlementBuilding("Shorbear Hills", "unit-dwarven-barracks", true) -- has capability to train warriors
	SetProvinceSettlementBuilding("Shorbear Hills", "unit-dwarven-smithy", true) -- renowned skilled crafters
	SetProvinceUnitQuantity("Shorbear Hills", "unit-goblin-spearman", 0)
	SetProvinceUnitQuantity("Shorbear Hills", "unit-dwarven-thane", 1) -- Glonoin
	SetFactionRuler("dwarf", "Shorbear Clan", "Glonoin")
	SetProvinceUnitQuantity("Shorbear Hills", "unit-dwarven-miner", 4)
	SetWorldMapResourceProspected("gold", 34, 14, true)
	SetProvinceOwner("Southern Tunnels", "dwarf", "Shinsplitter Clan")
	SetProvinceSettlementBuilding("Southern Tunnels", "unit-dwarven-town-hall", true)
	SetProvinceSettlementBuilding("Southern Tunnels", "unit-dwarven-barracks", true) -- has capability to train warriors
	SetProvinceUnitQuantity("Southern Tunnels", "unit-goblin-spearman", 0)
	SetProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-steelclad", 3) -- Glildur, Glindur, Kalnar
	SetProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-thane", 5) -- Lyndar, Gaenlar, Glinan, Crintil, Aendan
	SetProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-miner", 4)
	SetWorldMapResourceProspected("gold", 32, 13, true)

	-- bronze age technologies had already been obtained by the dwarves by this point
	SetFactionTechnology("dwarf", "Modsogning Clan", "upgrade-dwarven-broad-axe", true)
	SetFactionTechnology("dwarf", "Modsogning Clan", "upgrade-dwarven-shield-1", true)
	SetFactionTechnology("dwarf", "Modsogning Clan", "upgrade-dwarven-throwing-axe-1", true)
	SetFactionTechnology("dwarf", "Norlund Clan", "upgrade-dwarven-broad-axe", true)
	SetFactionTechnology("dwarf", "Norlund Clan", "upgrade-dwarven-shield-1", true)
	SetFactionTechnology("dwarf", "Norlund Clan", "upgrade-dwarven-throwing-axe-1", true)
	SetFactionTechnology("dwarf", "Shinsplitter Clan", "upgrade-dwarven-broad-axe", true)
	SetFactionTechnology("dwarf", "Shinsplitter Clan", "upgrade-dwarven-shield-1", true)
	SetFactionTechnology("dwarf", "Shinsplitter Clan", "upgrade-dwarven-throwing-axe-1", true)
	SetFactionTechnology("dwarf", "Shorbear Clan", "upgrade-dwarven-broad-axe", true)
	SetFactionTechnology("dwarf", "Shorbear Clan", "upgrade-dwarven-shield-1", true)
	SetFactionTechnology("dwarf", "Shorbear Clan", "upgrade-dwarven-throwing-axe-1", true)
	SetFactionTechnology("dwarf", "Joruvellir", "upgrade-dwarven-broad-axe", true)
	SetFactionTechnology("dwarf", "Joruvellir", "upgrade-dwarven-shield-1", true)
	SetFactionTechnology("dwarf", "Joruvellir", "upgrade-dwarven-throwing-axe-1", true)
	SetFactionTechnology("dwarf", "Knalga", "upgrade-dwarven-broad-axe", true)
	SetFactionTechnology("dwarf", "Knalga", "upgrade-dwarven-shield-1", true)
	SetFactionTechnology("dwarf", "Knalga", "upgrade-dwarven-throwing-axe-1", true)
	SetFactionTechnology("dwarf", "Kal Kartha", "upgrade-dwarven-broad-axe", true)
	SetFactionTechnology("dwarf", "Kal Kartha", "upgrade-dwarven-shield-1", true)
	SetFactionTechnology("dwarf", "Kal Kartha", "upgrade-dwarven-throwing-axe-1", true)
	SetFactionTechnology("dwarf", "Lyr", "upgrade-dwarven-broad-axe", true)
	SetFactionTechnology("dwarf", "Lyr", "upgrade-dwarven-shield-1", true)
	SetFactionTechnology("dwarf", "Lyr", "upgrade-dwarven-throwing-axe-1", true)
	
	SetProvinceHero("Caverns of Chaincolt", "Durstorn", "unit-dwarven-thane", 2) -- Durstorn was already present when the conflict with Pypo over the Brown Hills happened
	SetFactionRuler("dwarf", "Norlund Clan", "Durstorn")
	SetProvinceHero("Caverns of Chaincolt", "Baglur", "unit-dwarven-steelclad", 2) -- Baglur was already present when the conflict with Pypo over the Brown Hills happened
	SetProvinceHero("Caverns of Chaincolt", "Thursagan", "unit-dwarven-thane", 2) -- Thursagan could be in the Caverns of Chaincolt at this time
	
	SetFactionRuler("gnome", "Untersberg", "Pypo")
end

if (GrandStrategyYear >= 25) then -- at this time Rugnur was already in charge of the outpost in the Chaincolt Foothills, Baglur was at the Caverns of Chaincolt gate, Thursagan was living in the Northern Wastelands and Durstorn was the chief of the Norlund clan
	SetProvinceHero("Caverns of Chaincolt", "Rugnur", "unit-dwarven-axefighter", 2)
	SetProvinceHero("Northern Wastelands", "Thursagan", "unit-dwarven-thane", 2) -- by this point, Thursagan had gone away to the north
	GrandStrategyEvents.TheSagesDeparture = nil

	SetProvinceSettlementBuilding("Caverns of Chaincolt", "unit-dwarven-lumber-mill", true) -- had capability to train scouts by then
	SetProvinceSettlementBuilding("Southern Tunnels", "unit-dwarven-lumber-mill", true) -- had capability to train scouts by then

	-- dwarves already had castles built of stone masonry by then
	SetFactionTechnology("dwarf", "Modsogning Clan", "upgrade-dwarven-masonry", true)
	SetFactionTechnology("dwarf", "Norlund Clan", "upgrade-dwarven-masonry", true)
	SetFactionTechnology("dwarf", "Shinsplitter Clan", "upgrade-dwarven-masonry", true)
	SetFactionTechnology("dwarf", "Shorbear Clan", "upgrade-dwarven-masonry", true)
	SetFactionTechnology("dwarf", "Joruvellir", "upgrade-dwarven-masonry", true)
	SetFactionTechnology("dwarf", "Knalga", "upgrade-dwarven-masonry", true)
	SetFactionTechnology("dwarf", "Kal Kartha", "upgrade-dwarven-masonry", true)
	SetFactionTechnology("dwarf", "Lyr", "upgrade-dwarven-masonry", true)
end

if (GrandStrategyYear > 25) then
	GrandStrategyEvents.StrikeABargain = nil
	GrandStrategyEvents.ABargainIsStruckShinsplitterClan = nil
	GrandStrategyEvents.ClosingTheGates = nil
	GrandStrategyEvents.ClosingTheGatesShinsplitterClan = nil
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-recruit", 1)
	SetFactionDiplomacyState("dwarf", "Norlund Clan", "dwarf", "Shinsplitter Clan", "war")
	ChangeFactionResource("gnome", "Untersberg", "gold", -2500) -- decrease gnomish treasury by 5000 silver (considering for our purposes silver to be worth half as much as gold)
	ChangeFactionResource("dwarf", "Norlund Clan", "gold", 2500) -- 5000 silver, and for our purposes silver is considered to be worth half of what gold is
	ChangeProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-steelclad", -1)
end

if (GrandStrategyYear >= 27) then -- time it took for Rugnur's party to travel to the Northern Wastelands and come back
	GrandStrategyEvents.SearchingForTheRunecrafter = nil
	SetProvinceHero("Caverns of Chaincolt", "Thursagan", "unit-dwarven-thane", 2)
	SetProvinceSettlementBuilding("Northern Wastelands", "unit-dwarven-smithy", false) -- Thursagan abandoned his smithy in the Northern Wastelands to follow Rugnur is his quest to craft the Scepter of Fire
--	ChangeProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-steelclad", 2) -- Thursagan joined and brought Kinan and Rynan, two runecrafters-in-training
	SetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-spearman", GetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-spearman") / 2) -- halve enemies in the northern wastelands (deaths due to combat with Rugnur's dwarves)
	SetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-archer", GetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-archer") / 2)
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-gryphon-rider", 2) -- two gryphon riders joined from the travel to the Northern Wastelands
end

if (GrandStrategyYear >= 29) then
	GrandStrategyEvents.GatheringMaterials = nil
	ChangeFactionResource("dwarf", "Norlund Clan", "coal", 20000) -- Rugnur's party returned from the Eastern Mines in 29 AD
--	SetProvinceUnitQuantity("Eastern Mines", "unit-goblin-spearman", GetProvinceUnitQuantity("Eastern Mines", "unit-goblin-spearman") / 2)
	SetProvinceUnitQuantity("Eastern Mines", "unit-goblin-spearman", 12) -- to prevent the Norlunds expanding here too soon
	SetProvinceUnitQuantity("Eastern Mines", "unit-goblin-archer", 4)
	SetWorldMapResourceProspected("gold", 39, 6, true) -- Rugnur and his companions found the location of the gold mines in the Eastern Mines

	--[[
	SetProvinceOwner("Shorbear Hills", "dwarf", "Norlund Clan") -- Shorbear Hold conquered in 29 AD by Rugnur's and Durstorn's Clan (Norlund Clan)
	SetProvinceHero("Shorbear Hills", "Rugnur", "unit-dwarven-axefighter", 2)
	SetProvinceHero("Shorbear Hills", "Baglur", "unit-dwarven-steelclad", 2)
	SetProvinceHero("Shorbear Hills", "Durstorn", "unit-dwarven-thane", 2)
	SetProvinceHero("Shorbear Hills", "Thursagan", "unit-dwarven-thane", 2)
	--]]
	KillGrandStrategyHero("Glonoin")

	SetProvinceSettlementBuilding("Shorbear Hills", "unit-dwarven-lumber-mill", true) -- had capability to train scouts by then
end

if (GrandStrategyYear >= 35) then
	GrandStrategyEvents.HillsOfTheShorbearClan = nil
	GrandStrategyEvents.HillsOfTheShorbearClanShinsplitterClan = nil
	GrandStrategyEvents.HillsOfTheShorbearClanShorbearClan = nil
	SetProvinceOwner("Shorbear Hills", "dwarf", "Shinsplitter Clan") -- Shorbear Hold abandoned in 35 AD by Rugnur's and Durstorn's Clan (Norlund Clan), while the Shinsplitter forces were sieging them
	SetProvinceUnitQuantity("Shorbear Hills", "unit-dwarven-axefighter", 0)
	SetProvinceUnitQuantity("Shorbear Hills", "unit-dwarven-thane", 0)
	--[[
	SetProvinceHero("Caverns of Flame", "Rugnur", "unit-dwarven-axefighter", 2)
	SetProvinceHero("Caverns of Flame", "Baglur", "unit-dwarven-steelclad", 2)
	SetProvinceHero("Caverns of Flame", "Thursagan", "unit-dwarven-thane", 2)
	--]]
	SetProvinceHero("Shorbear Hills", "Durstorn", "unit-dwarven-thane", 0) -- Durstorn is killed in a conflict between him and other members of the clan
	SetProvinceSettlementBuilding("Southern Tunnels", "unit-mercenary-camp", true) -- at some point between 35 and 40 AD the Shinsplitters had the capacity to recruit mercenaries, as shown by them having hired the Surghan Mercenaries
	MercenaryGroups.unit_surghan_mercenary_steelclad = nil
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-recruit", 0) -- gnomish recruit returns to Untersberg
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-gryphon-rider", 0) -- gryphon riders return to the Northern Wastelands
end

if (GrandStrategyYear >= 40) then
	SetProvinceHero("Caverns of Chaincolt", "Rugnur", "unit-dwarven-axefighter", 0) -- Rugnur, Baglur and Thursagan die at the Caverns of Flame
	SetProvinceHero("Caverns of Chaincolt", "Baglur", "unit-dwarven-steelclad", 0)
	SetProvinceHero("Caverns of Chaincolt", "Thursagan", "unit-dwarven-thane", 0)
	ChangeFactionResource("dwarf", "Norlund Clan", "coal", -20000) -- Scepter of Fire crafted
	ChangeFactionResource("dwarf", "Norlund Clan", "gold", 2500) -- payment for the crafting of the Scepter
	ChangeFactionResource("gnome", "Untersberg", "gold", -2500) -- payment for the crafting of the Scepter
	SetProvinceOwner("Shorbear Hills", "dwarf", "Norlund Clan") -- Shorbear Hold ceded by the Shinsplitters to the Norlunds and peace established
	SetFactionDiplomacyState("dwarf", "Norlund Clan", "dwarf", "Shinsplitter Clan", "peace")
end

if (GrandStrategyYear >= 389) then
	SetProvinceOwner("Peaceful Valley", "", "") -- Lggi Tribe destroyed
	SetProvinceCivilization("Peaceful Valley", "")
	SetProvinceUnitQuantity("Peaceful Valley", "unit-goblin-spearman", 0)
	SetProvinceSettlementBuilding("Peaceful Valley", "unit-goblin-town-hall", false)
	SetProvinceSettlementBuilding("Peaceful Valley", "unit-goblin-barracks", false)
end

if (GrandStrategyYear >= 400) then
	SetProvinceOwner("Caverns of Chaincolt", "dwarf", "Knalga") -- The Lordship of Knalga was founded around 400 AD
	SetProvinceOwner("Southern Tunnels", "dwarf", "Knalga")
	SetProvinceOwner("Shorbear Hills", "dwarf", "Knalga")
	SetFactionTechnology("dwarf", "Knalga", "upgrade-dwarven-runewriting", true) -- polities require writing

	SetProvinceOwner("Kal Kartha", "dwarf", "Kal Kartha") -- The Lordship of Kal Kartha was founded around 400 AD
	SetProvinceSettlementBuilding("Kal Kartha", "unit-dwarven-town-hall", true)
	SetProvinceSettlementBuilding("Kal Kartha", "unit-dwarven-barracks", true)
	SetProvinceUnitQuantity("Kal Kartha", "unit-gnomish-recruit", 0)
	SetWorldMapResourceProspected("gold", 46, 5, true)
	SetProvinceUnitQuantity("Kal Kartha", "unit-dwarven-miner", 4)
	SetFactionTechnology("dwarf", "Kal Kartha", "upgrade-dwarven-runewriting", true) -- polities require writing

	SetProvinceOwner("Lyr", "dwarf", "Lyr") -- The Lordship of Lyr was founded around the same time as the other lordships
	SetProvinceSettlementBuilding("Lyr", "unit-dwarven-town-hall", true)
	SetProvinceSettlementBuilding("Lyr", "unit-dwarven-barracks", true)
	SetProvinceUnitQuantity("Lyr", "unit-dwarven-axefighter", 0)
	SetWorldMapResourceProspected("gold", 51, 15, true)
	SetProvinceUnitQuantity("Lyr", "unit-dwarven-miner", 4)
	SetFactionTechnology("dwarf", "Lyr", "upgrade-dwarven-runewriting", true) -- polities require writing
	
	SetProvinceOwner("Joruvellir", "dwarf", "Joruvellir") -- The Lordship of Joruvellir may have been founded at the same time as the other lordships
	SetFactionTechnology("dwarf", "Joruvellir", "upgrade-dwarven-runewriting", true) -- polities require writing
	SetProvinceSettlementBuilding("Joruvellir", "unit-dwarven-town-hall", true)
	SetProvinceUnitQuantity("Joruvellir", "unit-goblin-spearman", 0)
	SetProvinceUnitQuantity("Joruvellir", "unit-goblin-archer", 0)

	-- The Dwarves should already have Coinage technology by then
	SetFactionTechnology("dwarf", "Modsogning Clan", "upgrade-dwarven-coinage", true)
	SetFactionTechnology("dwarf", "Norlund Clan", "upgrade-dwarven-coinage", true)
	SetFactionTechnology("dwarf", "Shinsplitter Clan", "upgrade-dwarven-coinage", true)
	SetFactionTechnology("dwarf", "Shorbear Clan", "upgrade-dwarven-coinage", true)
	SetFactionTechnology("dwarf", "Joruvellir", "upgrade-dwarven-coinage", true)
	SetFactionTechnology("dwarf", "Knalga", "upgrade-dwarven-coinage", true)
	SetFactionTechnology("dwarf", "Kal Kartha", "upgrade-dwarven-coinage", true)
	SetFactionTechnology("dwarf", "Lyr", "upgrade-dwarven-coinage", true)
end

if (GrandStrategyYear >= 500) then
	SetProvinceOwner("Highbrook Pass", "dwarf", "Shinsplitter Clan") -- The Shinsplitter clan took over the Highbrook Pass around this time
	SetProvinceSettlementBuilding("Highbrook Pass", "unit-dwarven-town-hall", true)
	SetProvinceUnitQuantity("Highbrook Pass", "unit-goblin-spearman", 0)
	SetProvinceUnitQuantity("Highbrook Pass", "unit-goblin-archer", 0)
	SetProvinceUnitQuantity("Highbrook Pass", "unit-dwarven-axefighter", 6) -- six dwarven ulfserkers
	SetProvinceUnitQuantity("Highbrook Pass", "unit-dwarven-thane", 1) -- Stalrag
	SetWorldMapResourceProspected("gold", 35, 10, true)
end

if (GrandStrategyYear >= 534) then
	SetProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-steelclad", 4) -- 4 Dwarven Stalwarts
	SetProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-thane", 1) -- Hamel

	-- Mushroom Farms existent in Knalga
	SetFactionTechnology("dwarf", "Knalga", "upgrade-dwarven-iron-tipped-wood-plow", true)
	
	-- let's set plow upgrades for the other dwarven polities now too
	SetFactionTechnology("dwarf", "Joruvellir", "upgrade-dwarven-iron-tipped-wood-plow", true)
	SetFactionTechnology("dwarf", "Kal Kartha", "upgrade-dwarven-iron-tipped-wood-plow", true)
	SetFactionTechnology("dwarf", "Lyr", "upgrade-dwarven-iron-tipped-wood-plow", true)
end

if (GrandStrategyYear >= 535) then
	SetProvinceSettlementBuilding("Highbrook Pass", "unit-dwarven-barracks", true) -- the Shinsplitters were already capable of recruiting warriors in Highbrook Pass around this time
end

if (GrandStrategyYear >= 550) then
	SetProvinceSettlementBuilding("Kal Kartha", "unit-dwarven-smithy", true) -- Karrag was already reviving the art of runesmithing in 550 AD

	SetProvinceUnitQuantity("Kal Kartha", "unit-dwarven-axefighter", 2) -- 2 Masked Ulfserkers in Karrag's court
	SetProvinceUnitQuantity("Kal Kartha", "unit-dwarven-steelclad", 3) -- Dulcatulos, 2 Masked Steelclads in Karrag's court
	SetProvinceUnitQuantity("Kal Kartha", "unit-dwarven-thane", 4) -- Karrag
	
	-- late iron age technologies already obtained by the dwarves by this point
	SetFactionTechnology("dwarf", "Modsogning Clan", "upgrade-dwarven-great-axe", true)
	SetFactionTechnology("dwarf", "Modsogning Clan", "upgrade-dwarven-shield-2", true)
	SetFactionTechnology("dwarf", "Modsogning Clan", "upgrade-dwarven-throwing-axe-2", true)
	SetFactionTechnology("dwarf", "Modsogning Clan", "upgrade-dwarven-ballista-bolt-1", true)
	SetFactionTechnology("dwarf", "Norlund Clan", "upgrade-dwarven-great-axe", true)
	SetFactionTechnology("dwarf", "Norlund Clan", "upgrade-dwarven-shield-2", true)
	SetFactionTechnology("dwarf", "Norlund Clan", "upgrade-dwarven-throwing-axe-2", true)
	SetFactionTechnology("dwarf", "Norlund Clan", "upgrade-dwarven-ballista-bolt-1", true)
	SetFactionTechnology("dwarf", "Shinsplitter Clan", "upgrade-dwarven-great-axe", true)
	SetFactionTechnology("dwarf", "Shinsplitter Clan", "upgrade-dwarven-shield-2", true)
	SetFactionTechnology("dwarf", "Shinsplitter Clan", "upgrade-dwarven-throwing-axe-2", true)
	SetFactionTechnology("dwarf", "Shinsplitter Clan", "upgrade-dwarven-ballista-bolt-1", true)
	SetFactionTechnology("dwarf", "Shorbear Clan", "upgrade-dwarven-great-axe", true)
	SetFactionTechnology("dwarf", "Shorbear Clan", "upgrade-dwarven-shield-2", true)
	SetFactionTechnology("dwarf", "Shorbear Clan", "upgrade-dwarven-throwing-axe-2", true)
	SetFactionTechnology("dwarf", "Shorbear Clan", "upgrade-dwarven-ballista-bolt-1", true)
	SetFactionTechnology("dwarf", "Joruvellir", "upgrade-dwarven-great-axe", true)
	SetFactionTechnology("dwarf", "Joruvellir", "upgrade-dwarven-shield-2", true)
	SetFactionTechnology("dwarf", "Joruvellir", "upgrade-dwarven-throwing-axe-2", true)
	SetFactionTechnology("dwarf", "Joruvellir", "upgrade-dwarven-ballista-bolt-1", true)
	SetFactionTechnology("dwarf", "Kal Kartha", "upgrade-dwarven-great-axe", true)
	SetFactionTechnology("dwarf", "Kal Kartha", "upgrade-dwarven-shield-2", true)
	SetFactionTechnology("dwarf", "Kal Kartha", "upgrade-dwarven-throwing-axe-2", true)
	SetFactionTechnology("dwarf", "Kal Kartha", "upgrade-dwarven-ballista-bolt-1", true)
	SetFactionTechnology("dwarf", "Knalga", "upgrade-dwarven-great-axe", true)
	SetFactionTechnology("dwarf", "Knalga", "upgrade-dwarven-shield-2", true)
	SetFactionTechnology("dwarf", "Knalga", "upgrade-dwarven-throwing-axe-2", true)
	SetFactionTechnology("dwarf", "Knalga", "upgrade-dwarven-ballista-bolt-1", true)
	SetFactionTechnology("dwarf", "Lyr", "upgrade-dwarven-great-axe", true)
	SetFactionTechnology("dwarf", "Lyr", "upgrade-dwarven-shield-2", true)
	SetFactionTechnology("dwarf", "Lyr", "upgrade-dwarven-throwing-axe-2", true)
	SetFactionTechnology("dwarf", "Lyr", "upgrade-dwarven-ballista-bolt-1", true)
end