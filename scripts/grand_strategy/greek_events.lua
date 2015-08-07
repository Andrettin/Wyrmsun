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
--      grand_strategy_events.lua - Defines the grand strategy events.
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

local GreekEvents = {
	HistoriaNova = { -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 320.
		Name = "Historia nova",
		Description = "Zosimus has written a work of his entitled \"Historia nova\", in which he describes events that occurred as far away as the Netherlands.",
		Conditions = function(s)
			if (
				WorldMapProvinces.Thrace.Owner == EventFaction.Name
				and WorldMapProvinces.Thrace.Civilization == "greek"
			) then
				EventProvince = WorldMapProvinces.Thrace
				return true
			else
				return false
			end
		end,
		MinYear = 500, -- written around 500 AD
		MaxYear = 500,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	}
}
	
AddEventTable(GreekEvents)
