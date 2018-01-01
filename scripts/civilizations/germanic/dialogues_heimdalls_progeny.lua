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
--      (c) Copyright 2016-2018 by Andrettin
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
			"speaker", "character", "erala",
			"text", "Something tells me... I have seen it in my dreams, I know it! My true father was not the man who raised me, but the mighty god Haimadala. I am not like others. I have a singular destiny."
		},
		{
			"speaker", "character", "erala",
			"text", "In this house my foster father taught me the art of war. It is a nice dwelling, but the time has come for something greater... not just a house, but a hall. From it I shall gather followers to establish my rule over vast lands."
		},
		{
			"speaker", "character", "erala",
			"text", "I will need workers to build my hall. There are two tribes nearby, the Karlings and the Thrahilings. Their people could build me a hall, hopefully willingly, but I must be prepared for resistance."
		},
		{
			"speaker", "character", "erala",
			"text", "The Karlings are diligent farmers, but their archers will be difficult to beat on my own. It will be better to go to the Thrahilings, as they have no familiarity with warfare and will be easier to subjugate if it comes to that. The Karlings dwell to the northwest, while the Thrahilings live to the northeast.",
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
			"speaker", "character", "thrahila",
			"text", "Who are you and what do you want with me and his sons?"
		},
		{
			"speaker", "character", "erala",
			"text", "I am the fierce warrior Erala. I need workers to serve me and build me a hall."
		},
		{
			"speaker", "character", "thrahila",
			"text", "Then go somewhere else. We have work of our own to do."
		},
		{
			"speaker", "character", "erala",
			"text", "You dare refuse me?! Then speak to my sword!",
			"option-effects", {
				function(s)
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("thralling-tribe"))
					SetDiplomacy(GetFactionPlayer("thralling-tribe"), "enemy", trigger_player)
					local erala_hero_unit = FindHero("erala", trigger_player)
					local attacker_count = 0
					local uncount = GetUnits(GetFactionPlayer("thralling-tribe"))
					for unit1 = 1,table.getn(uncount) do 
						if (GetUnitVariable(uncount[unit1], "Ident") == "unit-germanic-worker") then
							OrderUnit(GetFactionPlayer("thralling-tribe"), GetUnitVariable(uncount[unit1], "Ident"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")}, GetUnitVariable(uncount[unit1], "MapLayer"), {GetUnitVariable(erala_hero_unit, "PosX"), GetUnitVariable(erala_hero_unit, "PosY")}, GetUnitVariable(erala_hero_unit, "MapLayer"), "attack")
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
			"speaker", "character", "erala",
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
						-- stop Eraling units from attacking the unit
						local nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 4, true)
						for unit2 = 1,table.getn(nearby_uncount) do 
							if (GetUnitVariable(nearby_uncount[unit2], "Player") == trigger_player) then
								OrderUnit(trigger_player, GetUnitVariable(nearby_uncount[unit2], "Ident"), {GetUnitVariable(nearby_uncount[unit2], "PosX"), GetUnitVariable(nearby_uncount[unit2], "PosY")}, GetUnitVariable(nearby_uncount[unit2], "MapLayer"), nil, nil, "stop")
							end
						end
						
						-- change the unit's owner to the Eraling Tribe
						ChangeUnitOwner(uncount[unit1], trigger_player)
						OrderUnit(trigger_player, GetUnitVariable(uncount[unit1], "Ident"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")}, GetUnitVariable(uncount[unit1], "MapLayer"), nil, nil, "stop")
						if (GetUnitVariable(uncount[unit1], "Ident") ~= GetFactionClassUnitType(GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Class"), GetPlayerData(trigger_player, "Faction"))) then
							ConvertUnit(uncount[unit1], GetFactionClassUnitType(GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Class"), GetPlayerData(trigger_player, "Faction")))
						end
					end
					SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 2500)
				end
			}
		},
		{
			"text", "Hint: Select a Bura, press the Build Structure button and then click on the Build Chieftain's Hall button to build the structure required for this quest. The Chieftain's Hall can only be built on a Settlement Site. A Settlement Site is present near your starting War Lodge."
		}
	}
})

DefineDialogue("jarl-meets-the-karlings", {
	Nodes = {
		{
			"speaker", "character", "karla",
			"text", "These lands belong to me and my sons. What do you wish?"
		},
		{
			"speaker", "character", "erala",
			"text", "I am Erala, a mighty warrior. Your people are good farmers, but they need protection. Submit to me and I will make you safe."
		},
		{
			"speaker", "character", "karla",
			"text", "We need no one to guard us. Our arrows are enough to counter any threat.",
			"options", {"Subjugate them", "Leave them alone"},
			"option-effects", {
				function(s)
					CallDialogue("jarl-attacks-the-karlings", trigger_player)
				end,
				function(s)
				end
			}
		}
	}
})

DefineDialogue("jarl-attacks-the-karlings", {
	Nodes = {
		{
			"speaker", "character", "erala",
			"text", "Folly. If you lot will not submit willingly, then I must subjugate you by force."
		},
		{
			"speaker", "character", "karla",
			"text", "The Karlings shall never be slaves!",
			"option-effects", {
				function(s)
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("karling-tribe"))
					SetDiplomacy(GetFactionPlayer("karling-tribe"), "enemy", trigger_player)
					local erala_hero_unit = FindHero("erala", trigger_player)
					local uncount = GetUnits(GetFactionPlayer("karling-tribe"))
					for unit1 = 1,table.getn(uncount) do 
						if (GetUnitVariable(uncount[unit1], "Ident") == "unit-germanic-worker") then
							OrderUnit(GetFactionPlayer("karling-tribe"), GetUnitVariable(uncount[unit1], "Ident"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")}, GetUnitVariable(uncount[unit1], "MapLayer"), {GetUnitVariable(erala_hero_unit, "PosX"), GetUnitVariable(erala_hero_unit, "PosY")}, GetUnitVariable(erala_hero_unit, "MapLayer"), "attack")
						end
					end
					SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 2500)
				end
			}
		}
	}
})

DefineDialogue("karlings-subjugated", {
	Nodes = {
		{
			"speaker", "unit", "unit-germanic-worker",
			"speaker-player", "karling-tribe",
			"text", "Enough of this bloodshed! Mercy!"
		},
		{
			"speaker", "character", "erala",
			"text", "Will you submit to my tribe?"
		},
		{
			"speaker", "unit", "unit-germanic-worker",
			"speaker-player", "karling-tribe",
			"text", "We shall. But only if our personal freedom is guaranteed, otherwise we would rather die."
		},
		{
			"speaker", "character", "erala",
			"text", "Very well.",
			"option-effects", {
				function(s)
					local uncount = GetUnits(GetFactionPlayer("karling-tribe"))
					for unit1 = 1,table.getn(uncount) do
						-- stop Eraling units from attacking the unit
						local nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 4, true)
						for unit2 = 1,table.getn(nearby_uncount) do 
							if (GetUnitVariable(nearby_uncount[unit2], "Player") == trigger_player) then
								OrderUnit(trigger_player, GetUnitVariable(nearby_uncount[unit2], "Ident"), {GetUnitVariable(nearby_uncount[unit2], "PosX"), GetUnitVariable(nearby_uncount[unit2], "PosY")}, GetUnitVariable(nearby_uncount[unit2], "MapLayer"), nil, nil, "stop")
							end
						end
						
						-- change the unit's owner to the Eraling Tribe
						ChangeUnitOwner(uncount[unit1], trigger_player)
						OrderUnit(trigger_player, GetUnitVariable(uncount[unit1], "Ident"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")}, GetUnitVariable(uncount[unit1], "MapLayer"), nil, nil, "stop")
						if (GetUnitVariable(uncount[unit1], "Ident") ~= GetFactionClassUnitType(GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Class"), GetPlayerData(trigger_player, "Faction"))) then
							ConvertUnit(uncount[unit1], GetFactionClassUnitType(GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Class"), GetPlayerData(trigger_player, "Faction")))
						end
					end
					SetPlayerData(trigger_player, "CompleteQuest", "subjugate-the-karlings")
				end
			}
		}
	}
})

DefineDialogue("jarls-hall-is-complete", { -- based on the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 24.
	Nodes = {
		{
			"speaker", "character", "erala",
			"text", "The hall is complete! My destiny starts now."
		},
		{
			"speaker", "character", "erala",
			"text", "I will need a group of loyal retainers. Once my buras have gathered enough resources, I should begin training brave warriors in the art of the sword."
		},
		{
			"text", "Hint: You can acquire side-quests in your Chieftain's Hall, and train new workers there should you need them. If you lack the Food supply to train more units, build farms with your existing workers."
		},
		{
			"text", "Hint: Select a War Lodge and then click on the Train Erala button to train the unit required for this quest.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "jarls-retainers")
				end
			}
		}
	}
})

DefineDialogue("jarl-desires-karling-subjugation", {
	Nodes = {
		{
			"speaker", "character", "erala",
			"text", "Now that I have gathered an ensemble of warriors, the Karlings will be no match for me. They will accept my overlordship - or perish.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "subjugate-the-karlings")
				end
			}
		}
	}
})

DefineDialogue("jarl-considers-the-hersings", {
	Nodes = {
		{
			"speaker", "character", "erala",
			"text", "The last threat to my power in this peninsula are the Hersings to our south. They are a powerful clan, it would be better to seek an alliance than to face their warriors in battle.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "neutralize-the-hersings")
				end
			}
		}
	}
})

DefineDialogue("jarl-meets-the-hersings", {
	Nodes = {
		{
			"speaker", "unit", "unit-germanic-warrior",
			"speaker-player", "hersing-tribe",
			"text", "Welcome to the lands of the chieftain Hersir. What do you desire with us?",
			"options", {"Seek an alliance", "Threaten them"},
			"option-effects", {
				function(s)
					CallDialogue("jarl-seeks-an-alliance-with-the-hersings", trigger_player)
				end,
				function(s)
					CallDialogue("jarl-threatens-the-hersings", trigger_player)
				end
			}
		}
	}
})

DefineDialogue("jarl-seeks-an-alliance-with-the-hersings", {
	Nodes = {
		{
			"speaker", "character", "erala",
			"text", "Greetings, noble swordsman. I have come to forge a bond between our peoples. I ask to marry your chieftain's daughter, joining our tribes in an alliance of kinship.",
			"option-effects", {
				function(s)
					if (UnitLevelCheck(FindHero("erala"), 5)) then
						CallDialogue("jarl-forges-an-alliance-with-the-hersings", trigger_player)
					else
						CallDialogue("jarl-fails-to-ally-with-the-hersings", trigger_player)
					end
				end
			}
		}
	}
})

DefineDialogue("jarl-forges-an-alliance-with-the-hersings", {
	Nodes = {
		{
			"text", "~<[Level Check Succeeded]~>"
		},
		{
			"speaker", "unit", "unit-germanic-warrior",
			"speaker-player", "hersing-tribe",
			"text", "That will be a great honor for our chieftain."
		},
		{
			"speaker", "character", "erala",
			"text", "Then let us rejoice and feast together!",
			"option-effects", {
				function(s)
					SetDiplomacy(trigger_player, "allied", GetFactionPlayer("hersing-tribe"))
					SetDiplomacy(GetFactionPlayer("hersing-tribe"), "allied", trigger_player)
					SetSharedVision(trigger_player, true, GetFactionPlayer("hersing-tribe"))
					SetSharedVision(GetFactionPlayer("hersing-tribe"), true, trigger_player)
					if (GetPlayerData(trigger_player, "HasQuest", "heimdalls-progeny")) then
						if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "heimdalls-progeny") then
							CallDialogue("campaign-victory", trigger_player)
						end
						SetPlayerData(trigger_player, "CompleteQuest", "heimdalls-progeny")
					end
					SetPlayerData(trigger_player, "CompleteQuest", "neutralize-the-hersings")
				end
			}
		}
	}
})

DefineDialogue("jarl-fails-to-ally-with-the-hersings", {
	Nodes = {
		{
			"text", "~<[Level Check Failed]~>"
		},
		{
			"speaker", "unit", "unit-germanic-warrior",
			"speaker-player", "hersing-tribe",
			"text", "That would shame our tribe. You are not worthy."
		},
		{
			"speaker", "character", "erala",
			"text", "What did you say?! I shall stain your lands with your own blood!",
			"option-effects", {
				function(s)
					unit = CreateUnit("unit-revealer", GetFactionPlayer("hersing-tribe"), {Players[trigger_player].StartPos.x, Players[trigger_player].StartPos.y}, Players[trigger_player].StartMapLayer)
					SetUnitVariable(unit, "TTL", 600)
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("hersing-tribe"))
					SetDiplomacy(GetFactionPlayer("hersing-tribe"), "enemy", trigger_player)
				end
			}
		}
	}
})

DefineDialogue("jarl-threatens-the-hersings", {
	Nodes = {
		{
			"speaker", "character", "erala",
			"text", "Submit to me, warriors, or your homes will burn."
		},
		{
			"speaker", "unit", "unit-germanic-warrior",
			"speaker-player", "hersing-tribe",
			"text", "We greet you into our village, and you dare threaten us?! Prepare to die!",
			"option-effects", {
				function(s)
					unit = CreateUnit("unit-revealer", GetFactionPlayer("hersing-tribe"), {Players[trigger_player].StartPos.x, Players[trigger_player].StartPos.y}, Players[trigger_player].StartMapLayer)
					SetUnitVariable(unit, "TTL", 600)
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("hersing-tribe"))
					SetDiplomacy(GetFactionPlayer("hersing-tribe"), "enemy", trigger_player)
				end
			}
		}
	}
})

DefineDialogue("jarl-conquers-jutland", {
	Nodes = {
		{
			"speaker", "character", "erala",
			"text", "It is done. My rule extends throughout the entire peninsula, from north to south!",
			"option-effects", {
				function(s)
					if (GetPlayerData(trigger_player, "HasQuest", "heimdalls-progeny")) then
						if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "heimdalls-progeny") then
							CallDialogue("campaign-victory", trigger_player)
						end
						SetPlayerData(trigger_player, "CompleteQuest", "heimdalls-progeny")
					end
					SetPlayerData(trigger_player, "CompleteQuest", "neutralize-the-hersings")
				end
			}
		}
	}
})

DefineDialogue("journey-to-heimdalls-stones-completed", {
	Nodes = {
		{
			"speaker", "character", "erala",
			"text", "This is a mystical place... I can feel Haimadala's might pulsing throughout the local atmosphere."
		},
		{
			"speaker", "character", "erala",
			"text", "When I was a child, my mother told me that the god Haimadala once roamed the land, and came to my family's dwelling. He was well-received. Food and drink were shared with him, as well as the roof, and even the bed... nine months later I was born."
		},
		{
			"speaker", "character", "erala",
			"text", "And now I am at my father's sacred stones... there is much to be learned from them.",
			"options", {"A valuable journey"},
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "CompleteQuest", "journey-to-heimdalls-stones")
				end
			},
			"option-tooltips", {"+500 XP for Erala"}
		}
	}
})
