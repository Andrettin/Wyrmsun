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
--      techtree.lua - Define the menu for tech trees.
--
--      (c) Copyright 2013 by Andre Novellino Gouvêa
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

function addTechItemIcon(unit, menu, techicon, x, y)
	techicon:Load()
	local b = ImageWidget(techicon)
--	b:setHotKey(".")
--	b:setActionCallback(TechButtonFunction(unit, menu))
	menu:add(b, x, y)
--	b:setNormalImage(techicon)
--	b:setPressedImage(techicon)
--	b:setDisabledImage(techicon)
--	b:setSize(46, 38)
	return b
end

function TechButtonFunction(unit, menu)
  return function()
	Load("preferences.lua")

--	if (civilization == "dwarf") then
--	end

	SavePreferences()
	menu:stop()
	RunTechTreeSubmenu()
  end
end

function RunTechTreeMenu(civilization)

	wyrmsun.playlist = { "music/legends_of_the_north.ogg" }
	SetPlayerData(GetThisPlayer(), "RaceName", "dwarf")

	if not (IsMusicPlaying()) then
		PlayMusic("music/legends_of_the_north.ogg")
	end

	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	local civilization_dd
--	local button_quantity = 0

	menu:addLabel("~<Civilization:~>", offx + 244, offy + (10 + 15) - 20, Fonts["game"], false)
	civilization_dd = menu:addDropDown({"Dwarf"}, offx + 244, offy + 10 + 15,
		function(dd) menu:stop(); RunTechTreeMenu(civilization_dd:getSelected()) end)
	civilization_dd:setSelected(civilization)
	civilization_dd:setSize(152, 20)

	if (civilization == 0) then -- if dwarf is selected
		local tech_points = 0
		if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck") == true) then
			tech_points = tech_points + 5
		end

		menu:addLabel("Technology Points: " .. tech_points, offx + 32, offy + 212 + (36 * 4))
		addTechItemIcon("unit-dwarven-miner", menu, CGraphic:New("dwarf/icons/miner.png"), offx + 23 + 4 + (54 * 5), offy + 10 + 4 + (46 * 1))
		addTechItemIcon("unit-dwarven-town-hall", menu, CGraphic:New("dwarf/icons/town_hall.png"), offx + 23 + 4 + (54 * 5), offy + 10 + 4 + (46 * 2))
		addTechItemIcon("unit-dwarven-mushroom-farm", menu, CGraphic:New("dwarf/icons/mushroom_farm.png"), offx + 23 + 4 + (54 * 6), offy + 10 + 4 + (46 * 2))
		addTechItemIcon("unit-dwarven-barracks", menu, CGraphic:New("dwarf/icons/barracks.png"), offx + 23 + 4 + (54 * 4), offy + 10 + 4 + (46 * 2))
		addTechItemIcon("unit-dwarven-axefighter", menu, CGraphic:New("dwarf/icons/dwarven_axefighter.png"), offx + 23 + 4 + (54 * 4), offy + 10 + 4 + (46 * 3))
	end

	menu:addFullButton("~!Previous Menu", "p", offx + 208, offy + 212 + (36 * 6),
		function() menu:stop(); end)

	menu:run()
end

function RunQuestMenu()

	wyrmsun.playlist = { "music/legends_of_the_north.ogg" }
	SetPlayerData(GetThisPlayer(), "RaceName", "dwarf")

	if not (IsMusicPlaying()) then
		PlayMusic("music/legends_of_the_north.ogg")
	end

	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	local b_questicon

	if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck") == true) then
		b_questicon = CGraphic:New("dwarf/icons/rugnur.png")
	else
		b_questicon = CGraphic:New("dwarf/icons/rugnur_grayed.png")
	end
	
	b_questicon:Load()

	local b = menu:addImageButton("", "", offx + 23 + 4 + (54 * 0), offy + 10 + 4 + (46 * 0), function()
		local l = MultiLineLabel()
		l:setFont(Fonts["game"])
		l:setSize(324, 176)
		l:setLineWidth(324)
		menu:add(l, 14, offy + 212 + (36 * 4))
		l:setCaption("A Bargain is Struck\n\nOptimal Map: Chaincolt Foothills")
	end)
	b:setNormalImage(b_questicon)
	b:setPressedImage(b_questicon)
	b:setDisabledImage(b_questicon)
	b:setSize(46, 38)


	menu:addFullButton("~!Previous Menu", "p", offx + 208, offy + 212 + (36 * 6),
		function() menu:stop(); end)

	menu:run()
end

function addQuestIcon(unit, menu, questicon, x, y)
	questicon:Load()
	local b = ImageButton("")
--	b:setHotKey(".")
	b:setActionCallback(function() menu:addLabel("A Bargain is Struck", offx + 32, offy + 212 + (36 * 4)) end)
	menu:add(b, x, y)
	b:setNormalImage(questicon)
	b:setPressedImage(questicon)
	b:setDisabledImage(questicon)
	b:setSize(46, 38)
	return b
end
