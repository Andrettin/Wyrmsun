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
--      (c) Copyright 2015-2017 by Andrettin
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

DefineGrandStrategyEvent("Palladius, Bishop of Ireland", { -- Source: Philip Schaff, "History of the Christian Church", 1997, §14.
	Description = "The Pope has ordained the Briton deacon Palladius as the first bishop of Ireland, sending him to administer the small community of the faithful there, and to promote Christianity amongst the non-believers.",
	World = "earth",
	MinYear = 431,
	MaxYear = 431,
	Conditions = function(s)
		if (
			GetProvinceOwner("Leinster") == EventFaction.Name -- correct?
			and GetProvinceCivilization("Essex") == "celt" -- Essex correct?
		) then
			EventProvince = WorldMapProvinces.Leinster
			return true
		else
			return false
		end
	end,
	Options = {"~!OK"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
		end
	},
	OptionTooltips = {"+1 Prestige"}
})
