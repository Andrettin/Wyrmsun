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
--      (c) Copyright 2017-2018 by Andrettin
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

DefineDialogue("mcz-3328-1853", { -- Source: "Minister-Conferenz-Kanzlei MCZ 3328/1853".
	Nodes = {
		{
			"text", "A few years ago, a decree was made obligating the denizens of one of our provinces to perform road construction labor. The bishop of Agram, Georg von Haulik, has now plead that the clergy be freed of this duty. The provincial government, however, has assured us of the importance of this policy in providing road work without exorbitating costs.", -- "one of our provinces" = Croatia
			"options", {"Free the clergy", "We need their labor"},
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") - 1000)
				end,
				function(s)
					local uncount = GetUnits(trigger_player)
					for unit1 = 1,table.getn(uncount) do 
						if (GetUnitVariable(uncount[unit1], "Ident") == "unit-teuton-priest") then
							RemoveUnit(uncount[unit1])
							KillUnit(uncount[unit1])
							break
						end
					end
				end
			},
			"option-tooltips", {"-1000 Copper", "Lose a priest"}
		}
	}
})
