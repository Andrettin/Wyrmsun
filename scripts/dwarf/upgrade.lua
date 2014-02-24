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
--      upgrade.ccl - Define the dwarven dependencies and upgrades.
--
--      (c) Copyright 2013-2014 by Andre Novellino Gouvêa
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

-- NOTE: Save can generate this table.

-- Define Allows
function DefineAllowNormalDwarvenUnits(flags)
	local units = {
		"unit-dwarven-town-hall", "unit-dwarven-mushroom-farm", "unit-dwarven-barracks",
		"unit-dwarven-miner", "unit-dwarven-axefighter", "unit-dwarven-scout",
		"unit-dwarven-ballista"
	}
	-- Allow units for human players only if they have been acquired
	if (flags == "AAAAAAAAAAAAAAAA" and (not IsNetworkGame())) then
		for i, unitName in ipairs(units) do
			local PlayerUnitFlag = {}
			for i=0,15 do
				if (GetPlayerData(i, "AiEnabled") == false) then
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, unitName) == true) then
						PlayerUnitFlag[i] = "A"
					else
						PlayerUnitFlag[i] = "F"
					end
				else
					PlayerUnitFlag[i] = "A"
				end
			end
			flags = PlayerUnitFlag[0] .. PlayerUnitFlag[1] .. PlayerUnitFlag[2] .. PlayerUnitFlag[3] .. PlayerUnitFlag[4] .. PlayerUnitFlag[5] .. PlayerUnitFlag[6] .. PlayerUnitFlag[7] .. PlayerUnitFlag[8] .. PlayerUnitFlag[9] .. PlayerUnitFlag[10] .. PlayerUnitFlag[11] .. PlayerUnitFlag[12] .. PlayerUnitFlag[13] .. PlayerUnitFlag[14] .. PlayerUnitFlag[15]
			DefineAllow(unitName, flags)
		end
	else
		for i, unitName in ipairs(units) do
			DefineAllow(unitName, flags)
		end
	end
end

function DefineAllowExtraDwarvenUnits(flags)
	local units = {
		"unit-dwarven-steelclad",
		"unit-rugnur", "unit-rugnur-older", "unit-baglur"
	}
	for i, unitName in ipairs(units) do
		DefineAllow(unitName, flags)
	end
end

InitFuncs:add(function()
	DefineAllowNormalDwarvenUnits("AAAAAAAAAAAAAAAA")
	DefineAllowExtraDwarvenUnits("FFFFFFFFFFFFFFFF")
end)

DefineDependency("unit-dwarven-scout",
  {"unit-human-lumber-mill"})
