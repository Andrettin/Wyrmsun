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
--      (c) Copyright 2013-2014 by Andre Novellino Gouvêa
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

function addTechItemIcon(unit, menu, techicon, tech_description, x, y)
	techicon:Load()
	local b = ImageButton("")
--	b:setHotKey("")
	b:setActionCallback(
		function()
			local tech_menu = WarGameMenu(panel(5))
			tech_menu:setSize(352, 352)
    			tech_menu:setPosition((Video.Width - tech_menu:getWidth()) / 2, (Video.Height - tech_menu:getHeight()) / 2)
			tech_menu:addLabel(GetUnitTypeName(unit), 176, 11)
			local tech_menu_image = ImageWidget(techicon)
			tech_menu:add(tech_menu_image, 153, 48)

			local l = MultiLineLabel()
			l:setFont(Fonts["game"])
			l:setSize(324, 208)
			l:setLineWidth(324)
			tech_menu:add(l, 14, 112)
			l:setCaption(tech_description)
			
			tech_menu:addFullButton("~!Close", "c", 176 - (224 / 2), 352 - 40 * 1,
				function()
					tech_menu:stop()
				end)
			tech_menu:run()
		end
	)
	menu:add(b, x, y)
	b:setNormalImage(techicon)
	b:setPressedImage(techicon)
	b:setDisabledImage(techicon)
	b:setSize(46, 38)
	b:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
	return b
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
		addTechItemIcon("unit-dwarven-miner", menu, CGraphic:New("dwarf/icons/miner.png"),
			"Dwarven miners are the grunt workers of dwarven society. They take the precious ores out of the ground, but do not ever take part in the crafting of weapons or artifacts.",
			offx + 23 + 4 + (54 * 5), offy + 10 + 4 + (46 * 1))
		addTechItemIcon("unit-dwarven-town-hall", menu, CGraphic:New("dwarf/icons/town_hall.png"),
			"The mead hall is the center of any sizable dwarven settlement, where they gather to discuss the issues facing the community and drink their strong mead. It was in one such hall that Fjalar and Galar feasted on the mead they made out of the blood of a dwarven sage, believing that it would grant them his breadth of knowledge.",
			offx + 23 + 4 + (54 * 5), offy + 10 + 4 + (46 * 2))
		addTechItemIcon("unit-dwarven-mushroom-farm", menu, CGraphic:New("dwarf/icons/mushroom_farm.png"),
			"For aeons, dwarves have practiced mushroom farming underground. At first, their crude agricultural methods allowed them only to use mushroom farming as a supplementary means of nutrition, so that they could remain in a given area for a longer time before migrating. Eventually, however, dwarven mushroom farming techniques developed to the point that dwarves were able to establish their first permanent communities.",
			offx + 23 + 4 + (54 * 6), offy + 10 + 4 + (46 * 2))
		addTechItemIcon("unit-dwarven-barracks", menu, CGraphic:New("dwarf/icons/barracks.png"),
			"The war hall is where dwarves meet to train and hone their axefighting skills. Since early times, dwarves have faced many perils in the dark plains and caves of Nidavellir, such as goblins or hostile dwarven clans. To fight off these menaces, clans gradually developed means of organizing themselves militarily.",
			offx + 23 + 4 + (54 * 4), offy + 10 + 4 + (46 * 2))
		addTechItemIcon("unit-dwarven-axefighter", menu, CGraphic:New("dwarf/icons/dwarven_axefighter.png"),
			"Dwarven axefighters wield mighty battle axes, which make them feared opponents in close-range combat.",
			offx + 23 + 4 + (54 * 4), offy + 10 + 4 + (46 * 3))
	end

	menu:addFullButton("~!Previous Menu", "p", offx + 208, offy + 212 + (36 * 6),
		function() menu:stop(); end)

	menu:run()
end
