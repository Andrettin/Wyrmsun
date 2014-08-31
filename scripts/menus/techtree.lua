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
--      techtree.lua - Defines the menu for tech trees.
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
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

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
		tech_points = 7
		SetPlayerData(GetThisPlayer(), "RaceName", "dwarf")
	elseif (civilization_number == 1) then
		civilization = "gnome"
		tech_points = 5
	end
	SetPlayerData(GetThisPlayer(), "RaceName", civilization)
	
	for i=1,table.getn(wyr.preferences.QuestsCompleted) do
		tech_points = tech_points + GetQuestTechnologyPoints(civilization, wyr.preferences.QuestsCompleted[i])
	end

	for i=1,table.getn(wyr.preferences.TechnologyAcquired) do
		tech_points = tech_points - GetTechnologyPointCost(civilization, wyr.preferences.TechnologyAcquired[i])
	end
	
	menu:addLabel("Technology Points: " .. tech_points, offx + 32, offy + 212 + (36 * 4))

	function addTechItemIcon(unit, menu, techicon_graphics, tech_description, x, y, playercolor)
		local techicon
		local b
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, unit)) then
			techicon = CPlayerColorGraphic:New(techicon_graphics .. ".png")
			techicon:Load()
			b = PlayerColorImageButton("", playercolor)
		else
			techicon = CGraphic:New(techicon_graphics .. "_transparent.png")
			techicon:Load()
			b = ImageButton("")
		end
		b:setActionCallback(
			function()
				local tech_menu = WarGameMenu(panel(5))
				tech_menu:setSize(352, 352)
				tech_menu:setPosition((Video.Width - tech_menu:getWidth()) / 2, (Video.Height - tech_menu:getHeight()) / 2)
				local unit_name = ""
				if (string.find(unit, "upgrade-") == nil) then
					unit_name = GetUnitTypeName(unit)
				else
					unit_name = CUpgrade:Get(unit).Name
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
		b:setFrame(true)
		return b
	end

	local playercolor
	if (civilization == "dwarf") then
		playercolor = "red"
		addTechItemIcon("unit-dwarven-miner", menu, "dwarf/icons/miner",
			GetUnitTypeData("unit-dwarven-miner", "Description"),
			offx + 23 + 4 + (54 * 5), offy + 10 + 4 + (46 * 1), playercolor)
		addTechItemIcon("unit-dwarven-town-hall", menu, "dwarf/icons/town_hall",
			GetUnitTypeData("unit-dwarven-town-hall", "Description"),
			offx + 23 + 4 + (54 * 5), offy + 10 + 4 + (46 * 2), playercolor)
		addTechItemIcon("unit-dwarven-mushroom-farm", menu, "dwarf/icons/mushroom_farm",
			GetUnitTypeData("unit-dwarven-mushroom-farm", "Description"),
			offx + 23 + 4 + (54 * 6), offy + 10 + 4 + (46 * 2), playercolor)
		addTechItemIcon("unit-dwarven-barracks", menu, "dwarf/icons/barracks",
			GetUnitTypeData("unit-dwarven-barracks", "Description"),
			offx + 23 + 4 + (54 * 4), offy + 10 + 4 + (46 * 2), playercolor)
		addTechItemIcon("unit-dwarven-axefighter", menu, "dwarf/icons/dwarven_axefighter",
			GetUnitTypeData("unit-dwarven-axefighter", "Description"),
			offx + 23 + 4 + (54 * 4), offy + 10 + 4 + (46 * 3), playercolor)
		addTechItemIcon("unit-dwarven-lumber-mill", menu, "tilesets/swamp/dwarf/icons/lumber_mill",
			GetUnitTypeData("unit-dwarven-lumber-mill", "Description"),
			offx + 23 + 4 + (54 * 3), offy + 10 + 4 + (46 * 2), playercolor)
		addTechItemIcon("unit-dwarven-smith", menu, "dwarf/icons/smith",
			GetUnitTypeData("unit-dwarven-smith", "Description"),
			offx + 23 + 4 + (54 * 2), offy + 10 + 4 + (46 * 2), playercolor)
		addTechItemIcon("unit-dwarven-sentry-tower", menu, "tilesets/swamp/dwarf/icons/sentry_tower",
			GetUnitTypeData("unit-dwarven-sentry-tower", "Description"),
			offx + 23 + 4 + (54 * 7), offy + 10 + 4 + (46 * 2), playercolor)
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-sentry-tower") and GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-lumber-mill")) then
			addTechItemIcon("unit-dwarven-guard-tower", menu, "tilesets/swamp/dwarf/icons/guard_tower",
				GetUnitTypeData("unit-dwarven-guard-tower", "Description"),
				offx + 23 + 4 + (54 * 7), offy + 10 + 4 + (46 * 3), playercolor)
		end
--		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-smith") and GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-stronghold")) then
--			addTechItemIcon("unit-dwarven-steelclad", menu, "dwarf/icons/dwarven_steelclad",
--				GetUnitTypeData("unit-dwarven-steelclad", "Description"),
--				offx + 23 + 4 + (54 * 4), offy + 10 + 4 + (46 * 4), playercolor)
--		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-lumber-mill")) then
			addTechItemIcon("unit-dwarven-scout", menu, "dwarf/icons/dwarven_scout",
				GetUnitTypeData("unit-dwarven-scout", "Description"),
				offx + 23 + 4 + (54 * 3), offy + 10 + 4 + (46 * 3), playercolor)
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-scout")) then
			addTechItemIcon("upgrade-dwarven-throwing-axe-1", menu, "dwarf/icons/throwing_axe_2",
				CUpgrade:Get("upgrade-dwarven-throwing-axe-1").Description,
				offx + 23 + 4 + (54 * 3), offy + 10 + 4 + (46 * 4), playercolor)
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "upgrade-dwarven-throwing-axe-1")) then
			addTechItemIcon("upgrade-dwarven-throwing-axe-2", menu, "dwarf/icons/throwing_axe_3",
				CUpgrade:Get("upgrade-dwarven-throwing-axe-2").Description,
				offx + 23 + 4 + (54 * 3), offy + 10 + 4 + (46 * 5), playercolor)
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-smith")) then
			addTechItemIcon("upgrade-dwarven-broad-axe", menu, "dwarf/icons/axe_2",
				CUpgrade:Get("upgrade-dwarven-broad-axe").Description,
				offx + 23 + 4 + (54 * 2), offy + 10 + 4 + (46 * 3), playercolor)

			addTechItemIcon("upgrade-dwarven-shield-1", menu, "dwarf/icons/shield_2",
				CUpgrade:Get("upgrade-dwarven-shield-1").Description,
				offx + 23 + 4 + (54 * 1), offy + 10 + 4 + (46 * 3), playercolor)
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "upgrade-dwarven-broad-axe")) then
			addTechItemIcon("upgrade-dwarven-great-axe", menu, "dwarf/icons/axe_3",
				CUpgrade:Get("upgrade-dwarven-great-axe").Description,
				offx + 23 + 4 + (54 * 2), offy + 10 + 4 + (46 * 4), playercolor)
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "upgrade-dwarven-shield-1")) then
			addTechItemIcon("upgrade-dwarven-shield-2", menu, "dwarf/icons/shield_3",
				CUpgrade:Get("upgrade-dwarven-shield-2").Description,
				offx + 23 + 4 + (54 * 1), offy + 10 + 4 + (46 * 4), playercolor)
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-lumber-mill") and GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-smith")) then
			addTechItemIcon("unit-dwarven-ballista", menu, "tilesets/swamp/dwarf/icons/dwarven_ballista",
				GetUnitTypeData("unit-dwarven-ballista", "Description"),
				offx + 23 + 4 + (54 * 0), offy + 10 + 4 + (46 * 3), playercolor)
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-ballista")) then
			addTechItemIcon("upgrade-dwarven-ballista-bolt-1", menu, "dwarf/icons/ballista_bolt_2",
				CUpgrade:Get("upgrade-dwarven-ballista-bolt-1").Description,
				offx + 23 + 4 + (54 * 0), offy + 10 + 4 + (46 * 4), playercolor)
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "upgrade-dwarven-ballista-bolt-1")) then
			addTechItemIcon("upgrade-dwarven-ballista-bolt-2", menu, "dwarf/icons/ballista_bolt_3",
				CUpgrade:Get("upgrade-dwarven-ballista-bolt-2").Description,
				offx + 23 + 4 + (54 * 0), offy + 10 + 4 + (46 * 5), playercolor)
		end
	end

	menu:addFullButton("~!Reset Tech Tree", "r", offx + 208, offy + 212 + (36 * 5),
		function()
			ResetTechnologiesAcquired()
			menu:stop()
			RunTechTreeMenu(civilization_dd:getSelected())
		end)
	menu:addFullButton("~!Previous Menu", "p", offx + 208, offy + 212 + (36 * 6),
		function() menu:stop(); end)

	menu:run()
end

function ResetTechnologiesAcquired()
	wyr.preferences.TechnologyAcquired = {
		"unit-dwarven-miner", "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane", "unit-dwarven-town-hall", "unit-dwarven-mushroom-farm", "unit-dwarven-barracks",
		"unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-town-hall", "unit-gnomish-farm", "unit-gnomish-barracks",
		"unit-goblin-worker", "unit-goblin-spearman", "unit-goblin-town-hall", "unit-goblin-farm", "unit-goblin-mess-hall"
	}
	SavePreferences()
end

function GetQuestTechnologyPoints(civilization, quest)
	for key, value in pairs(Quests) do
		if (Quests[key].Name == quest) then
			if (Quests[key].Civilization == civilization) then
				return Quests[key].TechnologyPoints
			else
				return 0
			end
		end
	end
	return 0
end

function GetTechnologyPointCost(civilization, technology)
	if (civilization == "dwarf" and string.find(technology, "dwarven-") ~= nil) then
		return 1
	else
		return 0
	end
end
