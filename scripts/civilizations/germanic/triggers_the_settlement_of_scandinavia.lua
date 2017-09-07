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
--      (c) Copyright 2014-2017 by Andrettin
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

-- On the Vanaquisl introduction
-- based on the Ynglinga saga and on the Indo-European migration according to the Kurgan hypothesis
AddTrigger("on-the-vanaquisl-introduction",
	function()
		if (GameCycle == 0) then
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "Faction") == "asa-tribe" and GetFactionExists("vana-tribe")) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("on-the-vanaquisl-introduction", trigger_player)
		CallDialogue("asa-raid", GetFactionPlayer("vana-tribe"))
		return false
	end
)
