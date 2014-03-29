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


function RunTechTreeMenu(civilization_number)

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
	civilization_dd:setSelected(civilization_number)
	civilization_dd:setSize(152, 20)

	local tech_points = 0
	local civilization = ""

	if (civilization_number == 0) then
		civilization = "dwarf"
	end
	
	for i=1,table.getn(wyr.preferences.QuestsCompleted) do
		tech_points = tech_points + GetQuestTechnologyPoints(civilization, wyr.preferences.QuestsCompleted[i])
	end

	for i=1,table.getn(wyr.preferences.TechnologyAcquired) do
		tech_points = tech_points - GetTechnologyPointCost(civilization, wyr.preferences.TechnologyAcquired[i])
	end

	menu:addLabel("Technology Points: " .. tech_points, offx + 32, offy + 212 + (36 * 4))

	function addTechItemIcon(unit, menu, techicon_graphics, tech_description, x, y)
		local techicon
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, unit)) then
			techicon = CGraphic:New(techicon_graphics .. ".png")
		else
			techicon = CGraphic:New(techicon_graphics .. "_transparent.png")
		end
		techicon:Load()
		local b = ImageButton("")
	--	b:setHotKey("")
		b:setActionCallback(
			function()
				local tech_menu = WarGameMenu(panel(5))
				tech_menu:setSize(352, 352)
				tech_menu:setPosition((Video.Width - tech_menu:getWidth()) / 2, (Video.Height - tech_menu:getHeight()) / 2)
				local unit_name = ""
				if (string.find(unit, "upgrade-") == nil) then
					unit_name = GetUnitTypeName(unit)
				else
					if (unit == "upgrade-dwarven-throwing-axe-1") then
						unit_name = "Sharp Throwing Axes"
					elseif (unit == "upgrade-dwarven-throwing-axe-2") then
						unit_name = "Bearded Throwing Axes"
					end
				end
				tech_menu:addLabel(unit_name, 176, 11)
				local tech_menu_image = ImageWidget(techicon)
				tech_menu:add(tech_menu_image, 153, 48)

				local l = MultiLineLabel()
				l:setFont(Fonts["game"])
				l:setSize(324, 208)
				l:setLineWidth(324)
				tech_menu:add(l, 14, 112)
				l:setCaption(tech_description)

				if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, unit) == false and tech_points > 0) then
					tech_menu:addFullButton("~!Acquire", "a", 176 - (224 / 2), 352 - 40 * 2,
						function()
							table.insert(wyr.preferences.TechnologyAcquired, unit)
							SavePreferences()
							tech_menu:stop()
							menu:stop()
							RunTechTreeMenu(civilization_dd:getSelected())
						end)
				end
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

	if (civilization == "dwarf") then
		addTechItemIcon("unit-dwarven-miner", menu, "dwarf/icons/miner",
			"Dwarven miners are the grunt workers of dwarven society. They take the precious ores out of the ground, but do not ever take part in the crafting of weapons or artifacts. Although their expertise makes them quite efficient in mining, this comes at the cost of neglecting training in the harvesting of other resources.",
			offx + 23 + 4 + (54 * 5), offy + 10 + 4 + (46 * 1))
		addTechItemIcon("unit-dwarven-town-hall", menu, "dwarf/icons/town_hall",
			"The mead hall is the center of any sizable dwarven settlement, where they gather to discuss the issues facing the community and drink their strong mead. It was in one such hall that Fjalar and Galar feasted on the mead they made out of the blood of a dwarven sage, believing that it would grant them his breadth of knowledge.",
			offx + 23 + 4 + (54 * 5), offy + 10 + 4 + (46 * 2))
		addTechItemIcon("unit-dwarven-mushroom-farm", menu, "dwarf/icons/mushroom_farm",
			"For aeons, dwarves have practiced mushroom farming underground. At first, their crude agricultural methods allowed them only to use mushroom farming as a supplementary means of nutrition, so that they could remain in a given area for a longer time before migrating. Eventually, however, dwarven mushroom farming techniques developed to the point that dwarves were able to establish their first permanent communities.",
			offx + 23 + 4 + (54 * 6), offy + 10 + 4 + (46 * 2))
		addTechItemIcon("unit-dwarven-barracks", menu, "dwarf/icons/barracks",
			"The war hall is where dwarves meet to train and hone their axefighting skills. Since early times, dwarves have faced many perils in the dark plains and caves of Nidavellir, such as goblins or hostile dwarven clans. To fight off these menaces, clans gradually developed means of organizing themselves militarily.",
			offx + 23 + 4 + (54 * 4), offy + 10 + 4 + (46 * 2))
		addTechItemIcon("unit-dwarven-axefighter", menu, "dwarf/icons/dwarven_axefighter",
			"Dwarven axefighters wield mighty battle axes, which make them feared opponents in close-range combat.",
			offx + 23 + 4 + (54 * 4), offy + 10 + 4 + (46 * 3))
		addTechItemIcon("unit-dwarven-lumber-mill", menu, "tilesets/swamp/dwarf/icons/lumber_mill",
			"The lumber mill employs a number of dwarven artisans skilled in woodworking, who strive to improve methods of lumber production and the scouts' throwing axes.",
			offx + 23 + 4 + (54 * 3), offy + 10 + 4 + (46 * 2))
		addTechItemIcon("unit-dwarven-sentry-tower", menu, "tilesets/swamp/dwarf/icons/sentry_tower",
			"In these towers, dwarves keep watch of threats approaching their settlements.",
			offx + 23 + 4 + (54 * 7), offy + 10 + 4 + (46 * 2))
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-sentry-tower") and GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-lumber-mill")) then
			addTechItemIcon("unit-dwarven-guard-tower", menu, "tilesets/swamp/dwarf/icons/guard_tower",
				"Garrisoned by dwarven scouts, these towers are an essential part of a dwarven settlement's defenses.",
				offx + 23 + 4 + (54 * 7), offy + 10 + 4 + (46 * 3))
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-blacksmith") and GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-stronghold")) then
			addTechItemIcon("unit-dwarven-steelclad", menu, "dwarf/icons/dwarven_steelclad",
				"The dwarven steelclad fighters wear heavy chain mail and plate armor, for which they are rightly famous.",
				offx + 23 + 4 + (54 * 4), offy + 10 + 4 + (46 * 4))
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-lumber-mill")) then
			addTechItemIcon("unit-dwarven-scout", menu, "dwarf/icons/dwarven_scout",
				"Dwarven scouts use their lighter armor to their advantage, ranging ahead of the main force and reporting back on troop movements and dispositions, or securing important objectives. Outside of battle, they are often used to relay messages between dwarven communities.",
				offx + 23 + 4 + (54 * 3), offy + 10 + 4 + (46 * 3))
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-scout")) then
			addTechItemIcon("upgrade-dwarven-throwing-axe-1", menu, "dwarf/icons/throwing_axe_2",
				"As their woodworking craftsmanship progress, dwarven artisans become capable of improving the basic throwing axe to have sharper blades.\n\nEffect: +1 Damage for Scouts.",
				offx + 23 + 4 + (54 * 3), offy + 10 + 4 + (46 * 4))
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "upgrade-dwarven-throwing-axe-1")) then
			addTechItemIcon("upgrade-dwarven-throwing-axe-2", menu, "dwarf/icons/throwing_axe_3",
				"The 'bearding' of throwing axes by extending the bottom of their blades is an innovation which makes them more deadly when thrown.\n\nEffect: +1 Damage for Scouts.",
				offx + 23 + 4 + (54 * 3), offy + 10 + 4 + (46 * 5))
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-lumber-mill") and GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-blacksmith")) then
			addTechItemIcon("unit-dwarven-ballista", menu, "dwarf/icons/dwarven_ballista",
				"",
				offx + 23 + 4 + (54 * 2), offy + 10 + 4 + (46 * 3))
		end
	end

	menu:addFullButton("~!Previous Menu", "p", offx + 208, offy + 212 + (36 * 6),
		function() menu:stop(); end)

	menu:run()
end

function ResetTechnologiesAcquired()
	wyr.preferences.TechnologyAcquired = {
		"unit-dwarven-miner", "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-town-hall", "unit-dwarven-mushroom-farm", "unit-dwarven-barracks", "unit-hero-rugnur", "unit-hero-rugnur-older",
		"unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-town-hall", "unit-gnomish-farm", "unit-gnomish-barracks",
		"unit-goblin-worker", "unit-goblin-spearman", "unit-goblin-town-hall", "unit-goblin-farm", "unit-goblin-mess-hall", "unit-hero-greebo"
	}
	if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck")) then
		table.insert(wyr.preferences.TechnologyAcquired, "unit-hero-baglur")
	end
	SavePreferences()

	local warning_menu = WarGameMenu(panel(2))
	warning_menu:setSize(288, 256)
	warning_menu:setPosition((Video.Width - warning_menu:getWidth()) / 2, (Video.Height - warning_menu:getHeight()) / 2)
	warning_menu:addLabel("Warning", 144, 11)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(270, 128)
	l:setLineWidth(270)
	warning_menu:add(l, 14, 70)
	l:setCaption("Due to changes in the tech tree in the latest version of Wyrmsun, your choice of technologies has been reset. You may reallocate your tech points.")
			
	warning_menu:addFullButton("~!Close", "c", 32, 256 - 40,
		function()
			warning_menu:stop()
		end)
	warning_menu:run()
end

function GetQuestTechnologyPoints(civilization, quest)
	if (civilization == "dwarf" and (quest == "A Bargain is Struck" or quest == "Closing the Gates" or quest == "Searching for the Runecrafter" or quest == "The Wyrm" or quest == "Caverns of Flame")) then
		return 2
	elseif (civilization == "dwarf" and (quest == "Hills of the Shorbear Clan" or quest == "Towards the Caves")) then
		return 1
	else
		return 0
	end
end

function GetTechnologyPointCost(civilization, technology)
	if (civilization == "dwarf" and (technology == "unit-dwarven-lumber-mill" or technology == "unit-dwarven-sentry-tower" or technology == "unit-dwarven-guard-tower" or technology == "unit-dwarven-scout" or technology == "upgrade-dwarven-throwing-axe-1" or technology == "upgrade-dwarven-throwing-axe-2" or technology == "unit-dwarven-blacksmith" or technology == "unit-dwarven-ballista" or technology == "unit-dwarven-stronghold")) then
		return 1
	else
		return 0
	end
end
