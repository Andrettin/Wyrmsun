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
--      (c) Copyright 2001-2020 by Lutz Sammer, Jimmy Salmon, Pali Rohár and Andrettin
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

InitFuncs:add(function()
	speedcheat = false
	godcheat = false
end)

function HandleCheats(str)
	local resources = {"copper", "lumber", "oil", "iron", "stone", "coal", "research", "prestige", "gold", "silver", "mithril", "limestone", "jewelry", "furniture", "leather", "diamonds", "emeralds", "leadership", "trade"}

	if (str == "im a lumberjack and its ok") then
		SetSpeedResourcesHarvest("lumber", 25)
	elseif (str == "otters ransom") then
		for i = 0, (PlayerMax - 2) do
			SetPlayerData(i, "Resources", "copper", GetPlayerData(i, "Resources", "copper") + 12000)
			SetPlayerData(i, "Resources", "lumber", GetPlayerData(i, "Resources", "lumber") + 10000)
			SetPlayerData(i, "Resources", "oil", GetPlayerData(i, "Resources", "oil") + 10000)
			SetPlayerData(i, "Resources", "stone", GetPlayerData(i, "Resources", "stone") + 10000)
			SetPlayerData(i, "Resources", "coal", GetPlayerData(i, "Resources", "coal") + 10000)
		end
		AddMessage("Resources increased!")
	elseif (str == "showpath") then -- reveals the map only to person players
		RevealMap(true)
		AddMessage("Map revealed")
	elseif (str == "heimdall") then -- reveals the map to all players
		RevealMap(false)
		AddMessage("Map revealed to all players")
	elseif (str == "fow on") then
		SetFogOfWar(true)
	elseif (str == "fow off") then
		SetFogOfWar(false)
	elseif (str == "fow") then
		if (GetFogOfWar() == true) then
			SetFogOfWar(false)
		else
			SetFogOfWar(true)
		end
	elseif (str == "fast debug") then
		for i = 1,table.getn(resources) do
			SetSpeedResourcesHarvest(resources[i], 10)
			SetSpeedResourcesReturn(resources[i], 10)
		end
		SetSpeedBuild(10)
		SetSpeedTrain(10)
		SetSpeedUpgrade(10)
		SetSpeedResearch(10)
		AddMessage("FAST DEBUG SPEED")
	elseif (str == "normal debug") then
		for i = 1,table.getn(resources) do
			SetSpeedResourcesHarvest(resources[i], 1)
			SetSpeedResourcesReturn(resources[i], 1)
		end
		SetSpeedBuild(1)
		SetSpeedTrain(1)
		SetSpeedUpgrade(1)
		SetSpeedResearch(1)
		AddMessage("NORMAL DEBUG SPEED")
	elseif (str == "hermes") then
		if (speedcheat) then
			speedcheat = false
			for i = 0,PlayerMax - 1 do
				for j = 1,table.getn(resources) do
					SetPlayerData(i, "SpeedResourcesHarvest", resources[j], GetPlayerData(i, "SpeedResourcesHarvest", resources[j]) / 10)
					SetPlayerData(i, "SpeedResourcesReturn", resources[j], GetPlayerData(i, "SpeedResourcesReturn", resources[j]) / 10)
				end
				SetPlayerData(i, "SpeedBuild", GetPlayerData(i, "SpeedBuild") / 10)
				SetPlayerData(i, "SpeedTrain", GetPlayerData(i, "SpeedTrain") / 10)
				SetPlayerData(i, "SpeedUpgrade", GetPlayerData(i, "SpeedUpgrade") / 10)
				SetPlayerData(i, "SpeedResearch", GetPlayerData(i, "SpeedResearch") / 10)
			end
			AddMessage(_("Faster disabled!"))
		else
			speedcheat = true
			for i = 0,PlayerMax - 1 do
				for j = 1,table.getn(resources) do
					SetPlayerData(i, "SpeedResourcesHarvest", resources[j], GetPlayerData(i, "SpeedResourcesHarvest", resources[j]) * 10)
					SetPlayerData(i, "SpeedResourcesReturn", resources[j], GetPlayerData(i, "SpeedResourcesReturn", resources[j]) * 10)
				end
				SetPlayerData(i, "SpeedBuild", GetPlayerData(i, "SpeedBuild") * 10)
				SetPlayerData(i, "SpeedTrain", GetPlayerData(i, "SpeedTrain") * 10)
				SetPlayerData(i, "SpeedUpgrade", GetPlayerData(i, "SpeedUpgrade") * 10)
				SetPlayerData(i, "SpeedResearch", GetPlayerData(i, "SpeedResearch") * 10)
			end
			AddMessage(_("Faster enabled!"))
		end
	elseif (str == "valhalla") then
		ActionVictory()
	elseif (str == "ragnarok") then
		ActionDefeat()
	elseif (str == "fenrir") then
		KillUnitAt("any", GetThisPlayer(), GetPlayerData(GetThisPlayer(), "TotalNumUnits"), {0, 0}, {512, 512})
	elseif (str == "hroptatyr") then
		if (godcheat) then
			godcheat = false
			SetGodMode(false)
			AddMessage("God Mode Off")
		else
			godcheat = true
			SetGodMode(true)
			AddMessage("God Mode On")
		end
	elseif (str == "fill mana") then
		t = GetUnits("this");
		for i = 1,table.getn(t) do
			SetUnitMana(t[i], 255)
		end
	elseif (str == "mead of wisdom") then
		AddMessage("All Technologies Allowed")
		for i, unitName in ipairs(Units) do
			for j=0,(PlayerMax - 1) do
				if (((string.find(unitName, "upgrade") ~= nil and GetUpgradeData(unitName, "Civilization") == GetPlayerData(j, "RaceName")) or (string.find(unitName, "upgrade") == nil and GetUnitTypeData(unitName, "Civilization") == GetPlayerData(j, "RaceName"))) and GetPlayerData(j, "Allow", unitName) ~= "R") then
					SetPlayerData(j, "Allow", unitName, "A")
				end
			end
		end
	elseif (str == "colossus of rhodes") then -- acquire all bronze age technologies
		AddMessage("Acquired Bronze Age Technologies")
		local bronze_upgrades = {
			"upgrade-wood-plow",
			"upgrade-dwarven-broad-axe", "upgrade-dwarven-long-spear", "upgrade-dwarven-shield-1", "upgrade-dwarven-sharp-throwing-axe", 
			"upgrade-germanic-broad-sword", "upgrade-germanic-long-spear", "upgrade-germanic-bronze-shield", "upgrade-germanic-barbed-arrow",
			"upgrade-goblin-broad-sword", "upgrade-goblin-rimmed-shield", "upgrade-goblin-long-spear", "upgrade-goblin-barbed-arrow"
		}
		for i, unitName in ipairs(bronze_upgrades) do
			for j=0,PlayerMax - 2 do
				if (CPlayer:GetPlayer(j).Type ~= PlayerNobody and unitName == GetFactionClassUnitType(GetUpgradeData(unitName, "Class"), GetPlayerData(j, "Faction"))) then
					SetPlayerData(j, "Allow", unitName, "R")
				end
			end
		end
	elseif (str == "dawn") then
		SetTimeOfDay("dawn")
	elseif (string.sub(str, 0, 4) == "dawn") then
		SetTimeOfDay("dawn", tonumber(string.sub(str, 6)))
	elseif (str == "alsvid") then
		SetTimeOfDay("morning")
	elseif (string.sub(str, 0, 6) == "alsvid") then
		SetTimeOfDay("morning", tonumber(string.sub(str, 8)))
	elseif (str == "dusk") then
		SetTimeOfDay("dusk")
	elseif (string.sub(str, 0, 4) == "dusk") then
		SetTimeOfDay("dusk", tonumber(string.sub(str, 6)))
	elseif (str == "nightly terrors") then
		SetTimeOfDay("midnight")
	elseif (string.sub(str, 0, 15) == "nightly terrors") then
		SetTimeOfDay("midnight", tonumber(string.sub(str, 17)))
	elseif (str == "dream of spring") then
		SetSeason("spring")
	elseif (string.sub(str, 0, 15) == "dream of spring") then
		SetSeason("spring", tonumber(string.sub(str, 17)))
	elseif (str == "summer child") then
		SetSeason("summer")
	elseif (string.sub(str, 0, 12) == "summer child") then
		SetSeason("summer", tonumber(string.sub(str, 14)))
	elseif (str == "winds of winter") then
		SetSeason("winter")
	elseif (string.sub(str, 0, 15) == "winds of winter") then
		SetSeason("winter", tonumber(string.sub(str, 17)))
	elseif (str == "fly me to the moon") then
		SetTimeOfDaySchedule("lunar-schedule")
		SetSeasonSchedule("lunar-schedule")
	elseif (string.sub(str, 0, 18) == "fly me to the moon") then
		SetTimeOfDaySchedule("lunar-schedule", tonumber(string.sub(str, 20)))
		SetSeasonSchedule("lunar-schedule", tonumber(string.sub(str, 20)))
	elseif (str == "king of the galactic seas") then
		SetTimeOfDaySchedule("neptunian-schedule")
		SetSeasonSchedule("neptunian-schedule")
	elseif (string.sub(str, 0, 25) == "king of the galactic seas") then
		SetTimeOfDaySchedule("neptunian-schedule", tonumber(string.sub(str, 27)))
		SetSeasonSchedule("neptunian-schedule", tonumber(string.sub(str, 27)))
	elseif (string.sub(str, 0, 7) == "bifrost") then
		ChangeCurrentMapLayer(tonumber(string.sub(str, 9)))
	elseif (string.sub(str, 0, 19) == "numunitsconstructed") then
		local message_player = tonumber(string.sub(str, 21))
		AddMessage("Player " .. message_player .. " has " .. CPlayer:GetPlayer(message_player).NumBuildingsUnderConstruction .. " under construction buildings.")
	elseif (str == "shield wall") then
		local infantry_type = GetFactionClassUnitType("infantry", GetPlayerData(GetThisPlayer(), "Faction"))
		if (infantry_type) then
			unit = CreateUnit(infantry_type, GetThisPlayer(), {CPlayer:GetPlayer(GetThisPlayer()).StartPos.x, CPlayer:GetPlayer(GetThisPlayer()).StartPos.y})
		end
	elseif (str == "swordskill") then
		local veteran_infantry_type = GetFactionClassUnitType("veteran-infantry", GetPlayerData(GetThisPlayer(), "Faction"))
		if (veteran_infantry_type) then
			unit = CreateUnit(veteran_infantry_type, GetThisPlayer(), {CPlayer:GetPlayer(GetThisPlayer()).StartPos.x, CPlayer:GetPlayer(GetThisPlayer()).StartPos.y})
		end
	elseif (str == "artemis") then
		local shooter_type = GetFactionClassUnitType("shooter", GetPlayerData(GetThisPlayer(), "Faction"))
		if (shooter_type) then
			unit = CreateUnit(shooter_type, GetThisPlayer(), {CPlayer:GetPlayer(GetThisPlayer()).StartPos.x, CPlayer:GetPlayer(GetThisPlayer()).StartPos.y})
		end
	elseif (str == "fire and steel") then
		local gunpowder_infantry_type = GetFactionClassUnitType("gunpowder_infantry", GetPlayerData(GetThisPlayer(), "Faction"))
		if (gunpowder_infantry_type) then
			unit = CreateUnit(gunpowder_infantry_type, GetThisPlayer(), {CPlayer:GetPlayer(GetThisPlayer()).StartPos.x, CPlayer:GetPlayer(GetThisPlayer()).StartPos.y})
		end
	elseif (str == "piety") then
		local priest_type = GetFactionClassUnitType("priest", GetPlayerData(GetThisPlayer(), "Faction"))
		if (priest_type) then
			unit = CreateUnit(priest_type, GetThisPlayer(), {CPlayer:GetPlayer(GetThisPlayer()).StartPos.x, CPlayer:GetPlayer(GetThisPlayer()).StartPos.y})
		end
	elseif (str == "archimedes") then
		local siege_engine_type = GetFactionClassUnitType("siege_engine", GetPlayerData(GetThisPlayer(), "Faction"))
		if (siege_engine_type) then
			unit = CreateUnit(siege_engine_type, GetThisPlayer(), {CPlayer:GetPlayer(GetThisPlayer()).StartPos.x, CPlayer:GetPlayer(GetThisPlayer()).StartPos.y})
		end
	elseif (str == "ahoy") then
		local transport_ship_type = GetFactionClassUnitType("transport-ship", GetPlayerData(GetThisPlayer(), "Faction"))
		if (transport_ship_type) then
			unit = CreateUnit(transport_ship_type, GetThisPlayer(), {CPlayer:GetPlayer(GetThisPlayer()).StartPos.x, CPlayer:GetPlayer(GetThisPlayer()).StartPos.y})
		end
	elseif (str == "skidbladnir") then
		local siege_warship_type = GetFactionClassUnitType("siege_warship", GetPlayerData(GetThisPlayer(), "Faction"))
		if (siege_warship_type) then
			unit = CreateUnit(siege_warship_type, GetThisPlayer(), {CPlayer:GetPlayer(GetThisPlayer()).StartPos.x, CPlayer:GetPlayer(GetThisPlayer()).StartPos.y})
		end
	elseif (str == "jotun") then
		unit = CreateUnit("unit-ettin", GetThisPlayer(), {CPlayer:GetPlayer(GetThisPlayer()).StartPos.x, CPlayer:GetPlayer(GetThisPlayer()).StartPos.y})
	elseif (str == "backstab") then
		unit = CreateUnit("unit-goblin-thief", GetThisPlayer(), {CPlayer:GetPlayer(GetThisPlayer()).StartPos.x, CPlayer:GetPlayer(GetThisPlayer()).StartPos.y})
	elseif (str == "marius") then
		unit = CreateUnit("unit-latin-legionary", GetThisPlayer(), {CPlayer:GetPlayer(GetThisPlayer()).StartPos.x, CPlayer:GetPlayer(GetThisPlayer()).StartPos.y})
	elseif (str == "peruns shield") then
		unit = CreateUnit("unit-slavic-swordsman", GetThisPlayer(), {CPlayer:GetPlayer(GetThisPlayer()).StartPos.x, CPlayer:GetPlayer(GetThisPlayer()).StartPos.y})
	elseif (str == "lodbrok") then
		unit = CreateUnit("unit-norse-longship", GetThisPlayer(), {CPlayer:GetPlayer(GetThisPlayer()).StartPos.x, CPlayer:GetPlayer(GetThisPlayer()).StartPos.y})
	elseif (str == "volund") then
		unit = CreateUnit("unit-elven-swordsman", GetThisPlayer(), {CPlayer:GetPlayer(GetThisPlayer()).StartPos.x, CPlayer:GetPlayer(GetThisPlayer()).StartPos.y})
	elseif (str == "vingethor") then
		unit = CreateUnit("unit-dwarven-gryphon-rider", GetThisPlayer(), {CPlayer:GetPlayer(GetThisPlayer()).StartPos.x, CPlayer:GetPlayer(GetThisPlayer()).StartPos.y})
	elseif (str == "tyr") then
		unit = CreateUnit("unit-norse-swordsman", GetThisPlayer(), {CPlayer:GetPlayer(GetThisPlayer()).StartPos.x, CPlayer:GetPlayer(GetThisPlayer()).StartPos.y})
	elseif (str == "trollheim") then
		unit = CreateUnit("unit-troll-warrior", GetThisPlayer(), {CPlayer:GetPlayer(GetThisPlayer()).StartPos.x, CPlayer:GetPlayer(GetThisPlayer()).StartPos.y})
	else
		return false
	end
	return true
end
