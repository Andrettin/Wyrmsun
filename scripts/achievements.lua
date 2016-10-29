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
--      (c) Copyright 2013-2016 by Andrettin
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

DefineAchievement("the-settlement-of-scandinavia", {
	Name = "The Settlement of Scandinavia",
	Icon = "icon-germanic-warrior",
	Description = "Complete the On the Vanaquisl, Westward Migration, Northwards to the Sea and Gylve's Realm missions.",
	PlayerColor = "orange",
	HairColor = "blond",
	RequiredQuests = {"on-the-vanaquisl", "westward-migration", "northwards-to-the-sea", "gylves-realm"}
})

DefineAchievement("heimdalls-progeny", {
	Name = "Heimdall's Progeny",
	Icon = "icon-jarl",
	Description = "Complete the Heimdall's Progeny campaign.",
	PlayerColor = "yellow",
	RequiredQuests = {"heimdalls-progeny"}
})

DefineAchievement("the-marcomannic-wars", {
	Name = "The Marcomannic Wars",
	Icon = "icon-suebi-swordsman",
	Description = "Complete The Sack of Iuvavum and The Razing of Opitergium missions.",
	PlayerColor = "orange",
	RequiredQuests = {"the-sack-of-iuvavum", "the-razing-of-opitergium"}
})

DefineAchievement("the-conquest-of-galicia", {
	Name = "The Conquest of Galicia",
	Icon = "icon-teuton-spatha",
	Description = "Complete the Moving into Galicia mission.",
	PlayerColor = "black",
	RequiredQuests = {"moving-into-galicia"}
})

DefineAchievement("the-blue-danube", {
	Name = "The Blue Danube",
	Icon = "icon-teuton-swordsman",
	Description = "Complete The Blue Danube mission.",
	PlayerColor = "cyan",
	RequiredQuests = {"the-blue-danube"}
})

DefineAchievement("the-mightiest-made", {
	Name = "The Mightiest Made",
	Icon = "icon-modsognir",
	Description = "Reach level 10 with Modsognir.",
	PlayerColor = "red",
	Character = "Modsognir",
	CharacterLevel = 10
})

DefineAchievement("the-first-dwarves", {
	Name = "The First Dwarves",
	Icon = "icon-brising-miner",
	Description = "Complete the A Rocky Home, The Mead of Wisdom, The Treasures of Svarinshaug, The Necklace of the Brisings and The Binding of Grafvitnir missions.",
	PlayerColor = "red",
	RequiredQuests = {"a-rocky-home", "the-mead-of-wisdom", "the-treasures-of-svarinshaug", "the-necklace-of-the-brisings", "the-binding-of-grafvitnir"}
})

DefineAchievement("the-lay-of-alvis", {
	Name = "The Lay of Alvis",
	Icon = "icon-dwarven-witness",
	Description = "Complete all quests related to Alvis.",
	PlayerColor = "red",
	RequiredQuests = {"the-dripping-hall", "the-deep", "the-burner", "the-weaver-of-dreams"}
})

DefineAchievement("safe-passage", {
	Name = "Safe Passage",
	Icon = "icon-dwarven-steelclad",
	Description = "Destroy the raiders during the A Bargain is Struck quest on Hard difficulty or higher.",
	PlayerColor = "green",
	Unobtainable = true, -- it is obtainable only through a trigger
	Difficulty = 3
})

DefineAchievement("rugnurs-bravery", {
	Name = "Rugnur's Bravery",
	Icon = "icon-rugnur-older",
	Description = "Upgrade Rugnur to a Stonelord.",
	PlayerColor = "red",
	Character = "Rugnur",
	CharacterType = "unit-dwarven-thane"
})

DefineAchievement("the-scepter-of-fire", {
	Name = "The Scepter of Fire",
	Icon = "icon-thursagan",
	Description = "Complete the A Bargain is Struck, Closing the Gates, Searching for the Runecrafter, Gathering Materials, Hills of the Shorbear Clan, The Wyrm and Caverns of Flame missions.",
	PlayerColor = "red",
	RequiredQuests = {"a-bargain-is-struck", "closing-the-gates", "searching-for-the-runecrafter", "gathering-materials", "hills-of-the-shorbear-clan", "the-wyrm", "caverns-of-flame"}
})

--[[
DefineAchievement("the-ancient-charms", {
	Name = "The Ancient Charms",
	Icon = "icon-scroll",
	Description = "Read all Teuton literary works (with any custom hero)."
})

DefineAchievement("deep-lore", {
	Name = "Deep Lore",
	Icon = "icon-book-red",
	Description = "Read all dwarven literary works (with any custom hero)."
})
--]]

DefineAchievement("paragon", {
	Name = "Paragon",
	Icon = "icon-level-up",
	Description = "Reach level 10 with any custom hero.",
	CharacterLevel = 10
})

DefineAchievement("legend", {
	Name = "Legend",
	Icon = "icon-leadership",
	Description = "Reach level 20 with any custom hero.",
	CharacterLevel = 20
})

DefineAchievement("demigod", {
	Name = "Demigod",
	Icon = "icon-axe-mastery",
	Description = "Reach level 100 with any custom hero.",
	CharacterLevel = 100
})
