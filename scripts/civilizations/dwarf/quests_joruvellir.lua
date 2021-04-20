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
--      (c) Copyright 2017-2021 by Andrettin
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

DefineQuest("a_home_in_the_fields_of_sand", {
	Name = "A Home in the Fields of Sand",
	Icon = "icon-joruvellir-scout-black-hair",
	PlayerColor = "brown",
	AcceptEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "a_home_in_the_fields_of_sand") then
			CallDialogue("a-home-in-the-fields-of-sand-introduction", trigger_player)
		end
	end,
	FailEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "a_home_in_the_fields_of_sand") then
			CallDialogue("campaign-defeat", trigger_player)
		end
	end,
	ObjectiveStrings = {"Build a Mead Hall in Joruvellir", "Draupnir must survive"},
	Uncompleteable = true,
	Unobtainable = true,
	HeroesMustSurvive = {"draupnir"}
})
