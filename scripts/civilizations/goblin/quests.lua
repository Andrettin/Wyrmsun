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
--      (c) Copyright 2013-2019 by Andrettin
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

DefineQuest("gathaarls-children", { -- based on the description of Gathaarl in Tyrant
	Name = "Gathaarl's Children",
	Icon = "icon-goblin-farm",
	Description = "One of the main doctrines of our god Gathaarl is that we should multiply ourselves to outnumber our enemies. Build some farms to feed our people... and let's begin covering the land in goblin green.",
	World = "nidavellir",
	Civilization = "goblin",
	PlayerColor = "teal",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "goblin" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-goblin-worker") > 0 and CheckDependency(trigger_player, "unit-goblin-farm")) then -- should be made to require Gathaarl being worshiped in the future
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 1000)
		SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") + 1000)
		SetPlayerData(trigger_player, "Resources", "stone", GetPlayerData(trigger_player, "Resources", "stone") + 500)
	end,
	Rewards = "+1000 Copper, +1000 Lumber, +500 Stone",
	Hint = "Select a Drudge, press the Build Structure button and then click on the Build Farm button to build the structure required for this quest.",
	Objectives = {
		{
			"objective-type", "build-units",
			"objective-string", "Build 3 Farms",
			"quantity", 3,
			"unit-type", "unit-goblin-farm"
		}
	}
})
DefineQuest("agniss-mysticism", { -- based on the description of Agniss Tenebris by Jesse Crider
	Name = "Agniss' Mysticism",
	Icon = "icon-goblin-temple",
	Description = "The hooded witch Agniss finds it imperative for us to build a temple, so that we may develop our mystical power. She adds that the terror-inspiring shamans trained there will bring fear to the heart of our enemies, and keep our population in line.",
	World = "nidavellir",
	Civilization = "goblin",
	PlayerColor = "black",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "goblin" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-goblin-worker") > 0 and GetPlayerData(trigger_player, "UnitTypesCount", "unit-goblin-temple") == 0 and CheckDependency(trigger_player, "unit-goblin-temple")) then -- should be made to require Agniss in the future, and be specific to the Tenebris Syndicate
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 1000)
		SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") + 1000)
		SetPlayerData(trigger_player, "Resources", "stone", GetPlayerData(trigger_player, "Resources", "stone") + 500)
	end,
	Rewards = "+1000 Copper, +1000 Lumber, +500 Stone",
	Hint = "Select a Drudge, press the Build Structure button and then click on the Build Temple button to build the structure required for this quest.",
	Objectives = {
		{
			"objective-type", "build-units",
			"objective-string", "Build a Temple",
			"quantity", 1,
			"unit-type", "unit-goblin-temple"
		}
	}
})

DefineQuest("dremacs-wealth", { -- based on the description of Dremac Paarsins by Jesse Crider
	Name = "Dremac's Wealth",
	Icon = "icon-goblin-coinage",
	Description = "The wealthy merchant lord Dremac Paarsins seeks to implement a coinage system amongst us, to improve the exchange of goods and services. Doing so will need a significant investment, however.",
	World = "nidavellir",
	Civilization = "goblin",
	PlayerColor = "cyan",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "goblin" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-goblin-stronghold") > 0 and GetPlayerData(trigger_player, "Allow", "upgrade-goblin-coinage") == "A" and CheckDependency(trigger_player, "upgrade-goblin-coinage")) then -- should be made to require Dremac Paarsins in the future, and be specific to the Myridia Syndicate
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 1000)
		SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") + 1000)
		SetPlayerData(trigger_player, "Resources", "stone", GetPlayerData(trigger_player, "Resources", "stone") + 500)
	end,
	Rewards = "+1000 Copper, +1000 Lumber, +500 Stone",
	Hint = "Select a Stronghold and then click on the Research Coinage button to research the technology required for this quest.",
	Objectives = {
		{
			"objective-type", "research-upgrade",
			"objective-string", "Research Coinage",
			"upgrade", "upgrade-goblin-coinage"
		}
	}
})

DefineQuest("iouns-tactics", { -- based on the description of Ioun Stilgar by Jesse Crider
	Name = "Ioun's Tactics",
	Icon = "icon-goblin-mess-hall",
	Description = "The veteran tactician Ioun declares that we must soon build a mess hall, to allow us to train soldiers and to improve our knowledge of tactics. He says that failure to do so in a timely manner may well result in our death at the hands of our enemies.",
	World = "nidavellir",
	Civilization = "goblin",
	PlayerColor = "blue",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "goblin" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-goblin-worker") > 0 and GetPlayerData(trigger_player, "UnitTypesCount", "unit-goblin-mess-hall") == 0 and CheckDependency(trigger_player, "unit-goblin-mess-hall")) then -- should be made to require Agniss in the future, and be specific to the Tenebris Syndicate
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 1000)
		SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") + 1000)
		SetPlayerData(trigger_player, "Resources", "stone", GetPlayerData(trigger_player, "Resources", "stone") + 500)
	end,
	Rewards = "+1000 Copper, +1000 Lumber, +500 Stone",
	Hint = "Select a Drudge, press the Build Structure button and then click on the Build Mess Hall button to build the structure required for this quest.",
	Objectives = {
		{
			"objective-type", "build-units",
			"objective-string", "Build a Mess Hall",
			"quantity", 1,
			"unit-type", "unit-goblin-mess-hall"
		}
	}
})

DefineQuest("orzas-scholarship", { -- based on the description of Orza Chahax by Jesse Crider
	Name = "Orza's Scholarship",
	Icon = "icon-norse-runewriting",
	Description = "The scholar Orza Chahax finds that our civilization's sophistication leaves much to be desired. He says that we should promote the creation of a system of writing, so that knowledge may be more easily passed on from generation to generation.",
	World = "nidavellir",
	Civilization = "goblin",
	PlayerColor = "white",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "goblin" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-goblin-stronghold") > 0 and GetPlayerData(trigger_player, "Allow", "upgrade-goblin-writing") == "A" and CheckDependency(trigger_player, "upgrade-goblin-writing")) then -- should be made to require Orza Chahax in the future, and be specific to the Ezmarria Syndicate
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 1000)
		SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") + 1000)
		SetPlayerData(trigger_player, "Resources", "stone", GetPlayerData(trigger_player, "Resources", "stone") + 500)
	end,
	Rewards = "+1000 Copper, +1000 Lumber, +500 Stone",
	Hint = "Select a Stronghold and then click on the Research Writing button to research the technology required for this quest.",
	Objectives = {
		{
			"objective-type", "research-upgrade",
			"objective-string", "Research Writing",
			"upgrade", "upgrade-goblin-writing"
		}
	}
})
