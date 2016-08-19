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

DefineQuest("trors-inheritance", {
	Name = "Tror's Inheritance",
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

DefineQuest("the-chieftains-sparrow", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 231-232.
	Name = "The Chieftain's Sparrow",
	Icon = "icon-gryphon", -- should be a sparrow
	Description = "My chieftain, I bring sad news of the sparrow you worked so hard to train. A few days ago it flew to a farm called Varva in Reidgotaland. Upon seeing the bird close to his crops, a peasant threw a stone and killed it! Shall we take revenge and burn Varva to the ground?",
	World = "Earth",
	Civilization = "norse",
	PlayerColor = "blue",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "Yngling Tribe" or GetPlayerData(trigger_player, "Faction") == "Swede Tribe") then
			return true
		else
			return false
		end
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "gold", GetPlayerData(trigger_player, "Resources", "gold") + 500)
	end,
	Objectives = {"- Destroy Varva"},
	Rewards = "+500 Gold",
	Hidden = true
	-- still need to add objective (destroy unique farm Varva) (the objective above is just a descriptive string)
})

DefineQuest("the-roadmaker", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 247-248.
	Name = "The Roadmaker", -- Onund Roadmaker was a Swedish king known for building roads through all of Sweden
	Icon = "icon-germanic-worker", -- should be a Norse worker
	Description = "Our realm has many uninhabited wildernesses which take a long time to journey through. If we are to increase our settled areas, roads should be built throughout the land.",
	World = "Earth",
	Civilization = "norse",
	PlayerColor = "blue",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "Yngling Tribe" or GetPlayerData(trigger_player, "Faction") == "Swede Tribe" or GetPlayerData(trigger_player, "Faction") == "Sweden") then
			return true
		end
		-- should check if the player can build roads, and perhaps if there are towns not connected by roads (or alternatively, if there have been too few roads built by the player)
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "gold", GetPlayerData(trigger_player, "Resources", "gold") + 500)
		SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") + 250)
	end,
	Objectives = {"- Build 20 Roads"}, -- 20 road tiles
	Rewards = "+500 Gold, +250 Lumber",
	Hidden = true
})

DefineQuest("ottars-lineage", {
	Name = "Ottar's Lineage",
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
