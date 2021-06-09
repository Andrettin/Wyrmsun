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
--      (c) Copyright 2014-2021 by Andrettin
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

quest_world_menu = nil

function RunQuestMenu(world)
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

	local menu = WarMenu()
	quest_world_menu = menu
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2
	
	local custom_heroes = GetCustomHeroes()
	local hero_list = {}
	local hero_name_list = {}
	for i=1,table.getn(custom_heroes) do
		if (
			(world == "earth" and (GetCustomHeroData(custom_heroes[i], "Civilization") == "germanic" or GetCustomHeroData(custom_heroes[i], "Civilization") == "anglo_saxon" or GetCustomHeroData(custom_heroes[i], "Civilization") == "english" or GetCustomHeroData(custom_heroes[i], "Civilization") == "frankish" or GetCustomHeroData(custom_heroes[i], "Civilization") == "goth" or GetCustomHeroData(custom_heroes[i], "Civilization") == "suebi" or GetCustomHeroData(custom_heroes[i], "Civilization") == "teuton" or GetCustomHeroData(custom_heroes[i], "Civilization") == "norse" or GetCustomHeroData(custom_heroes[i], "Civilization") == "latin"))
			or (world == "nidavellir" and GetCustomHeroData(custom_heroes[i], "Civilization") == "dwarf")
			or (world == "nidavellir" and GetCustomHeroData(custom_heroes[i], "Civilization") == "gnome")
			or (world == "nidavellir" and GetCustomHeroData(custom_heroes[i], "Civilization") == "goblin")
		) then
			table.insert(hero_list, custom_heroes[i])
		end
	end
	local hero_dd
	table.sort(hero_list)
	for i=1,table.getn(hero_list) do
		table.insert(hero_name_list, GetCustomHeroData(hero_list[i], "FullName"))
	end
	table.insert(hero_list, "") -- to allow players to choose having no custom hero selected
	table.insert(hero_name_list, "")
	menu:addLabel(_("Custom Hero:"), offx + 30 * get_scale_factor(), offy + ((10 + 300) - 20) * get_scale_factor(), Fonts["game"], false)
	hero_dd = menu:addDropDown(hero_name_list, offx + 30 * get_scale_factor(), offy + (10 + 300) * get_scale_factor(),
		function(dd)
			SetCurrentCustomHero(hero_list[hero_dd:getSelected() + 1])
			menu:stop()
			RunQuestMenu(world)
		end
	)
	hero_dd:setSize(152 * get_scale_factor(), 20 * get_scale_factor())
	hero_dd:setSelected(GetElementIndexFromArray(hero_list, GetCurrentCustomHero()) - 1)
				
	menu:addFullButton(_("Create Custom ~!Hero"), "h", offx + 208 * get_scale_factor(), offy + (212 + (36 * 4)) * get_scale_factor(),
		function() CustomHeroCreationMenu(world, menu);
		end
	)
	
	menu:addFullButton(_("~!Delete Custom Hero"), "d", offx + (208 + 226) * get_scale_factor(), offy + (212 + (36 * 4)) * get_scale_factor(),
		function()
			if (GetCurrentCustomHero() ~= "") then
				local confirm = WarGameMenu(panel(4))

				confirm:resize(288 * get_scale_factor(), 128 * get_scale_factor())

				confirm:addLabel(_("Delete ") .. GetCurrentCustomHero(), 288 / 2 * get_scale_factor(), 11 * get_scale_factor())
				confirm:addLabel(_("Are you sure?") .. " This cannot be undone.", 288 / 2 * get_scale_factor(), 45 * get_scale_factor(), Fonts["game"])

				confirm:addHalfButton(_("~!Yes"), "y", (1 * (288 / 3) - 90) * get_scale_factor(), (120 - 16 - 27) * get_scale_factor(),
					function()
						DeleteCustomHero(GetCurrentCustomHero())
						confirm:stop()
						menu:stop(); RunQuestMenu(world);
					end
				)

				confirm:addHalfButton(_("~!No"), "n", (3 * (288 / 3) - 116) * get_scale_factor(), (120 - 16 - 27) * get_scale_factor(),
					function() confirm:stop() end
				)

				confirm:run()
			end
		end
	)

	menu:run()
end

function ShowQuestDialog(quest)
	local quest_icon_frame = GetIconData(GetQuestData(quest, "Icon"), "Frame")
	local questicon
	local is_grayscale = GetQuestData(quest, "Completed")
	questicon = GetIconData(GetQuestData(quest, "Icon"), "File")
	
	local quest_menu = WarGameMenu(panel(5))
	quest_menu:setSize(352 * get_scale_factor(), 352 * get_scale_factor())
	quest_menu:setPosition((Video.Width - quest_menu:getWidth()) / 2, (Video.Height - quest_menu:getHeight()) / 2)
	quest_menu:addLabel(_(GetQuestData(quest, "Name")), 176 * get_scale_factor(), 11 * get_scale_factor())
	local quest_menu_image = PlayerColorImageWidget(questicon, GetQuestData(quest, "PlayerColor"))
	quest_menu_image:set_frame(quest_icon_frame)	
	quest_menu_image:setGrayscale(is_grayscale)	
	quest_menu:add(quest_menu_image, 153 * get_scale_factor(), 48 * get_scale_factor())

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(324 * get_scale_factor(), 208 * get_scale_factor())
	l:setLineWidth(324 * get_scale_factor())
	quest_menu:add(l, 14 * get_scale_factor(), 112 * get_scale_factor())
	local quest_description = _(GetQuestData(quest, "Description"))
	l:setCaption(quest_description)
	
	if (GetQuestData(quest, "Map") ~= "") then
		quest_menu:addFullButton(_("~!Play Quest"), "p", (176 - (224 / 2)) * get_scale_factor(), (352 - 40 * 2) * get_scale_factor(),
			function()
				SetCurrentQuest(quest)
				GetMapInfo(GetQuestData(quest, "Map"))
				GameSettings.Difficulty = get_difficulty_index()
				mapname = GetQuestData(quest, "Map")
				quest_menu:stop()
				RunMap(mapname)
				quest_world_menu:stop()
				if not (LoadGameFile) then
					RunQuestMenu(GetQuestData(quest, "World"))
				end
			end
		)
	end
	quest_menu:addFullButton(_("~!Close"), "c", (176 - (224 / 2)) * get_scale_factor(), (352 - 40 * 1) * get_scale_factor(),
		function()
			quest_menu:stop()
		end
	)
	quest_menu:run()
end
