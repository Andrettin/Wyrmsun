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

DefineDialogue("on-the-vanaquisl-introduction", {
	Nodes = {
		{
			"text", "We have assembled a great army to attack those who live on the Vanaquisl, the people of Vanaland. Their territory shall be taken into our possession, providing our people with the lands we much need to prosper. Onward to victory!",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "on-the-vanaquisl")
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("vana-tribe"))
				end
			}
		}
	}
})

DefineDialogue("asa-raid", {
	Nodes = {
		{
			"text", "The Asa people are coming with a large force to raid us, prepare our defenses!",
			"options", {"Defend our homeland!"}
		}
	}
})

DefineDialogue("on-the-vanaquisl-victory", {
	Nodes = {
		{
			"speaker", "unit", "unit-germanic-warrior",
			"speaker-player", "vana-tribe",
			"text", "What is this disturbance in our home?",
			"conditions", function(s)
				return (FindUnit("unit-germanic-warrior", GetFactionPlayer("vana-tribe")) ~= nil)
			end,
			"option-effects", {
				function(s)
					local asa_warrior = FindUnit("unit-germanic-warrior", trigger_player)
					if (asa_warrior) then
						local uncount = GetUnits(GetFactionPlayer("vana-tribe"))
						for unit1 = 1,table.getn(uncount) do 
							if (GetUnitVariable(uncount[unit1],"Ident") == "unit-germanic-warrior") then
								OrderUnit(GetFactionPlayer("vana-tribe"), GetUnitVariable(uncount[unit1],"Ident"), {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, {GetUnitVariable(asa_warrior,"PosX"), GetUnitVariable(asa_warrior,"PosY")}, "attack")
							end
						end
					end
				end
			}
		},
		{
			"text", "We ravaged Vanaland and pillaged its wealth. Victory is ours!",
			"option-effects", {
				function(s)
					if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "on-the-vanaquisl") then
						CallDialogue("campaign-victory", trigger_player)
					end
				end
			}
		}
	}
})
