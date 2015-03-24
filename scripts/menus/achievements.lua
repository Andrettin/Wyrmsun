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
--      achievements.lua - Define the menu for achievements.
--
--      (c) Copyright 2014 by Andrettin
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

function RunAchievementsMenu()

	wyrmsun.playlist = { "music/legends_of_the_north.ogg" }
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

	if not (IsMusicPlaying()) then
		PlayMusic("music/legends_of_the_north.ogg")
	end

	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	for key, value in pairs(Achievements) do
		addAchievementIcon(Achievements[key].Name, menu, Achievements[key].Icon, Achievements[key].Description, offx + 23 + 4 + (54 * Achievements[key].X), offy + 10 + 4 + (46 * Achievements[key].Y))
	end

	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 212 + (36 * 6),
		function() menu:stop(); end)

	menu:run()
end

function addAchievementIcon(achievement, menu, achievementicon_graphics, achievement_description, x, y)
	local achievementicon = CGraphic:New(achievementicon_graphics .. ".png")
	achievementicon:Load()
	local b = ImageButton("")
	if (GetArrayIncludes(wyr.preferences.AchievementsCompleted, achievement) == false) then
		b:setTransparency(66)
	end
--	b:setHotKey("")
	b:setActionCallback(
		function()
			PlaySound("click")
			local achievement_menu = WarGameMenu(panel(5))
			achievement_menu:setSize(352, 352)
    			achievement_menu:setPosition((Video.Width - achievement_menu:getWidth()) / 2, (Video.Height - achievement_menu:getHeight()) / 2)
			achievement_menu:addLabel(achievement, 176, 11)
			local achievement_menu_image = ImageWidget(achievementicon)
			achievement_menu:add(achievement_menu_image, 153, 48)

			local l = MultiLineLabel()
			l:setFont(Fonts["game"])
			l:setSize(324, 208)
			l:setLineWidth(324)
			achievement_menu:add(l, 14, 112)
			l:setCaption(achievement_description)
			
			achievement_menu:addFullButton("~!Close", "c", 176 - (224 / 2), 352 - 40 * 1,
				function()
					achievement_menu:stop()
				end)
			achievement_menu:run()
		end
	)
	menu:add(b, x, y)
	b:setNormalImage(achievementicon)
	b:setPressedImage(achievementicon)
	b:setDisabledImage(achievementicon)
	b:setSize(46, 38)
	b:setBorderSize(0)
	return b
end
