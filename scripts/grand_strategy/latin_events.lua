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
--      (c) Copyright 2015 by Andrettin
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

local LatinEvents = {
	DivitiacusPleaForAssistance = { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 218.
		Name = "Divitiacus' Plea for Assistance",
		Description = "The Aedui chief Divitiacus has told us of a German invasion of Gaul, and asks for our assistance in pushing them back beyond the Rhine.",
		TriggeredOnly = true,
		Options = {"~!Accept", "~!Decline"},
		OptionEffects = {
			function(s)
				DeclareWar(EventFaction.Name, "Suebi Tribe")
			end,
			function(s)
			end
		},
		OptionTooltips = {"War with the Suebi Tribe", ""}
	},
	DeBelloGallico = { -- Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 227.
		Name = "De Bello Gallico",
		Description = "Caesar has written his treatise on the Gallic Wars, \"De Bello Gallico\".",
		Conditions = function(s)
			if (
				EventFaction.Name == "Rome"
				and GetProvinceOwner("France") == EventFaction.Name -- Gaul must have been conquered
				and GetProvinceOwner("Alsace") == EventFaction.Name
				and GetProvinceOwner("Aquitaine") == EventFaction.Name
				and GetProvinceOwner("Burgundy") == EventFaction.Name
				and GetProvinceOwner("Franche Comte") == EventFaction.Name
				and GetProvinceOwner("Lorraine") == EventFaction.Name
				and GetProvinceOwner("Moselle") == EventFaction.Name
				and GetProvinceOwner("Normandy") == EventFaction.Name
				and GetProvinceOwner("Provence") == EventFaction.Name
				and GetProvinceOwner("Savoy") == EventFaction.Name
--				and SyncRand(100) < 20
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -52, -- De Bello Gallico was written 58-52 BC
		MaxYear = -52,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	NotitiaDignitatum = { -- Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 231.
		Name = "Notitia Dignitatum",
		Description = "A new military handbook has been written, the \"Notitia Dignitatum\". Among other things, the manual details Germanic military units, such as the Brisigavi iuniores, the Brisigavi seniores and the Lentienses.",
		Conditions = function(s)
			if (
				EventFaction.Name == "Rome"
				and FactionBordersCulture(EventFaction, "teuton")
--				and SyncRand(100) < 20
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 400, -- Notitia Dignitatum was written c. 400 AD
		MaxYear = 400,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	}
}
	
AddEventTable(LatinEvents)
