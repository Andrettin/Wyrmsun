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
--      (c) Copyright 2015 by Andrettin
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
	SetPlayerData(0, "Faction", "Brising Clan")
	SetPlayerData(0, "Resources", "gold", 5000)
	SetPlayerData(0, "Resources", "lumber", 1500)
	SetPlayerData(0, "Resources", "stone", 1000)
	SetPlayerData(1, "RaceName", "dwarf")
	SetPlayerData(1, "Faction", "Shinsplitter Clan")
	SetPlayerData(1, "Name", "Bandits")
	SetPlayerData(1, "Resources", "gold", 5000)
	SetPlayerData(1, "Resources", "lumber", 1500)
	SetPlayerData(1, "Resources", "stone", 1000)
	SetPlayerData(1, "Allow", "unit-dwarven-smithy", "F")
	SetPlayerData(1, "Allow", "unit-dwarven-lumber-mill", "F")
	SetPlayerData(1, "Allow", "unit-dwarven-guard-tower", "F")
	SetPlayerData(1, "Allow", "unit-dwarven-stronghold", "F")
	SetPlayerData(0, "Allow", "upgrade-dwarven-runewriting", "F")
	SetPlayerData(1, "Allow", "upgrade-dwarven-runewriting", "F")
	
	if not (GrandStrategy) then
		unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Character", "Modsognir")
		unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Character", "Durin")
		unit = CreateUnit("unit-brising-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-brising-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-brising-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-brising-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-brising-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-steelclad", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
	elseif (GrandStrategyEventMap) then
		CreateProvinceUnits("Svarinshaug", 0, 1, false, true)
		CreateProvinceCustomHero("Svarinshaug", 0)
		
		if (FactionHasHero("dwarf", "Brising Clan", "Modsognir")) then
			unit = CreateUnit(GetGrandStrategyHeroUnitType("Modsognir"), 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			SetUnitVariable(unit, "Character", "Modsognir")
		end
		if (FactionHasHero("dwarf", "Brising Clan", "Durin")) then
			unit = CreateUnit(GetGrandStrategyHeroUnitType("Durin"), 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			SetUnitVariable(unit, "Character", "Durin")
		end
		
		CreateProvinceUnits("Aurvang", 1, 1)
		
		-- don't allow the player to build/train units if in grand strategy mode
		SetPlayerData(0, "Allow", "unit-brising-miner", "F")
		SetPlayerData(0, "Allow", "unit-brising-town-hall", "F")
		SetPlayerData(0, "Allow", "unit-dwarven-mushroom-farm", "F")
		SetPlayerData(0, "Allow", "unit-dwarven-barracks", "F")
		SetPlayerData(0, "Allow", "unit-brising-smithy", "F")
		SetPlayerData(0, "Allow", "unit-dwarven-lumber-mill", "F")
		SetPlayerData(0, "Allow", "unit-dwarven-sentry-tower", "F")
		SetPlayerData(0, "Allow", "unit-gold-mine", "F")
		SetPlayerData(0, "Allow", "unit-silver-mine", "F")
		SetPlayerData(0, "Allow", "unit-copper-mine", "F")
		SetPlayerData(1, "Allow", "unit-dwarven-miner", "F")
		SetPlayerData(1, "Allow", "unit-dwarven-town-hall", "F")
		SetPlayerData(1, "Allow", "unit-dwarven-mushroom-farm", "F")
		SetPlayerData(1, "Allow", "unit-dwarven-barracks", "F")
		SetPlayerData(1, "Allow", "unit-dwarven-smithy", "F")
		SetPlayerData(1, "Allow", "unit-dwarven-lumber-mill", "F")
		SetPlayerData(1, "Allow", "unit-dwarven-sentry-tower", "F")
		SetPlayerData(1, "Allow", "unit-gold-mine", "F")
		SetPlayerData(1, "Allow", "unit-silver-mine", "F")
		SetPlayerData(1, "Allow", "unit-copper-mine", "F")
	end
end

RemovePlayerObjective(GetFactionPlayer("Brising Clan"), "- Defeat your enemies")

AddTrigger(
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
			"The necklace made for Modsognir's wife by a group of four dwarven smiths has been stolen! The culprits, a band of local dwarven thieves, sneaked away with the necklace last night, going back to their hideout. We must avenge this dishonor on our clan, and recover the necklace from these bandits!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				FindHero("Modsognir"),
				"The scoundrels have their base here in the Aurvang swamplands. We should be crossing our axes with them soon.",
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
						FindHero("Modsognir"),
						"No, not just a necklace! What honor does our clan have if others can freely steal from us?",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							FindHero("Durin"),
							"I don't much like the idea of a bandit outpost so near to our homes, either.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								FindHero("Modsognir"),
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
			end},
			nil,
			nil,
			GrandStrategy
		)
		return false
	end
)

AddTrigger(
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
			FindHero("Durin"),
			"Bloody bandits, quite a piece of work they were.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				FindHero("Modsognir"),
				"Durin, yer service to the clan has been invaluable. I believe that despite the loss of our sage's guidance, together we - warriors and leaders - can take the clan through the dangers of our new home.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					FindHero("Modsognir"),
					"Ah, here's the necklace!",
					player,
					{"~!Continue"},
					{function(s)
						if (GrandStrategy == false) then
							if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "The Necklace of the Brisings") == false) then
								table.insert(wyr.preferences.QuestsCompleted, "The Necklace of the Brisings")
							end
							SavePreferences()
						end
						ActionVictory()
					end}
				)
				end}
			)
			end}
		)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Modsognir must survive") and FindHero("Modsognir", GetThisPlayer()) == nil) then
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

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Durin must survive") and FindHero("Durin", GetThisPlayer()) == nil) then
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
