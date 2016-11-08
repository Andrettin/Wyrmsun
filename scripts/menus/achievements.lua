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
--      (c) Copyright 2014-2016 by Andrettin
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

	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

	if not (IsMusicPlaying()) then
		PlayMusicName("MenuTheme")
	end

	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	menu:addLabel(_("~<Achievements~>"), offx + 320, offy + 104 + 36*-2)

	local item_x = 1
	local item_y = 1
	local achievements = GetAchievements()
	for i=1, table.getn(achievements) do
		if (GetAchievementData(achievements[i], "Hidden") == false) then
			addAchievementIcon(achievements[i], menu, offx + 23 + 4 + (54 * item_x), offy + 10 + 4 + (46 * item_y))
			
			item_x = item_x + 1
			if (item_x > 9) then
				item_x = 1
				item_y = item_y + 1
			end
		end
	end

	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 212 + (36 * 6),
		function() menu:stop(); end)

	menu:run()
end

function addAchievementIcon(achievement, menu, x, y)
	local achievement_icon_frame = CIcon:Get(GetAchievementData(achievement, "Icon")).Frame
	local achievement_icon = CIcon:Get(GetAchievementData(achievement, "Icon")).G
	local b = PlayerColorImageButton("", GetAchievementData(achievement, "PlayerColor"))
	if (GetAchievementData(achievement, "Obtained") == false) then
		b:setTransparency(66)
	end
	b:setSkinColor(GetAchievementData(achievement, "SkinColor"))
	b:setHairColor(GetAchievementData(achievement, "HairColor"))
	local achievement_icon_x_origin = (achievement_icon_frame * 46) % achievement_icon:getGraphicWidth()
	local achievement_icon_y_origin = math.floor((achievement_icon_frame * 46) / achievement_icon:getGraphicWidth()) * 38
--	b:setHotKey("")
	b:setActionCallback(
		function()
			PlaySound("click")
			local achievement_menu = WarGameMenu(panel(2))
			achievement_menu:setSize(288, 256)
    		achievement_menu:setPosition((Video.Width - achievement_menu:getWidth()) / 2, (Video.Height - achievement_menu:getHeight()) / 2)
			achievement_menu:addLabel(GetAchievementData(achievement, "Name"), 144, 11)
			local achievement_menu_image = PlayerColorImageWidget(achievement_icon, GetAchievementData(achievement, "PlayerColor"))
			achievement_menu_image:setSkinColor(GetAchievementData(achievement, "SkinColor"))
			achievement_menu_image:setHairColor(GetAchievementData(achievement, "HairColor"))
			achievement_menu:add(achievement_menu_image, 121, 48)

			local l = MultiLineLabel()
			l:setFont(Fonts["game"])
			l:setSize(260, 208)
			l:setLineWidth(260)
			achievement_menu:add(l, 14, 112)
			l:setCaption(GetAchievementData(achievement, "Description"))
			
			achievement_menu:addFullButton("~!Close", "c", 144 - (224 / 2), 256 - 40 * 1,
				function()
					achievement_menu:stop()
				end)
			achievement_menu:run()
		end
	)
	menu:add(b, x, y)
	b:setImageOrigin(achievement_icon_x_origin, achievement_icon_y_origin)	
	b:setNormalImage(achievement_icon)
	b:setPressedImage(achievement_icon)
	b:setDisabledImage(achievement_icon)
	b:setSize(46, 38)
	b:setBorderSize(0)
	b:setFrameImage(Preference.IconFrameG)
	b:setPressedFrameImage(Preference.PressedIconFrameG)
	b:setTooltip(GetAchievementData(achievement, "Name"))
	return b
end
