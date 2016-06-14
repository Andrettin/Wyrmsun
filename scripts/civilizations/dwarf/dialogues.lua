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

DefineDialogue("a-rocky-home-introduction", {
	Nodes = {
		{
			"text", "After a long time wandering, a clan of dwarves led by Modsognir has arrived in Svarinshaug, seeking a new home...",
			"conditions", function(s) return GrandStrategy == false; end
		},
		{
			"speaker", "character", "Modsognir",
			"text", "My clansfolk, if we are to survive, we will need food and materials to build shelters for our people."
		},
		{
			"speaker", "character", "Durin",
			"text", "Aye. There are plenty of yales here, we should hunt some."
		},
		{
			"speaker", "unit", "unit-dwarven-witness",
			"text", "By nightfall the blood bats - or worse - will come out into the open, we need to be ready before then.",
			"option-effects", {
				function(s)
					AddPlayerObjective(player, "- Kill 8 Yales")
					AddPlayerObjective(player, "- Gather 800 lumber and 400 stone")
					AddPlayerObjective(player, "- Modsognir must survive")
					AddPlayerObjective(player, "- Durin must survive")
				end
			}
		}
	}
})

DefineDialogue("a-rocky-home-thjodrorir-dream", {
	Nodes = {
		{
			"speaker", "character", "Durin",
			"text", "Thjodrorir, when I was young ye were already old. Ye, wisest of our clan... what does the future have in store for us?"
		},
		{
			"speaker", "unit", "unit-dwarven-witness",
			"text", "Aye, much do I know, but in this case little can I tell. Though I am blessed by the great Hroptatyr with visions, I do not choose what appears before me, whether it is the future, the past, or another realm..."
		},
		{
			"speaker", "character", "Durin",
			"text", "Another realm?"
		},
		{
			"speaker", "unit", "unit-dwarven-witness",
			"text", "Aye. Last night I saw it in my dreams. Green fields as far as the eye could see, inhabited by a strange people. A race of giant-gnomes, calling upon Hroptatyr for victory in battle... And he answered them. Their bronze swords painted the land red with the blood of their enemies. Could our god's domain extend to such a foreign land?"
		}
	}
})

DefineDialogue("a-rocky-home-yales-hunted", {
	Nodes = {
		{
			"speaker", "character", "Durin",
			"text", "We have hunted enough of them to last for a while. Ah, nothing like the taste of roasted yale...",
			"option-effects", {
				function(s)
					if (player == GetThisPlayer() and GetPlayerData(GetThisPlayer(), "Resources", "lumber") >= 800 and GetPlayerData(GetThisPlayer(), "Resources", "stone") >= 400) then
						if (GrandStrategy == false) then
							if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Rocky Home") == false) then
								table.insert(wyr.preferences.QuestsCompleted, "A Rocky Home")
							end
							SavePreferences()
						end
						ActionVictory()
					end
				end
			}
		}
	}
})

DefineDialogue("a-rocky-home-materials-collected", {
	Nodes = {
		{
			"speaker", "character", "Modsognir",
			"text", "The materials we need have been collected.",
			"conditions", function(s) return GetPlayerData(player, "UnitTypeKills", "unit-yale") < 8; end
		},
		{
			"speaker", "character", "Modsognir",
			"text", "The materials we need have been collected. It is time to build our new homes by these rocks!",
			"conditions", function(s) return GetPlayerData(player, "UnitTypeKills", "unit-yale") >= 8; end,
			"option-effects", {
				function(s)
					if (player == GetThisPlayer() and GetPlayerData(GetThisPlayer(), "UnitTypeKills", "unit-yale") >= 8) then
						if (GrandStrategy == false) then
							if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Rocky Home") == false) then
								table.insert(wyr.preferences.QuestsCompleted, "A Rocky Home")
							end
							SavePreferences()
						end
						ActionVictory()
					end
				end
			}
		}
	}
})
