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
--      quests.lua - Define the menu for quests.
--
--      (c) Copyright 2014 by Andre Novellino Gouvêa
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

function RunQuestMenu()

	wyrmsun.playlist = { "music/legends_of_the_north.ogg" }
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

	if not (IsMusicPlaying()) then
		PlayMusic("music/legends_of_the_north.ogg")
	end

	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	for key, value in pairs(Quests) do
		if (Quests[key].RequiredQuest == nil or GetArrayIncludes(wyr.preferences.QuestsCompleted, Quests[key].RequiredQuest)) then
			if (Quests[key].RequiredTechnology == nil or GetArrayIncludes(wyr.preferences.TechnologyAcquired, Quests[key].RequiredTechnology)) then
				addQuestIcon(Quests[key].Name, menu, Quests[key].Icon, Quests[key].Description, offx + 23 + 4 + (54 * Quests[key].X), offy + 10 + 4 + (46 * Quests[key].Y), Quests[key].PlayerColor)
			end
		end
	end

	menu:addFullButton("~!Previous Menu", "p", offx + 208, offy + 212 + (36 * 6),
		function() menu:stop(); end)

	menu:run()
end

function addQuestIcon(quest, menu, questicon_graphics, quest_description, x, y, playercolor)
	local questicon
	local b
	if (GetArrayIncludes(wyr.preferences.QuestsCompleted, quest)) then
		questicon = CGraphic:New(questicon_graphics .. "_grayed.png")
		questicon:Load()
		b = ImageButton("")
	else
		questicon = CPlayerColorGraphic:New(questicon_graphics .. ".png")
		questicon:Load()
		b = PlayerColorImageButton("", playercolor)
	end
	b:setActionCallback(
		function()
			local quest_menu = WarGameMenu(panel(5))
			quest_menu:setSize(352, 352)
    			quest_menu:setPosition((Video.Width - quest_menu:getWidth()) / 2, (Video.Height - quest_menu:getHeight()) / 2)
			quest_menu:addLabel(quest, 176, 11)
			local quest_menu_image = ImageWidget(questicon)
			quest_menu:add(quest_menu_image, 153, 48)

			local l = MultiLineLabel()
			l:setFont(Fonts["game"])
			l:setSize(324, 208)
			l:setLineWidth(324)
			quest_menu:add(l, 14, 112)
			l:setCaption(quest_description)
			
			quest_menu:addFullButton("~!Close", "c", 176 - (224 / 2), 352 - 40 * 1,
				function()
					quest_menu:stop()
				end)
			quest_menu:run()
		end
	)
	menu:add(b, x, y)
	b:setNormalImage(questicon)
	b:setPressedImage(questicon)
	b:setDisabledImage(questicon)
	b:setSize(46, 38)
	b:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
	b:setFrame(true)
	return b
end
