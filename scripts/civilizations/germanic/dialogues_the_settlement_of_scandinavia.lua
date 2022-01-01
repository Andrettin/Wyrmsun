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
--      (c) Copyright 2014-2022 by Andrettin
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
DefineDialogue("on_the_vanaquisl_introduction", {
	Nodes = {
		{
			"speaker", "character", "voden",
			"text", "I have won every battle I have taken part in... but they were no more than squabbles compared to the aim I set before myself: the conquest of Vanaland. That country is peopled by a strange group of elf-worshippers... My great army has been assembled, and the time has come to make the river run red with their blood. Their lands shall be taken into our possession, providing our tribesfolk with the lands we much need to prosper. Onward to victory!",
			"option-effects", {
				function(s)
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("vana_tribe"))
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
			"speaker-player", "vana_tribe",
			"text", "The Asa people are coming with a large force to raid us, prepare our defenses!",
			"options", {"Defend our homeland!"}
		}
	}
})

DefineDialogue("on_the_vanaquisl_vanaquisl_sighted", { -- unused, since the Asa begin near the Vanaquisl river as well, so the line wouldn't make much sense; would be triggered when an Asa unit gets close to the Vanaquisl river, or close to the Tanais/Vanaquisl Vana settlement
	Nodes = {
		{
			"speaker", "character", "voden",
			"text", "Ah, the great Vanaquisl! These riverlands could help feed many mouths."
		}
	}
})

DefineDialogue("on_the_vanaquisl_vana_sighted", {
	Nodes = {
		{
			"speaker", "unit", "unit-germanic-warrior",
			"speaker-player", "vana_tribe",
			"text", "The Asa! What are you here for?"
		},
		{
			"speaker", "character", "voden",
			"text", "We are here for Vanaland."
		},
		{
			"speaker", "unit", "unit-germanic-warrior",
			"speaker-player", "vana_tribe",
			"text", "You shall have our homelands... as your burial grounds. For the Vanir!"
		}
	}
})

DefineDialogue("on_the_vanaquisl_victory", {
	Nodes = {
		{
			"speaker", "unit", "unit-germanic-warrior",
			"speaker-player", "vana_tribe",
			"text", "What is this disturbance in our home?",
			"conditions", function(s)
				return (FindUnit("unit-germanic-warrior", GetFactionPlayer("vana_tribe")) ~= nil)
			end,
			"option-effects", {
				function(s)
					local asa_warrior = FindUnit("unit-germanic-warrior", trigger_player)
					if (asa_warrior) then
						local uncount = GetUnits(GetFactionPlayer("vana_tribe"))
						for unit1 = 1,table.getn(uncount) do 
							if (GetUnitVariable(uncount[unit1], "Ident") == "unit-germanic-warrior") then
								OrderUnit(GetFactionPlayer("vana_tribe"), GetUnitVariable(uncount[unit1], "Ident"), {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, GetUnitVariable(uncount[unit1], "MapLayer"), {GetUnitVariable(asa_warrior,"PosX"), GetUnitVariable(asa_warrior,"PosY")}, GetUnitVariable(asa_warrior, "MapLayer"), "attack")
							end
						end
					end
				end
			}
		},
		{
			"speaker", "character", "voden",
			"text", "We ravaged Vanaland and pillaged its wealth. Victory is ours!"
		}
	}
})

DefineDialogue("westward_migration_introduction", {
	Nodes = {
		{
			"speaker", "character", "voden",
			"text", "Our home steppes could scarce support our growing people. Competition for land with neighboring tribes as warlike as ours, too, wore us down. Thus I made my choice. To gather all our tribesfolk, leaving our homes behind, to seek new lands. Our priests foretold that our future lies in the north..."
		},
		{
			"speaker", "character", "voden",
			"text", "Travelling northwards, we came to this land crossed by a great river. And yet, the priests say that our journey is not yet ended, that the northern land of our destinity is not this one. Settlement here would certainly be difficult, for this area is filled with natives who are as troublesome as they are numerous. We hear of more docile peoples farther to the west, who will be more easily conquered... But before we get there, first we have to pass through the hostile natives around here... this will be a dangerous task.",
			"option-effects", {
				function(s)
					unit = CreateUnit("unit-revealer", trigger_player, {4369 - EarthStartX + 16, 749 - EarthStartY + 32}, GetMapLayer("earth"))
					SetUnitVariable(unit, "TTL", 600)
				end
			}
		},
		{
			"text", "Hint: This is a migration mission. You do not have any resources to build structures with."
		}
	}
})

DefineDialogue("westward_migration_natives_sighted", {
	Nodes = {
		{
			"speaker", "unit", "unit-germanic-warrior",
			"speaker-player", "uralic-tribe",
			"text", "Intruders! Get them!"
		},
		{
			"speaker", "character", "voden",
			"text", "Defend our people!",
			"option-effects", {
				function(s)
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("uralic-tribe"))
					SetDiplomacy(GetFactionPlayer("uralic-tribe"), "enemy", trigger_player)
				end
			}
		}
	}
})

DefineDialogue("westward_migration_native_settlement_sighted", {
	Nodes = {
		{
			"speaker", "character", "voden",
			"text", "What a shabby settlement..."
		}
	}
})

DefineDialogue("westward_migration_workers_killed", {
	Nodes = {
		{
			"speaker", "character", "voden",
			"text", "I have failed to protect my people, now my tribe is done for...",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "FailQuest", "westward_migration")
				end
			}
		}
	}
})

DefineDialogue("westward_migration_victory", {
	Nodes = {
		{
			"speaker", "character", "voden",
			"text", "Our people has been safely led across these hostile lands. Onwards to a new realm!",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "CompleteQuest", "westward_migration")
				end
			}
		}
	}
})

DefineDialogue("the_settlement_of_scandinavia_introduction", {
	Nodes = {
		{
			"speaker", "character", "voden",
			"text", "Our journey has been long and harsh. But now we have reached the northern lands the priests saw in their visions, and the time has come to take it for ourselves! Subdue the natives and make their wives our own!"
		},
		{
			"speaker", "character", "voden",
			"text", "One tribe dwells in this peninsula, to our north, and another beyond the sea, a short distance to our east. Both need to be defeated. First, however, we must build a settlement here and gather our forces.",
			"option-effects", {
				function(s)
					unit = CreateUnit("unit-revealer", trigger_player, {GetSiteData("aarhus", "MapPosX"), GetSiteData("aarhus", "MapPosY")}, GetSiteData("aarhus", "MapLayer")) -- Aarhus
					SetUnitVariable(unit, "TTL", 600)
					
					unit = CreateUnit("unit-revealer", trigger_player, {GetSiteData("copenhagen", "MapPosX"), GetSiteData("copenhagen", "MapPosY")}, GetSiteData("copenhagen", "MapLayer")) -- Copenhagen
					SetUnitVariable(unit, "TTL", 600)
					
					unit = CreateUnit("unit-revealer", trigger_player, {GetSiteData("malmo", "MapPosX"), GetSiteData("malmo", "MapPosY")}, GetSiteData("malmo", "MapLayer")) -- Malmo
					SetUnitVariable(unit, "TTL", 600)
					
					unit = CreateUnit("unit-revealer", trigger_player, {GetSiteData("stockholm", "MapPosX"), GetSiteData("stockholm", "MapPosY")}, GetSiteData("stockholm", "MapLayer")) -- Stockholm
					SetUnitVariable(unit, "TTL", 600)
				end
			}
		},
		{
			"text", "Hint: You will need to build transport ships to defeat all your enemies."
		}
	}
})

DefineDialogue("northwards-to-the-sea-natives-sighted", {
	Nodes = {
		{
			"speaker", "unit", "unit-germanic-warrior",
			"text", "Who are you, strangers? And what do you seek here?"
		},
		{
			"speaker", "character", "voden",
			"text", "We are the Asa, and we seek a new home for our desolate people."
		},
		{
			"speaker", "unit", "unit-germanic-warrior",
			"text", "You are... too many! We do not have enough space here, you must turn away and go elsewhere."
		},
		{
			"speaker", "character", "voden",
			"text", "Our feet grow tired, long have we wandered. There is no turning back, and if you will not submit peacefully - then it is war that you have brought upon yourselves!",
			"option-effects", {
				function(s)
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("ertebolle-tribe"))
					SetDiplomacy(GetFactionPlayer("ertebolle-tribe"), "enemy", trigger_player)
				end
			}
		}
	}
})

DefineDialogue("northwards-to-the-sea-victory", {
	Nodes = {
		{
			"speaker", "character", "voden",
			"text", "This tribe is now done for... when all of this is over, perhaps I should set my son Skeldu to rule upon their former lands."
		},
		{
			"speaker", "character", "voden",
			"text", "The time has come to set our eyes upon the lands to the east, beyond the sea... It is there that I shall build my new seat."
		}
	}
})

DefineDialogue("the_settlement_of_scandinavia_gylfings_sighted", {
	Nodes = {
		{
			"speaker", "character", "gylve",
			"text", "Who might you be?"
		},
		{
			"speaker", "character", "voden",
			"text", "We are the Asa... long have we travelled to reach these lands."
		},
		{
			"speaker", "character", "gylve",
			"text", "And what is your purpose here, honored guests?"
		},
		{
			"speaker", "character", "voden",
			"text", "Our priests foretold that we were to settle here. We are a tribe of warriors, and if you submit to us, we will protect you from invaders, and allow you to live out your days peacefully farming, as you have until now."
		},
		{
			"speaker", "character", "gylve",
			"text", "You know little of us, stranger. And you ask us to become your subjects, vowing to protect us from invasion? You are the invaders! You may not have come in peace, but you will rest in it.",
			"option-effects", {
				function(s)
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("gylfing_tribe"))
					SetDiplomacy(GetFactionPlayer("gylfing_tribe"), "enemy", trigger_player)
				end
			}
		}
	}
})

DefineDialogue("the_settlement_of_scandinavia_victory", {
	Nodes = {
		{
			"speaker", "character", "voden",
			"text", "These lands are now ours! My descendants shall rule them for untold generations...",
			"option-effects", {
				function(s)
					if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "the_settlement_of_scandinavia") then
						CallDialogue("campaign-victory", trigger_player)
					end
				end
			}
		}
	}
})
