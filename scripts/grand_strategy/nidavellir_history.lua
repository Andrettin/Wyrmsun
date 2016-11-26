
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

GenerateProvince({
	Province = WorldMapProvinces.Stilgar,
	BorderProvinces = {"Peaceful Valley", "Deep Sea"},
	Resources = {
		gold = SyncRand(2),
		silver = SyncRand(2),
		copper = SyncRand(2),
		lumber = SyncRand(3),
		stone = SyncRand(3),
		mushrooms = SyncRand(3) + 1
	}
})

GenerateProvince({
	Province = WorldMapProvinces.Myridia,
	BorderProvinces = {"Stilgar", "Deep Sea"},
	Resources = {
		gold = SyncRand(2),
		silver = SyncRand(2),
		copper = SyncRand(2),
		lumber = SyncRand(3),
		stone = SyncRand(3),
		mushrooms = SyncRand(3) + 1
	}
})

GenerateProvince({
	Province = WorldMapProvinces.Tenebris,
	BorderProvinces = {"Myridia", "Deep Sea"},
	Resources = {
		gold = SyncRand(2),
		silver = SyncRand(2),
		copper = SyncRand(2),
		lumber = SyncRand(3),
		stone = SyncRand(3),
		mushrooms = SyncRand(3) + 1
	}
})

GenerateProvince({
	Province = WorldMapProvinces.Ezmarria,
	BorderProvinces = {"Tenebris", "Deep Sea"},
	Resources = {
		gold = SyncRand(2),
		silver = SyncRand(2),
		copper = SyncRand(2),
		lumber = SyncRand(3),
		stone = SyncRand(3),
		mushrooms = SyncRand(3) + 1
	}
})

GenerateProvince({
	Province = WorldMapProvinces.Untersberg,
	BorderProvinces = {"Brown Hills"},
	Resources = {
		gold = 2,
		lumber = 1,
		stone = 1,
		mushrooms = 4
	}
})

GenerateProvince({
	Province = WorldMapProvinces.Acthna,
	BorderProvinces = {"Untersberg"},
	Resources = {
		silver = 2,
		stone = 1,
		mushrooms = 3
	}
})


GenerateProvince({
	Province = WorldMapProvinces.Duurdin,
	BorderProvinces = {"Acthna"},
	Resources = {
		lumber = 1,
		gold = 1,
		stone = 1,
		mushrooms = 3
	}
})

-- generate resources for provinces
--AddProvinceResource(WorldMapProvinces.BrownHills, "gold", 1)
AddProvinceResource(WorldMapProvinces.BrownHills, "mushrooms", 2)
AddProvinceResource(WorldMapProvinces.BrownHills, "stone", 1)
AddProvinceResource(WorldMapProvinces.CavernsofChaincolt, "mushrooms", 3)
AddProvinceResource(WorldMapProvinces.CavernsofChaincolt, "stone", 1)
AddProvinceResource(WorldMapProvinces.CavernsofFlame, "mushrooms", 1)
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
AddProvinceResource(WorldMapProvinces.Svarinshaug, "lumber", 1)
AddProvinceResource(WorldMapProvinces.Svarinshaug, "stone", 1)

MercenaryGroups = {
	unit_surghan_mercenary_steelclad = 4
}

LoadEvents("Nidavellir")

if (GrandStrategyYear >= -3000) then
	SetProvinceHero("Svarinshaug", "Modsognir", 2) 
	SetProvinceHero("Svarinshaug", "Durin", 2)
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
	SetProvinceHero("Svarinshaug", "Modsognir", 0)
	SetProvinceHero("Svarinshaug", "Durin", 0)
end

if (GrandStrategyYear >= -1) then
	SetProvinceOwner("Caverns of Chaincolt", "dwarf", "norlund-clan")
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-goblin-spearman", 0)
--	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-steelclad", 4) -- Neglur, Glinar, Kuhnar, Theganli
--	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-scout", 1) -- Noiraran
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-axefighter", 4) -- 4 Dwarven Guardsmen (5 if easy mode)
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-steelclad", 2) -- Neglur, Glinar
	SetWorldMapResourceProspected("gold", 30, 12, true)
	SetProvinceOwner("Shorbear Hills", "dwarf", "shorbear-clan")
	SetProvinceUnitQuantity("Shorbear Hills", "unit-goblin-spearman", 0)
	SetProvinceUnitQuantity("Shorbear Hills", "unit-dwarven-thane", 1) -- Glonoin
	SetWorldMapResourceProspected("gold", 34, 14, true)
	SetProvinceOwner("Southern Tunnels", "dwarf", "shinsplitter-clan")
	SetProvinceUnitQuantity("Southern Tunnels", "unit-goblin-spearman", 0)
	SetProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-steelclad", 3) -- Glildur, Glindur, Kalnar
	SetProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-thane", 5) -- Lyndar, Gaenlar, Glinan, Crintil, Aendan
	SetWorldMapResourceProspected("gold", 32, 13, true)
	
	SetProvinceHero("Caverns of Chaincolt", "Durstorn", 2) -- Durstorn was already present when the conflict with Pypo over the Brown Hills happened
	SetProvinceHero("Caverns of Chaincolt", "Baglur", 2) -- Baglur was already present when the conflict with Pypo over the Brown Hills happened
	SetProvinceHero("Caverns of Chaincolt", "Thursagan", 2) -- Thursagan could be in the Caverns of Chaincolt at this time
end

if (GrandStrategyYear >= 25) then -- at this time Rugnur was already in charge of the outpost in the Chaincolt Foothills, Baglur was at the Caverns of Chaincolt gate, Thursagan was living in the Northern Wastelands and Durstorn was the chief of the Norlund clan
	SetProvinceHero("Caverns of Chaincolt", "Rugnur", 2)
	SetProvinceHero("Northern Wastelands", "Thursagan", 2) -- by this point, Thursagan had gone away to the north
	GrandStrategyEvents.TheSagesDeparture = nil
end

if (GrandStrategyYear > 25) then
	GrandStrategyEvents.StrikeABargain = nil
	GrandStrategyEvents.ABargainIsStruckShinsplitterClan = nil
	GrandStrategyEvents.ClosingTheGates = nil
	GrandStrategyEvents.ClosingTheGatesShinsplitterClan = nil
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-duelist", 1)
	SetFactionDiplomacyState("dwarf", "norlund-clan", "dwarf", "shinsplitter-clan", "war")
	ChangeFactionResource("gnome", "untersberg", "copper", -10000) -- decrease gnomish treasury by 5000 silver (considering for our purposes silver to be worth 200% of copper)
	ChangeFactionResource("dwarf", "norlund-clan", "copper", 10000) -- 5000 silver
	ChangeProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-steelclad", -1)
end

if (GrandStrategyYear >= 27) then -- time it took for Rugnur's party to travel to the Northern Wastelands and come back
	GrandStrategyEvents.SearchingForTheRunecrafter = nil
	SetProvinceHero("Caverns of Chaincolt", "Thursagan", 2)
--	ChangeProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-steelclad", 2) -- Thursagan joined and brought Kinan and Rynan, two runecrafters-in-training
	SetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-spearman", GetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-spearman") / 2) -- halve enemies in the northern wastelands (deaths due to combat with Rugnur's dwarves)
	SetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-archer", GetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-archer") / 2)
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-gryphon-rider", 2) -- two gryphon riders joined from the travel to the Northern Wastelands
end

if (GrandStrategyYear >= 29) then
	GrandStrategyEvents.GatheringMaterials = nil
	ChangeFactionResource("dwarf", "norlund-clan", "coal", 20000) -- Rugnur's party returned from the Eastern Mines in 29 AD
--	SetProvinceUnitQuantity("Eastern Mines", "unit-goblin-spearman", GetProvinceUnitQuantity("Eastern Mines", "unit-goblin-spearman") / 2)
	SetProvinceUnitQuantity("Eastern Mines", "unit-goblin-spearman", 12) -- to prevent the Norlunds expanding here too soon
	SetProvinceUnitQuantity("Eastern Mines", "unit-goblin-archer", 4)
	SetWorldMapResourceProspected("gold", 39, 6, true) -- Rugnur and his companions found the location of the gold mines in the Eastern Mines

	--[[
	SetProvinceOwner("Shorbear Hills", "dwarf", "norlund-clan") -- Shorbear Hold conquered in 29 AD by Rugnur's and Durstorn's Clan (Norlund Clan)
	SetProvinceHero("Shorbear Hills", "Rugnur", 2)
	SetProvinceHero("Shorbear Hills", "Baglur", 2)
	SetProvinceHero("Shorbear Hills", "Durstorn", 2)
	SetProvinceHero("Shorbear Hills", "Thursagan", 2)
	--]]
	KillGrandStrategyHero("Glonoin")
end

if (GrandStrategyYear >= 35) then
	GrandStrategyEvents.HillsOfTheShorbearClan = nil
	GrandStrategyEvents.HillsOfTheShorbearClanShinsplitterClan = nil
	GrandStrategyEvents.HillsOfTheShorbearClanShorbearClan = nil
	SetProvinceOwner("Shorbear Hills", "dwarf", "shinsplitter-clan") -- Shorbear Hold abandoned in 35 AD by Rugnur's and Durstorn's Clan (Norlund Clan), while the Shinsplitter forces were sieging them
	SetProvinceUnitQuantity("Shorbear Hills", "unit-dwarven-axefighter", 0)
	SetProvinceUnitQuantity("Shorbear Hills", "unit-dwarven-thane", 0)
	--[[
	SetProvinceHero("Caverns of Flame", "Rugnur", 2)
	SetProvinceHero("Caverns of Flame", "Baglur", 2)
	SetProvinceHero("Caverns of Flame", "Thursagan", 2)
	--]]
	SetProvinceHero("Shorbear Hills", "Durstorn", 0) -- Durstorn is killed in a conflict between him and other members of the clan
	MercenaryGroups.unit_surghan_mercenary_steelclad = nil
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-duelist", 0) -- gnomish recruit returns to Untersberg
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-gryphon-rider", 0) -- gryphon riders return to the Northern Wastelands
end

if (GrandStrategyYear >= 40) then
	SetProvinceHero("Caverns of Chaincolt", "Rugnur", 0) -- Rugnur, Baglur and Thursagan die at the Caverns of Flame
	SetProvinceHero("Caverns of Chaincolt", "Baglur", 0)
	SetProvinceHero("Caverns of Chaincolt", "Thursagan", 0)
	ChangeFactionResource("dwarf", "norlund-clan", "coal", -20000) -- Scepter of Fire crafted
	ChangeFactionResource("dwarf", "norlund-clan", "copper", 10000) -- payment for the crafting of the Scepter
	ChangeFactionResource("gnome", "untersberg", "copper", -10000) -- payment for the crafting of the Scepter
	SetProvinceOwner("Shorbear Hills", "dwarf", "norlund-clan") -- Shorbear Hold ceded by the Shinsplitters to the Norlunds and peace established
	SetFactionDiplomacyState("dwarf", "norlund-clan", "dwarf", "shinsplitter-clan", "peace")
end

if (GrandStrategyYear >= 389) then
	SetProvinceOwner("Peaceful Valley", "", "") -- Lggi Tribe destroyed
	SetProvinceCivilization("Peaceful Valley", "")
	SetProvinceUnitQuantity("Peaceful Valley", "unit-goblin-spearman", 0)
end

if (GrandStrategyYear >= 400) then
	SetProvinceOwner("Caverns of Chaincolt", "dwarf", "knalga") -- The Lordship of Knalga was founded around 400 AD
	SetProvinceOwner("Southern Tunnels", "dwarf", "knalga")
	SetProvinceOwner("Shorbear Hills", "dwarf", "knalga")

	SetProvinceOwner("Kal Kartha", "dwarf", "kal-kartha") -- The Lordship of Kal Kartha was founded around 400 AD
	SetProvinceUnitQuantity("Kal Kartha", "unit-forest-gnomish-recruit", 0)
	SetWorldMapResourceProspected("gold", 46, 5, true)

	SetProvinceOwner("Lyr", "dwarf", "lyr") -- The Lordship of Lyr was founded around the same time as the other lordships
	SetProvinceUnitQuantity("Lyr", "unit-dwarven-axefighter", 0)
	SetWorldMapResourceProspected("gold", 51, 15, true)
	
	SetProvinceOwner("Joruvellir", "dwarf", "joruvellir") -- The Lordship of Joruvellir may have been founded at the same time as the other lordships
	SetProvinceUnitQuantity("Joruvellir", "unit-goblin-spearman", 0)
	SetProvinceUnitQuantity("Joruvellir", "unit-goblin-archer", 0)
end

if (GrandStrategyYear >= 500) then
	-- The Shinsplitter clan took over the Highbrook Pass around this time
	SetProvinceUnitQuantity("Highbrook Pass", "unit-goblin-spearman", 0)
	SetProvinceUnitQuantity("Highbrook Pass", "unit-goblin-archer", 0)
	SetProvinceUnitQuantity("Highbrook Pass", "unit-dwarven-axefighter", 6) -- six dwarven ulfserkers
	SetProvinceUnitQuantity("Highbrook Pass", "unit-dwarven-thane", 1) -- Stalrag
	SetWorldMapResourceProspected("gold", 35, 10, true)
end

if (GrandStrategyYear >= 534) then
	SetProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-steelclad", 4) -- 4 Dwarven Stalwarts
	SetProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-thane", 1) -- Hamel
end

if (GrandStrategyYear >= 550) then
	SetProvinceUnitQuantity("Kal Kartha", "unit-dwarven-axefighter", 2) -- 2 Masked Ulfserkers in Karrag's court
	SetProvinceUnitQuantity("Kal Kartha", "unit-dwarven-steelclad", 3) -- Dulcatulos, 2 Masked Steelclads in Karrag's court
	SetProvinceUnitQuantity("Kal Kartha", "unit-dwarven-thane", 4) -- Karrag
end