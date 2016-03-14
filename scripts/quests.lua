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

DefineQuest("On the Vanaquisl", {
	Icon = "icon-germanic-warrior",
	Description = "Having assembled a great army, we are to attack the people of Vanaland and take their lands into our possession.\n\nMap: Tanais",
	World = "Earth",
	Civilization = "germanic",
	TechnologyPoints = 2,
	Map = "maps/earth/tanais.smp",
	Scenario = "scripts/civilizations/germanic/scenarios/on_the_vanaquisl.lua",
	X = 1,
	Y = 1,
	PlayerColor = "orange",
	LoadingMusic = "GermanicLoading",
	MapMusic = "GermanicTheme"
})

DefineQuest("Westward Migration", {
	Icon = "icon-germanic-worker",
	Description = "With expansion through Vanaland denied to us, we seek an alternative migration route to the west.\n\nMap: Holmgard",
	RequiredQuest = "On the Vanaquisl",
	World = "Earth",
	Civilization = "germanic",
	TechnologyPoints = 1,
	Map = "maps/earth/novgorod.smp",
	Scenario = "scripts/civilizations/germanic/scenarios/westward_migration.lua",
	X = 2,
	Y = 1,
	PlayerColor = "orange",
	LoadingMusic = "GermanicLoading",
	MapMusic = "GermanicTheme2"
})

DefineQuest("Northwards to the Sea", {
	Icon = "icon-germanic-town-hall",
	Description = "After moving southwest, we now find ourselves near a peninsula which seems promising for settlement.\n\nMap: Jutland",
	RequiredQuest = "Westward Migration",
	World = "Earth",
	Civilization = "germanic",
	TechnologyPoints = 2,
	Map = "maps/earth/jutland.smp",
	Scenario = "scripts/civilizations/germanic/scenarios/northwards_to_the_sea.lua",
	X = 3,
	Y = 1,
	PlayerColor = "orange",
	LoadingMusic = "GermanicLoading",
	MapMusic = "GermanicTheme3"
})

DefineQuest("Gylve's Realm", {
	Icon = "icon-germanic-barbed-arrow",
	Description = "After establishing ourselves in Jutland and the islands of Fyen and Zealand we journeyed north, but we do not seem welcome in these new shores...\n\nMap: Malmo",
	RequiredQuest = "Northwards to the Sea",
	World = "Earth",
	Civilization = "germanic",
	TechnologyPoints = 2,
	Map = "maps/earth/malmo.smp",
	Scenario = "scripts/civilizations/germanic/scenarios/gylves_realm.lua",
	X = 4,
	Y = 1,
	PlayerColor = "orange",
	LoadingMusic = "GermanicLoading",
--	MapMusic = "GermanicTheme4"
})

DefineQuest("The Battle of Magetobria", {
	Icon = "icon-suebi-swordsman",
	Description = "Under the leadership of Ariovistus, we have crossed the Rhine to aid the Sequani and the Arverni in defeating the Aedui, and now an Aedui army approaches the Sequani settlement of Magetobria...\n\nMap: Belfort",
	RequiredQuest = "Gylve's Realm",
	World = "Earth",
	Civilization = "teuton",
	TechnologyPoints = 3,
	Map = "maps/earth/belfort.smp",
	Scenario = "scripts/civilizations/teuton/scenarios/the_battle_of_magetobria.lua",
	X = 5,
	Y = 1,
	PlayerColor = "black"
})

DefineQuest("The Home of the Boii", {
	Icon = "icon-marbod",
	Description = "After a devastating conflict with the Romans, Marbod seeks to lead the tribe of the Marcomanni to safer lands.\n\nMap: Prague",
	RequiredQuest = "The Battle of Magetobria",
	World = "Earth",
	Civilization = "teuton",
	TechnologyPoints = 4,
	Map = "maps/earth/prague.smp",
	Scenario = "scripts/civilizations/teuton/scenarios/the_home_of_the_boii.lua",
	X = 6,
	Y = 1,
	PlayerColor = "orange"
})

DefineQuest("The Sack of Iuvavum", {
	Icon = "icon-teuton-spatha",
	Description = "Almost two centuries after the time of Marbod, the Marcomanni chieftain Ballomar has gathered more than a dozen Germanic tribes in an alliance to invade the Roman Empire.\n\nMap: Salzburg",
	RequiredQuest = "The Home of the Boii",
	World = "Earth",
	Civilization = "teuton",
	TechnologyPoints = 3,
	Map = "maps/earth/salzburg.smp",
	Scenario = "scripts/civilizations/teuton/scenarios/the_sack_of_iuvavum.lua",
	X = 7,
	Y = 1,
	PlayerColor = "orange"
})

DefineQuest("The Razing of Opitergium", {
	Icon = "icon-catapult-projectile-1",
	Description = "Leaving a trail of destruction behind them, the Marcomanni have now reached Italy and lay siege to the Roman city of Opitergium.\n\nMap: Oderzo",
	RequiredQuest = "The Sack of Iuvavum",
	World = "Earth",
	Civilization = "teuton",
	TechnologyPoints = 3,
	Map = "maps/earth/oderzo.smp",
	Scenario = "scripts/civilizations/teuton/scenarios/the_razing_of_opitergium.lua",
	X = 8,
	Y = 1,
	PlayerColor = "orange"
})

DefineQuest("Moving into Galicia", { -- happened in 411 AD
	Icon = "icon-teuton-town-hall",
	Description = "Times are changing. The Roman Empire, once invincible, is now falling prey to a conjunction of domestic troubles and external pressures. A group of Suebi has decided to take on this opportunity, moving into the Roman province of Galicia...\n\nMap: Braga",
	RequiredQuest = "The Razing of Opitergium",
	World = "Earth",
	Civilization = "teuton",
	TechnologyPoints = 3,
	Map = "maps/earth/braga.smp",
	Scenario = "scripts/civilizations/teuton/scenarios/moving_into_galicia.lua",
	X = 9,
	Y = 1,
	PlayerColor = "black"
})

DefineQuest("The Blue Danube", {
	Icon = "icon-teuton-swordsman",
	Description = "As time passed, the Marcomanni abandoned their old name and adopted a new one - that of the Bavarians. Expelled from Bohemia by the Lombards, they must now seek a home on the margins of the Danube, facing the forces of the crumbling Roman Empire, if need be.\n\nMap: Regensburg",
	RequiredQuest = "The Razing of Opitergium",
	World = "Earth",
	Civilization = "teuton",
	TechnologyPoints = 3,
	Map = "maps/earth/regensburg.smp",
	Scenario = "scripts/civilizations/teuton/scenarios/the_blue_danube.lua",
	X = 1,
	Y = 2,
	PlayerColor = "cyan"
})

DefineQuest("A Rocky Home", {
	Icon = "icon-modsognir",
	Description = "A clan of dwarves led by Modsognir has arrived in Svarinshaug, seeking a new home. Beset by hostile natural forces on all sides, can they survive their first winter?\n\nMap: Svarinshaug",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/svarinshaug.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/a_rocky_home.lua",
	X = 1,
	Y = 1,
	PlayerColor = "white",
	LoadingMusic = "DwarfLoading",
	MapMusic = "DwarfTheme"
})

DefineQuest("The Mead of Wisdom", {
	Icon = "icon-durin",
	Description = "The sage of Modsognir's clan has disappeared, taken by two dwarves called Fjalar and Galar. Modsognir has sent Durin to enter their hall, rescue the sage - or what remains of him - and bring the evil pair to justice.\n\nMap: Fjalar's and Galar's Hall",
	RequiredQuest = "A Rocky Home",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/fjalars-and-galars-hall.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/the_mead_of_wisdom.lua",
	X = 2,
	Y = 1,
	PlayerColor = "white",
	LoadingMusic = "DwarfLoading",
	MapMusic = "DwarfTheme2"
})

DefineQuest("The Treasures of Svarinshaug", {
	Icon = "icon-dwarven-smithy",
	Description = "The dwarven smiths Brokk and Eitri are competing with the renowned sons of Ivaldi to craft the best artifacts for Modsognir. To obtain the necessary high quality ores will be perilous, however, as dangerous creatures abound in the deep mines where they lay...\n\nMap: Eastern Mines",
	RequiredQuest = "The Mead of Wisdom",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 3,
	Map = "maps/nidavellir/eastern-mines.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/the_treasures_of_svarinshaug.lua",
	X = 3,
	Y = 1,
	PlayerColor = "white",
	LoadingMusic = "DwarfLoading",
--	MapMusic = "DwarfTheme3"
})

DefineQuest("The Necklace of the Brisings", {
	Icon = "icon-dwarven-steelclad",
	Description = "The necklace made for Modsognir's wife by a group of four dwarven smiths has been stolen! The culprits, a band of local dwarven thieves, sneaked away with the necklace last night, going back to their hideout. We must recover the necklace from these bandits!\n\nMap: Aurvang",
	RequiredQuest = "The Treasures of Svarinshaug",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 3,
	Map = "maps/nidavellir/aurvang.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/the_necklace_of_the_brisings.lua",
	X = 4,
	Y = 1,
	PlayerColor = "black",
	LoadingMusic = "DwarfLoading",
--	MapMusic = "DwarfTheme4"
})

DefineQuest("The Binding of Grafvitnir", {
	Icon = "icon-wyrm",
	Description = "The colossal wyrm Grafvitnir threatens the survival of the fledgling dwarves, who have little chance of slaying the monstrous creature. The only hope rests in getting close enough to bind Grafvitnir with a powerful fetter crafted by the clan's talented smiths.\n\nMap: Grafvitnir's Lair",
	RequiredQuest = "The Necklace of the Brisings",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/grafvitnirs-lair.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/the_binding_of_grafvitnir.lua",
	X = 5,
	Y = 1,
	PlayerColor = "black"
})

DefineQuest("The Tomb of Durahn Eikinskjaldi", {
	Icon = "icon-dwarven-shield-3",
	Description = "The dwarves of the Eikinskjaldi Clan need to recover Durahn Eikinskjaldi's skull to prove their claim in the lordship of Joruvellir, but Durahn's tomb has fallen prey to a band of gnomish raiders...\n\nMap: Tomb of Durahn Eikinskjaldi",
	RequiredQuest = "The Binding of Grafvitnir",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 1,
	Map = "maps/nidavellir/tomb-of-durahn-eikinskjaldi.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/the_tomb_of_durahn_eikinskjaldi.lua",
	X = 6,
	Y = 1,
	PlayerColor = "brown"
})

DefineQuest("A Bargain is Struck", {
	Icon = "icon-rugnur",
	Description = "A gnomish monarch arrives at a small border outpost led by Rugnur, asking that his clan craft a special scepter for him.\n\nMap: Chaincolt Foothills",
	RequiredQuest = "The Tomb of Durahn Eikinskjaldi",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/chaincolt-foothills.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/a_bargain_is_struck.lua",
	X = 7,
	Y = 1,
	PlayerColor = "red",
	MapMusic = "ABargainIsStruck"
})

DefineQuest("Closing the Gates", {
	Icon = "icon-baglur",
	Description = "Having retreated from the raiders' onslaught, Rugnur reaches the gates of his clan's tunnels.\n\nMap: Caverns of Chaincolt",
	RequiredQuest = "A Bargain is Struck",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/caverns-of-chaincolt.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/closing_the_gates.lua",
	X = 8,
	Y = 1,
	PlayerColor = "red",
	MapMusic = "ClosingTheGates"
})

DefineQuest("Searching for the Runecrafter", {
	Icon = "icon-thursagan",
	Description = "Rugnur's expedition reaches the northlands, and begin to search for the runesmith named Thursagan - the sage of fire.\n\nMap: Northern Wastelands",
	RequiredQuest = "Closing the Gates",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/northern-wastelands.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/searching_for_the_runecrafter.lua",
	X = 9,
	Y = 1,
	PlayerColor = "red",
	MapMusic = "SearchingForTheRunecrafter"
})

DefineQuest("Gathering Materials", {
	Icon = "icon-dwarven-miner",
	Description = "Rugnur and his brave companions, having spent two years harvesting materials in the tunnels of the eastern mines, now venture into the very heart of the goblins' territory to obtain the last materials needed...\n\nMap: Eastern Mines",
	RequiredQuest = "Searching for the Runecrafter",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/eastern-mines.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/gathering_materials.lua",
	X = 1,
	Y = 2,
	PlayerColor = "red",
	MapMusic = "GatheringMaterials"
})

DefineQuest("Hills of the Shorbear Clan", {
	Icon = "icon-durstorn",
	Description = "Durstorn, Rugnur and their companions travel to the hills of the Shorbear Clan, seeking access to that tribe's magnificent tools, which are needed to craft the Scepter of Fire.\n\nMap: Shorbear Hills",
	RequiredQuest = "Gathering Materials",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 3,
	Map = "maps/nidavellir/shorbear-hills.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/hills_of_the_shorbear_clan.lua",
	X = 2,
	Y = 2,
	PlayerColor = "red",
	MapMusic = "HillsOfTheShorbearClan"
})

DefineQuest("The Wyrm", {
	Icon = "icon-wyrm-vicious",
	Description = "Rugnur's dwarves delve deep into underground caves, seeking to escape from the Shinsplitter Clan. However, the section of the old eastern mines that they reached had long since become the lair of Svafnir... the wyrm.\n\nMap: Svafnir's Lair",
	RequiredQuest = "Hills of the Shorbear Clan",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/svafnirs-lair.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/the_wyrm.lua",
	X = 3,
	Y = 2,
	PlayerColor = "red",
	MapMusic = "TheWyrm"
})

DefineQuest("Caverns of Flame", {
	Icon = "icon-greebo",
	Description = "Rugnur and his companions reach deep into the Caverns of Flame, where they find an ancient dwarven mechanism which may just allow them to prevent the Shinsplitters from getting their hands on the Scepter.\n\nMap: Caverns of Flame",
	RequiredQuest = "The Wyrm",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/caverns-of-flame.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/caverns_of_flame.lua",
	X = 4,
	Y = 2,
	PlayerColor = "red",
	MapMusic = "CavernsOfFlame"
})

--[[
DefineQuest("Last Stand at the Forge", {
	Icon = "icon-dwarven-smithy",
	Description = "Goblins are overruning dwarven settlements in the region of the Caverns of Flame. The volcanic forge must be defended, lest the goblins be able to use it to craft wondrous weapon with which they could inflict even more damage on dwarven societies.\n\nMap: Svafnir's Lair",
	RequiredTechnology = "upgrade-dwarven-alchemy",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 1,
	Map = "maps/nidavellir/svafnirs-lair.smp",
	X = 5,
	Y = 2,
	PlayerColor = "red"
})
--]]

DefineQuest("Andvari's Gold", {
	Icon = "icon-gold",
	Description = "Regin has asked you to help him take Andvari's gold forcibly, giving promises of great wealth.",
	World = "Nidavellir",
	Civilization = "dwarf",
	RequiredQuest = "The Binding of Grafvitnir", -- this happens long after Modsognir's time
	QuestGiver = "Regin",
	Area = "Andvari's Falls",
	StartSpeech = "Listen... there is a dwarf who lives near here, called Andvari. He has gathered a large gold hoard, by methods unknown. For me alone, it would be too risky to wrest the gold from Andvari. But with your help... can I count on it?",
	InProgressSpeech = "We shall be very wealthy!",
	CompletionSpeech = "The hoard is nowhere to be found! Wait, I see some kobold equipment has been left here in their rush to take the hoard away... I think I can identify the tribe they belong to.",
	Hidden = true
})

DefineQuest("Fafnir's Hoard", {
	Icon = "icon-wyrm-vicious",
	Description = "Andvari's gold hoard has been taken by the kobolds who care for the wyrm Fafnir. If you and Regin are to recover the gold, you must enter Fafnir's perilous domain and slay the giant beast.",
	World = "Nidavellir",
	Civilization = "dwarf",
	RequiredQuest = "Andvari's Gold",
	QuestGiver = "Regin",
	Area = "Gnitaheith",
	StartSpeech = "Andvari's gold hoard was taken by a group of treacherous kobolds, who took it to the lair of their wyrm, Fafnir. To recover the precious metal, we must enter the wyrm's lair.",
	InProgressSpeech = "Fafnir is a vicious creature - be on your guard!",
	CompletionSpeech = "Excellent! So much gold... Ah, and this ring of red gold, so beautiful...",
	Hidden = true
})

DefineQuest("Tror's Inheritance", {
	Icon = "icon-germanic-short-sword",
	Description = "The young Tror has come of age, and requested you bring his father's weapons to him.",
	World = "Earth",
	Civilization = "germanic",
	QuestGiver = "Tror",
	Area = "Asaland",
	StartSpeech = "I am finally old enough to receive my father's weapons. Would you be so kind and get them for me from chieftain Lorikus?",
	InProgressSpeech = "Long have I waited for this moment...",
	CompletionSpeech = "I am grateful to you. I have now finally became the warrior I was meant to be.",
	Hidden = true
})

DefineQuest("Ottar's Lineage", {
	Icon = "icon-teuton-swordsman",
	Description = "Ottar has bet his entire inheritance against Argantyr, to see who has the better lineage. He now asks you to take him to a seeress who can tell him about his bloodline.",
	World = "Earth",
	Civilization = "norse",
	QuestGiver = "Ottar",
	Area = "Hordaland",
	StartSpeech = "In the heat of a discussion, me and Argantyr have made a bet - to see who has the better lineage. Each of us has put our entire inheritance at stake. There is a seeress who can tell me about my bloodline - would you escort me to her?",
	InProgressSpeech = "Everything is at stake...",
	CompletionSpeech = "Me, a kinsman of Siegfried! The bet is as good as won.",
	Hidden = true
})
