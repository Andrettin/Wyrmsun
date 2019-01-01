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
--      (c) Copyright 2016-2019 by Andrettin
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

DefineQuest("the-two-kings-of-annwn", {
	Name = "The Two Kings of Annwn",
	Icon = "icon-elven-swordsman",
	Description = "The kingdom of Annwn has fallen into civil war. The scheming Hafgan has claimed king Arawn's throne, with many of the realm's nobles pledging allegiance to him, while others remained loyal to the king. Arawn now marches with his followers to combat Hafgan and his supporters...\n\nMap: Annwn",
	World = "alfheim",
	Civilization = "elf",
	Map = "maps/alfheim/annwn.smp",
	Scenario = "scripts/civilizations/elf/scenarios/the_two_kings_of_annwn.lua",
	PlayerColor = "white",
	IntroductionDialogue = "the-two-kings-of-annwn-introduction",
	Hidden = true
})

DefineQuest("volunds-flight", {
	Name = "Volund's Flight",
	Icon = "icon-elven-swordsman",
	PlayerColor = "black",
	FailEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "volunds-flight") then
			CallDialogue("campaign-defeat", trigger_player)
		end
	end,
	ObjectiveStrings = {"- Escape Saevarstad", "- Volund must survive"},
	Uncompleteable = true,
	Unobtainable = true,
	HeroesMustSurvive = {"volund"}
})
