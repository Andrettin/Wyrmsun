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
--      quests.lua - Defines quests.
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

Quests = {
	OnTheVanaquisl = {
		Name = "On the Vanaquisl",
		Icon = "germanic/icons/warrior",
		Description = "Having assembled a great army, we are to attack the people of Vanaland and take their lands into our possession.\n\nMap: Tanais\n\nRewards: 1 Germanic Technology Point.",
		World = "Earth",
		Civilization = "germanic",
		TechnologyPoints = 2,
		Map = "maps/earth/tanais.smp",
		Scenario = "scripts/germanic/scenarios/on_the_vanaquisl.lua",
		X = 1,
		Y = 1,
		PlayerColor = "orange"
	},
	WestwardMigration = {
		Name = "Westward Migration",
		Icon = "germanic/icons/worker",
		Description = "With expansion through Vanaland denied to us, we seek an alternative migration route to the west.\n\nMap: Holmgard\n\nRewards: 1 Germanic Technology Point.",
		RequiredQuest = "On the Vanaquisl",
		World = "Earth",
		Civilization = "germanic",
		TechnologyPoints = 1,
		Map = "maps/earth/novgorod.smp",
		Scenario = "scripts/germanic/scenarios/westward_migration.lua",
		X = 2,
		Y = 1,
		PlayerColor = "orange"
	},
	NorthwardsToTheSea = {
		Name = "Northwards to the Sea",
		Icon = "germanic/icons/town_hall",
		Description = "After moving southwest, we now find ourselves near a peninsula which seems promising for settlement.\n\nMap: Jutland\n\nRewards: 2 Germanic Technology Points.",
		RequiredQuest = "Westward Migration",
		World = "Earth",
		Civilization = "germanic",
		TechnologyPoints = 2,
		Map = "maps/earth/jutland.smp",
		Scenario = "scripts/germanic/scenarios/northwards_to_the_sea.lua",
		X = 3,
		Y = 1,
		PlayerColor = "orange"
	},
	GylvesRealm = {
		Name = "Gylve's Realm",
		Icon = "germanic/icons/barbed_arrow",
		Description = "After establishing ourselves in Jutland and the islands of Fyen and Zealand we journeyed north, but we do not seem welcome in these new shores...\n\nMap: Malmo\n\nRewards: 2 Germanic Technology Points.",
		RequiredQuest = "Northwards to the Sea",
		World = "Earth",
		Civilization = "germanic",
		TechnologyPoints = 2,
		Map = "maps/earth/malmo.smp",
		Scenario = "scripts/germanic/scenarios/gylves_realm.lua",
		X = 4,
		Y = 1,
		PlayerColor = "orange"
	},
	TheBattleOfMagetobria = {
		Name = "The Battle of Magetobria",
		Icon = "germanic/icons/broad_sword",
		Description = "Under the leadership of Ariovistus, we have crossed the Rhine to aid the Sequani and the Arverni in defeating the Aedui, and now an Aedui army approaches the Sequani settlement of Magetobria...\n\nMap: Belfort\n\nRewards: 2 Teuton Technology Points.",
		RequiredQuest = "Gylve's Realm",
		World = "Earth",
		Civilization = "teuton",
		TechnologyPoints = 2,
		Map = "maps/earth/belfort.smp",
		Scenario = "scripts/teuton/scenarios/the_battle_of_magetobria.lua",
		X = 5,
		Y = 1,
		PlayerColor = "black"
	},
	TheHomeOfTheBoii = {
		Name = "The Home of the Boii",
		Icon = "teuton/icons/marbod",
		Description = "After a devastating conflict with the Romans, Marbod seeks to lead the tribe of the Marcomanni to safer lands.\n\nMap: Prague\n\nRewards: 2 Teuton Technology Points.",
		RequiredQuest = "The Battle of Magetobria",
		World = "Earth",
		Civilization = "teuton",
		TechnologyPoints = 2,
		Map = "maps/earth/prague.smp",
		Scenario = "scripts/teuton/scenarios/the_home_of_the_boii.lua",
		X = 6,
		Y = 1,
		PlayerColor = "orange"
	},
	TheSackOfIuvavum = {
		Name = "The Sack of Iuvavum",
		Icon = "teuton/icons/spatha",
		Description = "Almost two centuries after the time of Marbod, the Marcomanni chieftain Ballomar has gathered more than a dozen Germanic tribes in an alliance to invade the Roman Empire.\n\nMap: Salzburg\n\nRewards: 1 Teuton Technology Point.",
		RequiredQuest = "The Home of the Boii",
		World = "Earth",
		Civilization = "teuton",
		TechnologyPoints = 2,
		Map = "maps/earth/salzburg.smp",
		Scenario = "scripts/teuton/scenarios/the_sack_of_iuvavum.lua",
		X = 7,
		Y = 1,
		PlayerColor = "orange"
	},
	TheRazingOfOpitergium = {
		Name = "The Razing of Opitergium",
		Icon = "neutral/icons/catapult_projectile_sandstone",
		Description = "Leaving a trail of destruction behind them, the Marcomanni have now reached Italy and lay siege to the Roman city of Opitergium.\n\nMap: Oderzo\n\nRewards: 2 Teuton Technology Points.",
		RequiredQuest = "The Sack of Iuvavum",
		World = "Earth",
		Civilization = "teuton",
		TechnologyPoints = 2,
		Map = "maps/earth/oderzo.smp",
		Scenario = "scripts/teuton/scenarios/the_razing_of_opitergium.lua",
		X = 8,
		Y = 1,
		PlayerColor = "orange"
	},
	MovingIntoGalicia = { -- happened in 411 AD
		Name = "Moving into Galicia",
		Icon = "teuton/icons/town_hall",
		Description = "Times are changing. The Roman Empire, once invincible, is now falling prey to a conjunction of domestic troubles and external pressures. A group of Suebi has decided to take on this opportunity, moving into the Roman province of Galicia...\n\nMap: Braga\n\nRewards: 2 Teuton Technology Points.",
		RequiredQuest = "The Razing of Opitergium",
		World = "Earth",
		Civilization = "teuton",
		TechnologyPoints = 2,
		Map = "maps/earth/braga.smp",
		Scenario = "scripts/teuton/scenarios/moving_into_galicia.lua",
		X = 9,
		Y = 1,
		PlayerColor = "black"
	},
	TheBlueDanube = {
		Name = "The Blue Danube",
		Icon = "teuton/icons/saxon_swordsman",
		Description = "As time passed, the Marcomanni abandoned their old name and adopted a new one - that of the Bavarians. Expelled from Bohemia by the Lombards, they must now seek a home on the margins of the Danube, facing the forces of the crumbling Roman Empire, if need be.\n\nMap: Regensburg\n\nRewards: 2 Teuton Technology Points.",
		RequiredQuest = "The Razing of Opitergium",
		World = "Earth",
		Civilization = "teuton",
		TechnologyPoints = 2,
		Map = "maps/earth/regensburg.smp",
		Scenario = "scripts/teuton/scenarios/the_blue_danube.lua",
		X = 1,
		Y = 2,
		PlayerColor = "cyan"
	},
	ARockyHome = {
		Name = "A Rocky Home",
		Icon = "dwarf/icons/modsognir",
		Description = "A clan of dwarves led by Modsognir has arrived in Svarinshaug, seeking a new home. Beset by hostile natural forces on all sides, can they survive their first winter?\n\nMap: Svarinshaug\n\nRewards: 1 Dwarven Technology Point.",
		World = "Nidavellir",
		Civilization = "dwarf",
		TechnologyPoints = 1,
		Map = "maps/nidavellir/svarinshaug.smp",
		Scenario = "scripts/dwarf/scenarios/a_rocky_home.lua",
		X = 1,
		Y = 1,
		PlayerColor = "white"
	},
	TheMeadOfWisdom = {
		Name = "The Mead of Wisdom",
		Icon = "dwarf/icons/durin",
		Description = "The sage of Modsognir's clan has disappeared, taken by two dwarves called Fjalar and Galar. Modsognir has sent Durin to enter their hall, rescue the sage - or what remains of him - and bring the evil pair to justice.\n\nMap: Fjalar's and Galar's Hall\n\nRewards: 2 Dwarven Technology Points.",
		RequiredQuest = "A Rocky Home",
		World = "Nidavellir",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "maps/nidavellir/fjalars-and-galars-hall.smp",
		Scenario = "scripts/dwarf/scenarios/the_mead_of_wisdom.lua",
		X = 2,
		Y = 1,
		PlayerColor = "white"
	},
	TheTreasuresOfSvarinshaug = {
		Name = "The Treasures of Svarinshaug",
		Icon = "dwarf/icons/smithy",
		Description = "The dwarven smiths Brokk and Eitri are competing with the renowned sons of Ivaldi to craft the best artifacts for Modsognir. To obtain the necessary high quality ores will be perilous, however, as dangerous creatures abound in the deep mines where they lay...\n\nMap: Eastern Mines\n\nRewards: 1 Dwarven Technology Point.",
		RequiredQuest = "The Mead of Wisdom",
		World = "Nidavellir",
		Civilization = "dwarf",
		TechnologyPoints = 1,
		Map = "maps/nidavellir/eastern-mines.smp",
		Scenario = "scripts/dwarf/scenarios/the_treasures_of_svarinshaug.lua",
		X = 3,
		Y = 1,
		PlayerColor = "white"
	},
	TheNecklaceOfTheBrisings = {
		Name = "The Necklace of the Brisings",
		Icon = "dwarf/icons/dwarven_steelclad",
		Description = "The necklace made for Modsognir's wife by the Brisings - a group of four dwarven smiths - has been stolen! The culprits, a band of local dwarven thieves, sneaked away with the necklace last night, going back to their hideout. We must recover the necklace from these bandits!\n\nMap: Aurvangar\n\nRewards: 1 Dwarven Technology Point.",
		RequiredQuest = "The Treasures of Svarinshaug",
		World = "Nidavellir",
		Civilization = "dwarf",
		TechnologyPoints = 1,
		Map = "maps/nidavellir/aurvangar.smp",
		Scenario = "scripts/dwarf/scenarios/the_necklace_of_the_brisings.lua",
		X = 4,
		Y = 1,
		PlayerColor = "black"
	},
	TheBindingOfGrafvitnir = {
		Name = "The Binding of Grafvitnir",
		Icon = "neutral/icons/wyrm",
		Description = "The wyrm Grafvitnir threatens the survival of the fledgling dwarves. Many have been eaten, and there's little chance for them to kill the monstrous creature. The only hope rests in getting close enough to bind Grafvitnir with a powerful fetter crafted by the clan's talented smiths.\n\nMap: Grafvitnir's Lair\n\nRewards: 1 Dwarven Technology Point.",
--		RequiredQuest = "The Necklace of the Brisings",
		World = "Nidavellir",
		Civilization = "dwarf",
		TechnologyPoints = 1,
		Map = "maps/nidavellir/grafvitnirs_lair.smp",
		Scenario = "scripts/dwarf/scenarios/the_binding_of_grafvitnir.lua",
		X = 5,
		Y = 1,
		Hidden = true,
		PlayerColor = "black"
	},
	TheTombOfDurahnEikinskjaldi = {
		Name = "The Tomb of Durahn Eikinskjaldi",
		Icon = "dwarf/icons/shield_3",
		Description = "The dwarves of the Eikinskjaldi Clan need to recover Durahn Eikinskjaldi's skull to prove their claim in the lordship of Joruvellir, but Durahn's tomb has fallen prey to a band of gnomish raiders...\n\nMap: Tomb of Durahn Eikinskjaldi\n\nRewards: 1 Dwarven Technology Point.",
		RequiredQuest = "The Necklace of the Brisings",
		World = "Nidavellir",
		Civilization = "dwarf",
		TechnologyPoints = 1,
		Map = "maps/nidavellir/tomb-of-durahn-eikinskjaldi.smp",
		Scenario = "scripts/dwarf/scenarios/the_tomb_of_durahn_eikinskjaldi.lua",
		X = 5,
		Y = 1,
		PlayerColor = "brown"
	},
	ABargainIsStruck = {
		Name = "A Bargain is Struck",
		Icon = "dwarf/icons/rugnur",
		Description = "A gnomish monarch arrives at a small border outpost led by Rugnur, asking that his clan craft a special scepter for him.\n\nMap: Chaincolt Foothills\n\nRewards: 2 Dwarven Technology Points.",
		RequiredQuest = "The Mead of Wisdom",
		World = "Nidavellir",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "maps/nidavellir/chaincolt-foothills.smp",
		Scenario = "scripts/dwarf/scenarios/a_bargain_is_struck.lua",
		X = 6,
		Y = 1,
		PlayerColor = "red"
	},
	ClosingTheGates = {
		Name = "Closing the Gates",
		Icon = "dwarf/icons/baglur",
		Description = "Having retreated from the raiders' onslaught, Rugnur reaches the gates of his clan's tunnels.\n\nMap: Caverns of Chaincolt\n\nRewards: 2 Dwarven Technology Points.",
		RequiredQuest = "A Bargain is Struck",
		World = "Nidavellir",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "maps/nidavellir/caverns-of-chaincolt.smp",
		Scenario = "scripts/dwarf/scenarios/closing_the_gates.lua",
		X = 7,
		Y = 1,
		PlayerColor = "red"
	},
	SearchingForTheRunecrafter = {
		Name = "Searching for the Runecrafter",
		Icon = "dwarf/icons/thursagan",
		Description = "Rugnur's expedition reaches the northlands, and begin to search for the runesmith named Thursagan - the sage of fire.\n\nMap: Northern Wastelands\n\nRewards: 2 Dwarven Technology Points.",
		RequiredQuest = "Closing the Gates",
		World = "Nidavellir",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "maps/nidavellir/northern-wastelands.smp",
		Scenario = "scripts/dwarf/scenarios/searching_for_the_runecrafter.lua",
		X = 8,
		Y = 1,
		PlayerColor = "red"
	},
	GatheringMaterials = {
		Name = "Gathering Materials",
		Icon = "dwarf/icons/miner",
		Description = "Rugnur and his brave companions, having spent two years harvesting materials in the tunnels of the eastern mines, now venture into the very heart of the goblins' territory to obtain the last materials needed...\n\nMap: Eastern Mines\n\nRewards: 2 Dwarven Technology Points.",
		RequiredQuest = "Searching for the Runecrafter",
		World = "Nidavellir",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "maps/nidavellir/eastern-mines.smp",
		Scenario = "scripts/dwarf/scenarios/gathering_materials.lua",
		X = 9,
		Y = 1,
		PlayerColor = "red"
	},
	HillsOfTheShorbearClan = {
		Name = "Hills of the Shorbear Clan",
		Icon = "dwarf/icons/durstorn",
		Description = "Durstorn, Rugnur and their companions travel to the hills of the Shorbear Clan, seeking access to that tribe's magnificent tools, which are needed to craft the Scepter of Fire.\n\nMap: Shorbear Hills\n\nRewards: 2 Dwarven Technology Points.",
		RequiredQuest = "Gathering Materials",
		World = "Nidavellir",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "maps/nidavellir/shorbear-hills.smp",
		Scenario = "scripts/dwarf/scenarios/hills_of_the_shorbear_clan.lua",
		X = 1,
		Y = 2,
		PlayerColor = "red"
	},
	TheWyrm = {
		Name = "The Wyrm",
		Icon = "neutral/icons/wyrm_vicious",
		Description = "Rugnur's dwarves dwelve deep into underground caves, seeking to escape from the Shinsplitter Clan. However, the section of the old eastern mines that they reached had long since become the lair of Svafnir... the wyrm.\n\nMap: Wyrm's Lair\n\nRewards: 2 Dwarven Technology Points.",
		RequiredQuest = "Hills of the Shorbear Clan",
		World = "Nidavellir",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "maps/nidavellir/svafnirs-lair.smp",
		Scenario = "scripts/dwarf/scenarios/the_wyrm.lua",
		X = 2,
		Y = 2,
		PlayerColor = "red"
	},
	CavernsOfFlame = {
		Name = "Caverns of Flame",
		Icon = "goblin/icons/goblin_spearman",
		Description = "Rugnur and his companions reach deep into the Caverns of Flame, where they find an ancient dwarven mechanism which may just allow them to prevent the Shinsplitters from getting their hands on the Scepter.\n\nMap: Caverns of Flame\n\nRewards: 1 Dwarven Technology Point.",
		RequiredQuest = "The Wyrm",
		World = "Nidavellir",
		Civilization = "dwarf",
		TechnologyPoints = 1,
		Map = "maps/nidavellir/caverns-of-flame.smp",
		Scenario = "scripts/dwarf/scenarios/caverns_of_flame.lua",
		X = 3,
		Y = 2,
		PlayerColor = "red"
	},
	LastStandAtTheForge = {
		Name = "Last Stand at the Forge",
		Icon = "dwarf/icons/smithy",
		Description = "Goblins are overruning dwarven settlements in the region of the Caverns of Flame. The volcanic forge must be defended, lest the goblins be able to use it to craft wondrous weapon with which they could inflict even more damage on dwarven societies.\n\nMap: Svafnir's Lair\n\nRewards: 1 Dwarven Technology Point.",
		RequiredTechnology = "upgrade-dwarven-alchemy",
		World = "Nidavellir",
		Civilization = "dwarf",
		TechnologyPoints = 1,
		Map = "maps/nidavellir/svafnirs-lair.smp",
		X = 4,
		Y = 2,
		PlayerColor = "red"
	}
}
