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
--      (c) Copyright 2013-2017 by Andrettin
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
	Description = "Complete the On the Vanaquisl, Westward Migration and The Settlement of Scandinavia scenarios.",
	PlayerColor = "orange",
	RequiredQuests = {"on-the-vanaquisl", "westward-migration", "the-settlement-of-scandinavia"}
})

DefineAchievement("heimdalls-progeny", {
	Name = "Haimadala's Progeny",
	Icon = "icon-jarl",
	Description = "Complete the Haimadala's Progeny scenario.",
	PlayerColor = "yellow",
	RequiredQuests = {"heimdalls-progeny"}
})

DefineAchievement("thors-servant", {
	Name = "Thunraz's Servant",
	Icon = "icon-thor",
	Description = "Complete the Thunraz's Servant scenario.",
	PlayerColor = "white",
	RequiredQuests = {"thors-servant"}
})

DefineAchievement("the-first-marcomannic-war", {
	Name = "The First Marcomannic War",
	Icon = "icon-suebi-swordsman",
	Description = "Complete the The Sack of Iuvavum and The Razing of Opitergium missions.",
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
	Icon = "icon-saxon-swordsman",
	Description = "Complete the The Blue Danube mission.",
	PlayerColor = "cyan",
	RequiredQuests = {"the-blue-danube"}
})

DefineAchievement("the-first-dwarves", {
	Name = "The First Dwarves",
	Icon = "icon-brising-miner",
	Description = "Complete the The First Dwarves scenario.",
	PlayerColor = "red",
	RequiredQuests = {"the-first-dwarves"}
})

DefineAchievement("the-mightiest-made", {
	Name = "The Mightiest Made",
	Icon = "icon-modsognir",
	Description = "Reach level 10 with Modsognir.",
	PlayerColor = "red",
	Character = "Modsognir",
	CharacterLevel = 10
})

DefineAchievement("a-home-in-the-fields-of-sand", {
	Name = "A Home in the Fields of Sand",
	Icon = "icon-joruvellir-scout-black-hair",
	Description = "Complete the A Home in the Fields of Sand scenario.",
	PlayerColor = "brown",
	RequiredQuests = {"a-home-in-the-fields-of-sand"}
})

DefineAchievement("the-treasures-of-svarinshaug", {
	Name = "The Treasures of Svarinshaug",
	Icon = "icon-dwarven-runemaster",
	Description = "Complete the The Mastersmith Brothers, The Ring of Riches, The Thunder Hammer and The Magnificent Spear quests.", -- don't require "The Sleek Ship" here since players are unlikely to build a dock in the dwarven scenarios
	PlayerColor = "red",
	RequiredQuests = {"the-mastersmith-brothers", "the-ring-of-riches", "the-thunder-hammer", "the-magnificent-spear"}
})

DefineAchievement("the-lay-of-alvis", {
	Name = "The Lay of Alvis",
	Icon = "icon-dwarven-witness",
	Description = "Complete the The Dripping Hall, The Deep, The Burner and The Weaver of Dreams quests.",
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
