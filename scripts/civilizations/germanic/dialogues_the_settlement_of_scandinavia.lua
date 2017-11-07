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
			"speaker", "character", "voden",
			"text", "I have won every battle I have taken part in... but they were no more than squabbles compared to the aim I set before myself: the conquest of Vanaland. My great army has been assembled, and the time has come to make the river run red with their blood. Their lands shall be taken into our possession, providing our tribesfolk with the lands we much need to prosper. Onward to victory!",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "on-the-vanaquisl")
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("vana-tribe"))
				end
			}
		},
		{
			"speaker", "character", "voden",
			"text", "The Vana live on the other side of the Vanaquisl river... there is a crossing further to the east we can take."
		},
		{
			"text", "Hint: Press Alt+Q to select your entire army. Although you begin with a settlement and a worker, you only need your initial army to complete this scenario."
		}
	}
})

DefineDialogue("asa-raid", {
	Nodes = {
		{
			"speaker", "unit", "unit-germanic-warrior",
			"speaker-player", "vana-tribe",
			"text", "The Asa people are coming with a large force to raid us, prepare our defenses!",
			"options", {"Defend our homeland!"}
		}
	}
})

DefineDialogue("on-the-vanaquisl-vanaquisl-sighted", { -- unused, since the Asa begin near the Vanaquisl river as well, so the line wouldn't make much sense; would be triggered when an Asa unit gets close to the Vanaquisl river, or close to the Tanais/Vanaquisl Vana settlement
	Nodes = {
		{
			"speaker", "character", "voden",
			"text", "Ah, the great Vanaquisl! These riverlands could help feed many mouths."
		}
	}
})

DefineDialogue("on-the-vanaquisl-vana-sighted", {
	Nodes = {
		{
			"speaker", "unit", "unit-germanic-warrior",
			"speaker-player", "vana-tribe",
			"text", "The Asa! What are you here for?"
		},
		{
			"speaker", "character", "voden",
			"text", "We are here for Vanaland."
		},
		{
			"speaker", "unit", "unit-germanic-warrior",
			"speaker-player", "vana-tribe",
			"text", "You shall have our homelands... as your burial ground."
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
			"speaker", "character", "voden",
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

DefineDialogue("westward-migration-introduction", {
	Nodes = {
		{
			"speaker", "character", "voden",
			"text", "Our home steppes could scarce support our growing people. Competition for land with neighboring tribes as warlike as ours, too, wore us down. Thus I made my choice. To gather all our tribesfolk, leaving our homes behind, to seek new lands."
		},
		{
			"speaker", "character", "voden",
			"text", "Travelling north, we came to this land crossed by a great river. And yet, our journey is not yet ended. This area is filled with natives who are as troublesome as they are numerous. We hear of more docile peoples farther to the southwest, who will be more easily conquered... But before we get there, first we have to pass through the hostile natives around here... this will be a dangerous task.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "westward-migration")
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("uralic-tribe"))
					SetDiplomacy(GetFactionPlayer("uralic-tribe"), "enemy", trigger_player)
					
					unit = CreateUnit("unit-revealer", trigger_player, {4392 - EarthStartX, 750 - EarthStartY})
					SetUnitVariable(unit, "TTL", 600)
				end
			}
		},
		{
			"text", "Hint: This is a migration mission. You do not have any resources to build structures with."
		}
	}
})

