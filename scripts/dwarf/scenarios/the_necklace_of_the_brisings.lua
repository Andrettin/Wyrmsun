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
	SetPlayerData(0, "Faction", "Modsogning Clan")
	SetPlayerData(0, "Resources", "gold", 5000)
	SetPlayerData(0, "Resources", "lumber", 1500)
	SetPlayerData(0, "Resources", "stone", 1000)
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
		unit = CreateUnit("unit-hero-modsognir", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-hero-durin", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-steelclad", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
	elseif (GrandStrategyEventMap) then
		CreateProvinceUnits("Svarinshaug", 0, 1, false, true)
		for i, unitName in ipairs(Units) do
			if (IsHero(unitName) and GetProvinceHero("Svarinshaug", unitName) == 2) then
				unit = OldCreateUnit(unitName, 0, {Players[0].StartPos.x, Players[0].StartPos.y})
				SetProvinceHero("Svarinshaug", unitName, 0)
			end
		end
		
		if (FactionHasHero(GetFactionFromName("Modsogning Clan"), "unit-hero-modsognir")) then
			RemoveHeroFromFaction("unit-hero-modsognir", GetFactionFromName("Modsogning Clan"))
			unit = CreateUnit("unit-hero-modsognir", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		end
		if (FactionHasHero(GetFactionFromName("Modsogning Clan"), "unit-hero-durin")) then
			RemoveHeroFromFaction("unit-hero-durin", GetFactionFromName("Modsogning Clan"))
			unit = CreateUnit("unit-hero-durin", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		end
		unit = CreateUnit("unit-dwarven-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		
		CreateProvinceUnits("Aurvang", 1, 1)
		
		-- don't allow the player to build/train units if in grand strategy mode
		SetPlayerData(0, "Allow", "unit-dwarven-miner", "F")
		SetPlayerData(0, "Allow", "unit-dwarven-town-hall", "F")
		SetPlayerData(0, "Allow", "unit-dwarven-mushroom-farm", "F")
		SetPlayerData(0, "Allow", "unit-dwarven-barracks", "F")
		SetPlayerData(0, "Allow", "unit-dwarven-smithy", "F")
		SetPlayerData(0, "Allow", "unit-dwarven-lumber-mill", "F")
		SetPlayerData(0, "Allow", "unit-dwarven-sentry-tower", "F")
		SetPlayerData(0, "Allow", "unit-gold-mine", "F")
	end
end

RemovePlayerObjective(GetFactionPlayer("Modsogning Clan"), "- Defeat your enemies")

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Modsogning Clan") and not PlayerHasObjective(GetFactionPlayer("Modsogning Clan"), "- Defeat the bandits")) then
			player = GetFactionPlayer("Modsogning Clan")
			return true
		end
		return false
	end,
	function() 
		Event(
			"",
			"The necklace made for Modsognir's wife by the Brisings - a group of four dwarven smiths - has been stolen! The culprits, a band of local dwarven thieves, sneaked away with the necklace last night, going back to their hideout. We must avenge this dishonor on our clan, and recover the necklace from these bandits!",
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
					FindUnit("unit-dwarven-miner", GetFactionPlayer("Modsogning Clan")),
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
		if (PlayerHasObjective(GetThisPlayer(), "- Modsognir must survive") and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-hero-modsognir") < 1 and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-hero-modsognir-thane") < 1) then
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
		if (PlayerHasObjective(GetThisPlayer(), "- Durin must survive") and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-hero-durin") < 1 and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-hero-durin-thane") < 1) then
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
