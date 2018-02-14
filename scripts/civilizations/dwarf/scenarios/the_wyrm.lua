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
--      (c) Copyright 2014-2018 by Andrettin
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

if (LoadedGame == false) then
	SetAiType(1, "land-attack")
	SetPlayerData(2, "Name", "Svafnir")
	SetPlayerData(3, "Name", "Abandoned Stronghold")
end

-- If Rugnur dies, any quests of the Scepter of Fire campaign currently being pursued fail
AddTrigger("the-wyrm-rugnur-dies",
	function()
		if (GameCycle == 0) then
			return false
		end
		if ((PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have one unit standing on each glyph at the same time") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Find Thursagan and bring him to your Mead Hall") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Mine 10000 copper and 20000 coal") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Defeat Glonoin, the Shorbear Clan leader") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have all heroes in the Shorbear caves (in the center of the map) while no enemies are in them") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Move Rugnur to the northeast cave entrance") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Get all heroes to the end of the tunnel") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Rugnur, Baglur and Thursagan must survive")) and FindHero("rugnur", GetFactionPlayer("Norlund Clan")) == nil) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function() 
		RemovePlayerObjective(player, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")
		RemovePlayerObjective(player, "- Have one unit standing on each glyph at the same time")
		RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
		RemovePlayerObjective(player, "- Mine 10000 copper and 20000 coal")
		RemovePlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
		RemovePlayerObjective(player, "- Have all heroes in the Shorbear caves (in the center of the map) while no enemies are in them")
		if (mapinfo.description == "Chaincolt Foothills" or mapinfo.description == "Caverns of Chaincolt" or mapinfo.description == "Northern Wastelands" or mapinfo.description == "Eastern Mines" or mapinfo.description == "Shorbear Hills" or mapinfo.description == "Svafnir's Lair" or mapinfo.description == "Caverns of Flame") then
			if (GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
				ActionDefeat()
			end
		end
		return false
	end
)

-- If Baglur dies, any quests of the Scepter of Fire campaign currently being pursued fail
AddTrigger("the-wyrm-baglur-dies",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (
			(
				PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have one unit standing on each glyph at the same time")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Find Thursagan and bring him to your Mead Hall")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Mine 10000 copper and 20000 coal") 
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Defeat Glonoin, the Shorbear Clan leader")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have all heroes in the Shorbear caves (in the center of the map) while no enemies are in them")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Move Rugnur to the northeast cave entrance")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Get all heroes to the end of the tunnel")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Rugnur, Baglur and Thursagan must survive")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Durstorn and Baglur must survive")
			)
			and FindHero("baglur", GetFactionPlayer("Norlund Clan")) == nil
			and (GetFactionExists("Baglur") == false or FindHero("baglur", GetFactionPlayer("Baglur")) == nil)
		) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function() 
		RemovePlayerObjective(player, "- Have one unit standing on each glyph at the same time")
		RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
		RemovePlayerObjective(player, "- Mine 10000 copper and 20000 coal")
		RemovePlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
		RemovePlayerObjective(player, "- Have all heroes in the Shorbear caves (in the center of the map) while no enemies are in them")
		if (GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
			ActionDefeat()
		end
		return false
	end
)

-- If Thursagan dies, any quests of the Scepter of Fire campaign currently being pursued fail
AddTrigger("the-wyrm-thursagan-dies",
	function()
		if (GameCycle == 0) then
			return false
		end
		if ((PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Mine 10000 copper and 20000 coal") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Defeat Glonoin, the Shorbear Clan leader") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have all heroes in the Shorbear caves (in the center of the map) while no enemies are in them") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Move Rugnur to the northeast cave entrance") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Get all heroes to the end of the tunnel") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Rugnur, Baglur and Thursagan must survive")) and FindHero("thursagan", GetFactionPlayer("Norlund Clan")) == nil and FindHero("thursagan", PlayerNumNeutral) == nil) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function() 
		RemovePlayerObjective(player, "- Mine 10000 copper and 20000 coal")
		RemovePlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
		RemovePlayerObjective(player, "- Have all heroes in the Shorbear caves (in the center of the map) while no enemies are in them")
		if (mapinfo.description == "Eastern Mines" or mapinfo.description == "Shorbear Hills" or mapinfo.description == "Svafnir's Lair" or mapinfo.description == "Caverns of Flame") then
			if (GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
				ActionDefeat()
			end
		end
		return false
	end
)

-- The Wyrm initial dialogue
-- based on The Dragon scenario of the Sceptre of Fire campaign from Battle for Wesnoth
AddTrigger("the-wyrm-introduction",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Get all heroes to the end of the tunnel") == false) then
			for i=0, (PlayerMax - 2) do
				if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Knalga") and FindHero("rugnur", i) ~= nil and FindHero("baglur", i) ~= nil and FindHero("thursagan", i) ~= nil) then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		Event(
			"",
			"Thus the gnomish envoy escaped from his Shinsplitter pursuers. But the dwarves were not so lucky. I would say that, perhaps, their betrayal of Durstorn was coming back to haunt them. For the section of the old eastern mines that they reached in their flight had long since become the lair of Svafnir... the wyrm.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				FindHero("rugnur"),
				"Well, Thursagan, we've reached the eastern mines, but the Shinsplitters are hot on our trail. What do we do now?",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					FindHero("thursagan"),
					"Well, we have two choices. We may either stand and fight, and assuredly die, or run as quickly as possible down this path into the depths of the cave, where we may find something that will help us. Also, remember, the Shinsplitters will take some time to have their full strength here, so we may be able to get ahead of them and perhaps lay a trap.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Gryphon Rider",
						"Why don't we just surrender? All they want is that stone!",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							FindHero("rugnur"),
							"If we give them the ruby, then what? They'll probably kill us anyway. And, that ruby is very valuable, they could use it to gain funds and become even more dangerous. We can't let it fall into the wrong hands.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								FindHero("thursagan"),
								"Then we shall run.",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									FindHero("baglur"),
									"So we're running away, eh? I dinna' like that, but it seems it's our only option.",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										FindHero("rugnur"),
										"If it makes ye feel any better, we'll probably die this way, too.",
										player,
										{"~!Continue"},
										{function(s)
											if (mapinfo.description == "Svafnir's Lair") then
												RemovePlayerObjective(player, "- Defeat your rivals")
											end
											AddPlayerObjective(player, "- Get all heroes to the end of the tunnel")
											AddPlayerObjective(player, "- Rugnur, Baglur and Thursagan must survive")
										end}
									)
									end}
								)
								end}
							)
							end}
						)
						end},
						"icon-dwarven-gryphon-rider"
					)
					end}
				)
				end}
			)
			end},
			nil,
			nil,
			GrandStrategy
		)
		return false
	end
)

-- make the Shinsplitter and kobold units chase Rugnur's dwarves
AddTrigger("the-wyrm-shinsplitter-and-kobold-chase",
	function()
		if (GameCycle == 0) then
			return false
		end
		return true
	end,
	function() 
		-- make the initial Shinsplitter units attack (later units follow the normal AI attack pattern)
		if (GetFactionPlayer("Shinsplitter Clan") ~= GetThisPlayer()) then
			uncount = 0
			uncount = GetUnits(GetFactionPlayer("Shinsplitter Clan"))
			for unit1 = 1,table.getn(uncount) do 
				if (uncount[unit1] and GetUnitVariable(uncount[unit1], "Idle") and GetUnitVariable(uncount[unit1],"Ident") ~= "unit-dwarven-miner" and GetUnitVariable(uncount[unit1],"Ident") ~= "unit-dwarven-skilled-miner" and GetUnitVariable(uncount[unit1],"Ident") ~= "unit-dwarven-expert-miner" and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Building") == false) then
					OrderUnit(1, GetUnitVariable(uncount[unit1],"Ident"), {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, 0, {27, 63}, 0, "attack")
				end
			end
			
			if (GetPlayerData(GetFactionPlayer("Svafnir"), "TotalNumUnitsConstructed") > 1) then -- the wyrm and kobolds only attack after the kobolds have been generated, and they don't attack if the player is the Shinsplitter Clan
				uncount = 0
				uncount = GetUnits(GetFactionPlayer("Svafnir"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitVariable(uncount[unit1], "Idle")) then
						OrderUnit(2, GetUnitVariable(uncount[unit1],"Ident"), {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, 0, {27, 63}, 0, "attack")
					end
				end
			end
		end

		return true
	end
)

-- make the Norlunds move to the smithy
AddTrigger("the-wyrm-norlunds-move-to-smithy",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionPlayer("Norlund Clan") == GetThisPlayer() or FindHero("thursagan", PlayerNumNeutral) ~= nil) then
			return false
		end
		return true
	end,
	function() 
		local smithy = nil
		local thursagan = FindHero("thursagan")
	
		local uncount = 0
		uncount = GetUnits("any")
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1],"Ident") == "unit-brising-smithy" and GetUnitVariable(uncount[unit1],"Player") ~= GetFactionPlayer("Shinsplitter Clan")) then
				smithy = uncount[unit1]
			end
		end

		if (smithy == nil or thursagan == nil) then
			return true
		end

		-- make the initial Shinsplitter units attack (later units follow the normal AI attack pattern)
		uncount = 0
		uncount = GetUnits(GetFactionPlayer("Norlund Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if (uncount[unit1] and GetUnitVariable(uncount[unit1],"Ident") ~= "unit-dwarven-scout" and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Building") == false and GetUnitVariable(uncount[unit1], "Idle")) then
				if (GetUnitVariable(uncount[unit1],"Character") ~= "thursagan") then
					OrderUnit(GetFactionPlayer("Norlund Clan"), GetUnitVariable(uncount[unit1],"Ident"), {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, 0, {GetUnitVariable(thursagan,"PosX"), GetUnitVariable(thursagan,"PosY")}, 0, "move")
				else
					OrderUnit(GetFactionPlayer("Norlund Clan"), GetUnitVariable(uncount[unit1],"Ident"), {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, 0, {GetUnitVariable(smithy,"PosX"), GetUnitVariable(smithy,"PosY")}, 0, "move")
				end
			end
		end
		
		return true
	end
)

-- event when Svafnir is sighted
AddTrigger("the-wyrm-svafnir-sighted",
	function()
		if (GameCycle == 0) then
			return false
		end
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Svafnir"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-wyrm") then
				local unit_quantity = GetNumUnitsAt(GetFactionPlayer("Norlund Clan"), "any", {GetUnitVariable(uncount[unit1],"PosX") - 4, GetUnitVariable(uncount[unit1],"PosY") - 4}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4})
				if (unit_quantity > 0) then
					player = GetFactionPlayer("Norlund Clan")
					return true
				end
			end
		end
		return false
	end,
	function() 
		Event(
			FindHero("rugnur"),
			"Look, there's a wyrm in these caves!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				FindHero("thursagan"),
				"I wonder which of the great wyrms this is...",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					FindHero("rugnur"),
					"I'd rather face one powerful wyrm than hundreds of mighty dwarves. Continue!",
					player,
					{"~!Continue"},
					{function(s)
					end}
				)
				end}
			)
			end}
		)
		return false
	end
)

-- event when a Surghan Mercenary is sighted
AddTrigger("the-wyrm-surghan-mercenary-sighted",
	function()
		if (GameCycle == 0) then
			return false
		end
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Shinsplitter Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-surghan-mercenary-steelclad" or GetUnitVariable(uncount[unit1], "Ident") == "unit-surghan-mercenary-thane") then
				local unit_quantity = GetNumUnitsAt(GetFactionPlayer("Norlund Clan"), "any", {GetUnitVariable(uncount[unit1],"PosX") - 4, GetUnitVariable(uncount[unit1],"PosY") - 4}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4})
				if (unit_quantity > 0) then
					player = GetFactionPlayer("Norlund Clan")
					return true
				end
			end
		end
		return false
	end,
	function() 
		Event(
			FindHero("thursagan"),
			"What's this? This isn't a normal dwarven soldier!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				FindHero("baglur"),
				"It must be one of those Surghan mercenaries. I'll bet those Shinsplitters have hired more of them. That's bad news for us, for they are deadly, combat-hardened warriors.",
				player,
				{"~!Continue"},
				{function(s)
				end}
			)
			end}
		)
		return false
	end
)

-- event when the Gryphon Rider sees the forge
AddTrigger("the-wyrm-gryphon-rider-sees-forge",
	function()
		if (GameCycle == 0) then
			return false
		end
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Norlund Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-gryphon-rider") then
				local unit_quantity = GetNumUnitsAt(-1, "unit-brising-smithy", {GetUnitVariable(uncount[unit1],"PosX") - 6, GetUnitVariable(uncount[unit1],"PosY") - 6}, {GetUnitVariable(uncount[unit1],"PosX") + 6, GetUnitVariable(uncount[unit1],"PosY") + 6})
				if (unit_quantity > 0) then
					player = GetFactionPlayer("Norlund Clan")
					return true
				end
			end
		end
		return false
	end,
	function() 
		Event(
			"Gryphon Rider",
			"Look, I've found something here!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				FindHero("thursagan"),
				"It looks like a forge, heated by lava. It looks ancient, and it looks hot enough to make the Scepter.",
				player,
				{"~!Continue"},
				{function(s)
					AddPlayerObjective(player, "- Move Thursagan to the forge")
					AddPlayerObjective(player, "- Defend Thursagan until the Scepter of Fire is complete")
				end}
			)
			end},
			"icon-dwarven-gryphon-rider"
		)
		-- there should be a version of the dialogue if another unit finds the forge, too
		return false
	end
)

-- event when Thursagan reaches the forge
AddTrigger("the-wyrm-thursagan-reaches-forge",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (UnitIsAt(FindHero("thursagan"), {30, 48}, {34, 52})) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function() 
		if (FindHero("thursagan", GetFactionPlayer("Norlund Clan")) ~= nil) then
			Event(
				FindHero("thursagan"),
				"This forge will work perfectly. Give me a few days here, and I can reforge the Scepter of Fire to become a proper artifact.",
				player,
				{"~!Continue"},
				{function(s)
					SetUnitVariable(FindHero("thursagan", GetFactionPlayer("Norlund Clan")), "LastCycle", GameCycle)
					ChangeUnitOwner(FindHero("thursagan", GetFactionPlayer("Norlund Clan")), PlayerNumNeutral)
				end}
			)
		end
		return false
	end
)

-- kobolds come to Svafnir's rescue if it is attacked
AddTrigger("the-wyrm-kobolds-defend-svafnir",
	function()
		if (GameCycle == 0) then
			return false
		end
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Svafnir"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-wyrm") then
				if (GetUnitVariable(uncount[unit1], "HitPoints") < GetUnitVariable(uncount[unit1], "HitPoints", "Max")) then
					player = GetThisPlayer()
					return true
				else
					return false
				end
			end
		end
		return false
	end,
	function()
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Svafnir"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-wyrm") then
				unit = CreateUnit("unit-kobold-footpad", GetFactionPlayer("Svafnir"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
				unit = CreateUnit("unit-kobold-footpad", GetFactionPlayer("Svafnir"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
				unit = CreateUnit("unit-kobold-footpad", GetFactionPlayer("Svafnir"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
				if (GameSettings.Difficulty == DifficultyHard) then -- if difficulty is hard
					unit = CreateUnit("unit-kobold-footpad", GetFactionPlayer("Svafnir"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
					unit = CreateUnit("unit-kobold-footpad", GetFactionPlayer("Svafnir"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
				elseif (GameSettings.Difficulty == DifficultyBrutal) then -- if difficulty is brutal
					unit = CreateUnit("unit-kobold-footpad", GetFactionPlayer("Svafnir"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
					unit = CreateUnit("unit-kobold-footpad", GetFactionPlayer("Svafnir"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
					unit = CreateUnit("unit-kobold-footpad", GetFactionPlayer("Svafnir"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
					unit = CreateUnit("unit-kobold-footpad", GetFactionPlayer("Svafnir"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
				end
			end
		end
					
		local kobold_footpad_a = nil
		local kobold_footpad_b = nil
	
		local uncount = 0
		uncount = GetUnits("any")
		
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-kobold-footpad") then
				if (kobold_footpad_a == nil) then
					kobold_footpad_a = uncount[unit1]
				else
					kobold_footpad_b = uncount[unit1]
				end
			end
		end
	
		Event(
			kobold_footpad_a,
			"By the fiery Wyrmsun! The breastlings are attacking the ancient beast...!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				kobold_footpad_b,
				"We cannot allow one of the few surviving great wyrms to be slain! Get at them!",
				player,
				{"~!Continue"},
				{function(s)
				end}
			)
			end}
		)
		return false
	end
)

-- Thursagan completes the Scepter of Fire
AddTrigger("the-wyrm-victory",
	function()
		if (GameCycle == 0) then
			return false
		end
		local uncount = 0
		uncount = GetUnits(PlayerNumNeutral)
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Character") == "thursagan" and (GameCycle - GetUnitVariable(uncount[unit1], "LastCycle")) > 6000) then -- Scepter is crafted after 6000 cycles
				unit = CreateUnit("unit-scepter-of-fire", PlayerNumNeutral, {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY") + 1})
				player = GetFactionPlayer("Norlund Clan")
				return true
			end
		end
		return false
	end,
	function() 
		ChangeUnitOwner(FindHero("thursagan"), GetFactionPlayer("Norlund Clan"))
		Event(
			FindHero("thursagan"),
			"I have completed my work. Now it is truly the Scepter of Fire, a mighty artifact.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				FindHero("rugnur"),
				"Good. Now, let's get out of this cave, before the dwarves or kobolds kill us!",
				player,
				{"~!Continue"},
				{function(s)
					if (GrandStrategy) then
						KillUnitAt("unit-dwarven-guard-tower", GetFactionPlayer("Norlund Clan"), GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-dwarven-guard-tower"), {0, 0}, {512, 512})
						KillUnitAt("unit-dwarven-scout", GetFactionPlayer("Norlund Clan"), GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-dwarven-scout"), {0, 0}, {512, 512})
					end
					if (GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
						ActionVictory()
						if (player == GetThisPlayer() and GrandStrategy == false) then
							SetQuestCompleted("the-wyrm", GameSettings.Difficulty)
						end
					elseif (GetFactionPlayer("Shinsplitter Clan") == GetThisPlayer()) then
						Event(
							"",
							"The dwarves of the Norlund clan have disappeared into some nearby tunnel!",
							GetFactionPlayer("Shinsplitter Clan"),
							{"~!Continue"},
							{function(s)
								ActionDefeat()
							end}
						)
					end
				end}
			)
			end}
		)
		return false
	end
)
