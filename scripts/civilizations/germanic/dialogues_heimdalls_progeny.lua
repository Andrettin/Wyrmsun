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
--      (c) Copyright 2016 by Andrettin
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

DefineDialogue("jarl-speaks-of-his-destiny", {
	Nodes = {
		{
			"speaker", "character", "Erala",
			"text", "Something tells me... I have seen it in my dreams, I know it! My true father was not the man who raised me, but the mighty god Heimdall. I am not like others. I have a singular destiny."
		},
		{
			"speaker", "character", "Erala",
			"text", "In this house my foster father taught me the art of war. It is a nice dwelling, but the time has come for something greater... not just a house, but a hall. From it I shall gather followers to establish my rule over vast lands."
		},
		{
			"speaker", "character", "Erala",
			"text", "I will need workers to build my hall. There are two tribes nearby, the Karlings and the Thrahilings. Their people could build me a hall, hopefully willingly, but I must be prepared for resistance. The Karlings are sturdy farmers, but their archers will be difficult to beat on my own. It will be better to go to the Thrahilings, as they have no familiarity with warfare and will be easier to subjugate if it comes to that. The Karlings dwell to the northwest, while the Thrahilings live to the northeast.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "heimdalls-progeny")
					SetPlayerData(trigger_player, "AcceptQuest", "jarls-hall")
				end
			}
		}
	}
})

DefineDialogue("jarl-meets-the-thrallings", {
	Nodes = {
		{
			"speaker", "unit", "unit-germanic-worker",
			"speaker-player", "thralling-tribe",
			"text", "Who are you and what do you want with Thrahila and his sons?"
		},
		{
			"speaker", "character", "Erala",
			"text", "I am the fierce warrior Erala. I need workers to serve me and build me a hall."
		},
		{
			"speaker", "unit", "unit-germanic-worker",
			"speaker-player", "thralling-tribe",
			"text", "Then go somewhere else. We have work of our own to do."
		},
		{
			"speaker", "character", "Erala",
			"text", "You dare refuse me?! Then speak to my sword!",
			"option-effects", {
				function(s)
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("thralling-tribe"))
					SetDiplomacy(GetFactionPlayer("thralling-tribe"), "enemy", trigger_player)
					local erala_hero_unit = FindHero("Erala", trigger_player)
					local attacker_count = 0
					local uncount = GetUnits(GetFactionPlayer("thralling-tribe"))
					for unit1 = 1,table.getn(uncount) do 
						if (GetUnitVariable(uncount[unit1], "Ident") == "unit-germanic-worker") then
							OrderUnit(GetFactionPlayer("thralling-tribe"), GetUnitVariable(uncount[unit1], "Ident"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")}, {GetUnitVariable(erala_hero_unit, "PosX"), GetUnitVariable(erala_hero_unit, "PosY")}, "attack")
							attacker_count = attacker_count + 1
							if (attacker_count >= 2) then
								break
							end
						end
					end
				end
			}
		}
	}
})

DefineDialogue("thrallings-subjugated", {
	Nodes = {
		{
			"speaker", "unit", "unit-germanic-worker",
			"speaker-player", "thralling-tribe",
			"text", "Please, have mercy!"
		},
		{
			"speaker", "character", "Erala",
			"text", "If you serve me faithfully, I will spare your lives."
		},
		{
			"speaker", "unit", "unit-germanic-worker",
			"speaker-player", "thralling-tribe",
			"text", "We are yours to command.",
			"option-effects", {
				function(s)
					local uncount = GetUnits(GetFactionPlayer("thralling-tribe"))
					for unit1 = 1,table.getn(uncount) do
						ChangeUnitOwner(uncount[unit1], trigger_player)
						OrderUnit(trigger_player, GetUnitVariable(uncount[unit1], "Ident"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")}, nil, "stop")
					end
				end
			}
		}
	}
})
