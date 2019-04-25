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
--      (c) Copyright 2015-2019 by Andrettin
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
	SetPlayerData(0, "Faction", "brising-clan")
	SetPlayerData(0, "Resources", "copper", 5000)
	SetPlayerData(0, "Resources", "lumber", 2000)
	SetPlayerData(0, "Resources", "stone", 3000)
	SetPlayerData(1, "Faction", "shinsplitter-clan")
	SetPlayerData(1, "Name", "Bandits")
	SetPlayerData(1, "Resources", "copper", 5000)
	SetPlayerData(1, "Resources", "lumber", 2000)
	SetPlayerData(1, "Resources", "stone", 3000)
	SetPlayerData(1, "Allow", "unit-dwarven-smithy", "F")
	SetPlayerData(1, "Allow", "unit-dwarven-lumber-mill", "F")
	SetPlayerData(1, "Allow", "unit-dwarven-guard-tower", "F")
	SetPlayerData(1, "Allow", "unit-dwarven-stronghold", "F")
	
	unit = CreateUnit("unit-dwarven-axefighter", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
	SetUnitVariable(unit, "Character", "modsognir")
	unit = CreateUnit("unit-dwarven-axefighter", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
	SetUnitVariable(unit, "Character", "durin")
	unit = CreateUnit("unit-dwarven-steelclad", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
	SetUnitVariable(unit, "Active", false)
	
	unit = CreateUnit("unit-brising-miner", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
	unit = CreateUnit("unit-brising-miner", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
	unit = CreateUnit("unit-brising-miner", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
	unit = CreateUnit("unit-brising-miner", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
	unit = CreateUnit("unit-brising-miner", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
end

RemovePlayerObjective(GetFactionPlayer("Brising Clan"), "- Defeat your rivals")

AddTrigger("the-necklace-of-the-brisings-introduction",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Brising Clan") and not PlayerHasObjective(GetFactionPlayer("Brising Clan"), "- Defeat the bandits")) then
			player = GetFactionPlayer("Brising Clan")
			return true
		end
		return false
	end,
	function() 
		Event(
			"",
			"The necklace made for Modsognir's wife by a group of four dwarven smiths has been stolen! The culprits, a band of local dwarven thieves, sneaked away with the necklace last night, going back to their hideout. We must avenge this dishonor to our clan, and recover the necklace from these bandits!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				FindHero("modsognir"),
				"The scoundrels have their base in the Aurvang swamplands. We shall cross our axes with them soon.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					FindUnit("unit-brising-miner", GetFactionPlayer("Brising Clan")),
					"All of this for a necklace...",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						FindHero("modsognir"),
						"No, not just a necklace! What honor does our clan have if others can freely steal from us?",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							FindHero("durin"),
							"I don't much like the idea of a bandit outpost so near to our homes, either.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								FindHero("modsognir"),
								"Aye. Let's root them out.",
								player,
								{"~!Continue"},
								{function(s)
									AddPlayerObjective(player, "- Defeat the bandits")
									AddPlayerObjective(player, "- Modsognir must survive")
									AddPlayerObjective(player, "- Durin must survive")
								end}
							)
							end}
						)
						end}
					)
					end}
				)
				end}
			)
			end}
		)
		return false
	end
)

AddTrigger("the-necklace-of-the-brisings-victory",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Defeat the bandits") and GetNumRivals(GetThisPlayer()) == 0) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		Event(
			FindHero("durin"),
			"Bloody bandits, quite a piece of work they were.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				FindHero("modsognir"),
				"Durin, yer service to the clan has been invaluable. I believe that despite the loss of our sage's guidance, together we - warriors and leaders - can take the clan through the dangers of our new home.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					FindHero("modsognir"),
					"Ah, here's the necklace!",
					player,
					{"~!Continue"},
					{function(s)
						ActionVictory()
						SetQuestCompleted("the-necklace-of-the-brisings", GameSettings.Difficulty)
					end}
				)
				end}
			)
			end}
		)
		return false
	end
)

AddTrigger("the-necklace-of-the-brisings-modsognir-dies",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Modsognir must survive") and FindHero("modsognir", GetThisPlayer()) == nil) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		RemovePlayerObjective(player, "- Modsognir must survive")
		ActionDefeat()
		return false
	end
)

AddTrigger("the-necklace-of-the-brisings-durin-dies",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Durin must survive") and FindHero("durin", GetThisPlayer()) == nil) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		RemovePlayerObjective(player, "- Durin must survive")
		ActionDefeat()
		return false
	end
)
