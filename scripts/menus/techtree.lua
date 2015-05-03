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
--      (c) Copyright 2013-2014 by Andrettin
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

	if (RunningScenario == false) then
		wyrmsun.playlist = { "music/battle_theme_a.ogg" }
		SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
		
		if not (IsMusicPlaying()) then
			PlayMusic("music/battle_theme_a.ogg")
		end
	end

	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	local civilization_dd
	local civilization_list = GetAvailableCivilizationsTechTree()
--	local button_quantity = 0

	menu:addLabel("~<Civilization:~>", offx + 244, offy + (10 + 15) - 20, Fonts["game"], false)
	civilization_dd = menu:addDropDown(civilization_list, offx + 244, offy + 10 + 15,
		function(dd) menu:stop(); RunTechTreeMenu(civilization_dd:getSelected()) end)
	civilization_dd:setSelected(civilization_number)
	civilization_dd:setSize(152, 20)

	local tech_points = 0
	
	local civilization = string.gsub(civilization_list[civilization_number + 1], "Human", "")
	civilization = string.gsub(civilization, "-", "")
	civilization = string.gsub(civilization, " ", "")
	civilization = string.lower(civilization)

	if (RunningScenario == false) then
		SetPlayerData(GetThisPlayer(), "RaceName", civilization)
	end
	
	tech_points = GetCivilizationTechnologyPoints(civilization)
	
	menu:addLabel(_("Technology Points: ") .. tech_points, 80 + 32, offy + 212 + (36 * 4))

	function addTechItemIcon(unit, menu, x, y, playercolor)
		local unit_name = ""
		local tech_description
		local techicon
		if (string.find(unit, "upgrade-") == nil) then
			unit_name = GetUnitTypeName(unit)
			tech_description = GetUnitTypeData(unit, "Description")
			techicon = CIcon:Get(GetUnitTypeData(unit, "Icon")).G
		else
			unit_name = CUpgrade:Get(unit).Name
			tech_description = CUpgrade:Get(unit).Description
			techicon = CUpgrade:Get(unit).Icon.G
		end
		tech_description = tech_description .. GetTechnologyAllowsString(unit, civilization)
		local b
		techicon:Load()
		b = PlayerColorImageButton("", playercolor)
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, unit) == false and GetTechnologyPointCost("", unit) > 0) then
			b:setTransparency(66)
		end
		b:setActionCallback(
			function()
				PlaySound("click")
				
				local tech_menu = WarGameMenu(panel(5))
				tech_menu:setSize(352, 352)
				tech_menu:setPosition((Video.Width - tech_menu:getWidth()) / 2, (Video.Height - tech_menu:getHeight()) / 2)
				tech_menu:addLabel(unit_name, 176, 11)
				local tech_menu_image = ImageWidget(techicon)
				tech_menu:add(tech_menu_image, 153, 48)

				local l = MultiLineLabel()
				l:setFont(Fonts["game"])
				l:setSize(324, 208)
				l:setLineWidth(324)
				tech_menu:add(l, 14, 112)
				l:setCaption(tech_description)

				if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, unit) == false and tech_points > 0 and GetTechnologyPointCost(civilization, unit) > 0) then
					tech_menu:addFullButton(_("~!Acquire"), "a", 176 - (224 / 2), 352 - 40 * 2,
						function()
							table.insert(wyr.preferences.TechnologyAcquired, unit)
							SavePreferences()
							tech_menu:stop()
							menu:stop()
							RunTechTreeMenu(civilization_dd:getSelected())
						end)
				end
				tech_menu:addFullButton(_("~!Close"), "c", 176 - (224 / 2), 352 - 40 * 1,
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
		b:setFrameImage(Preference.IconFrameG)
		b:setPressedFrameImage(Preference.PressedIconFrameG)
		b:setTooltip(unit_name)
		return b
	end

	local playercolor
	if (civilization == "dwarf") then
		playercolor = "red"
	elseif (civilization == "germanic") then
		playercolor = "orange"
	elseif (civilization == "teuton") then
		playercolor = "orange"
	end

	for i, unitName in ipairs(Units) do
		if (string.find(unitName, "upgrade-") == nil) then
			if (GetUnitTypeData(unitName, "Class") ~= "" and GetCivilizationClassUnitType(GetUnitTypeData(unitName, "Class"), civilization) == unitName) then
				local tech_icon_x = 0
				local tech_icon_y = 0
				local tech_allowed = true
				if (GetUnitTypeData(unitName, "Class") == "worker") then
					tech_icon_x = 5
					tech_icon_y = 1
				elseif (GetUnitTypeData(unitName, "Class") == "infantry") then
					tech_icon_x = 4
					tech_icon_y = 3
				elseif (GetUnitTypeData(unitName, "Class") == "shooter") then
					tech_icon_x = 7
					tech_icon_y = 3
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("lumber-mill", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("lumber-mill", civilization)) > 0) then
						tech_allowed = false
					end
				elseif (GetUnitTypeData(unitName, "Class") == "siege-engine") then
					tech_icon_x = 1
					tech_icon_y = 3
					if ((GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("lumber-mill", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("lumber-mill", civilization)) > 0) or (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("smithy", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("smithy", civilization)) > 0)) then
						tech_allowed = false
					end
				elseif (GetUnitTypeData(unitName, "Class") == "town-hall") then
					tech_icon_x = 5
					tech_icon_y = 2
				elseif (GetUnitTypeData(unitName, "Class") == "stronghold") then
					tech_icon_x = 5
					tech_icon_y = 3
					if not (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("masonry", civilization))) then
						tech_allowed = false
					end
				elseif (GetUnitTypeData(unitName, "Class") == "farm") then
					tech_icon_x = 6
					tech_icon_y = 2
				elseif (GetUnitTypeData(unitName, "Class") == "barracks") then
					tech_icon_x = 4
					tech_icon_y = 2
				elseif (GetUnitTypeData(unitName, "Class") == "lumber-mill") then
					tech_icon_x = 7
					tech_icon_y = 2
				elseif (GetUnitTypeData(unitName, "Class") == "smithy") then
					tech_icon_x = 3
					tech_icon_y = 2
				elseif (GetUnitTypeData(unitName, "Class") == "watch-tower") then
					tech_icon_x = 9
					tech_icon_y = 2
				elseif (GetUnitTypeData(unitName, "Class") == "guard-tower") then
					tech_icon_x = 9
					tech_icon_y = 3
					if not (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("watch-tower", civilization)) and GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("masonry", civilization))) then
						tech_allowed = false
					end
				else
					tech_allowed = false
				end
				if (tech_allowed) then
					addTechItemIcon(unitName, menu, offx + 23 + 4 + (54 * tech_icon_x), offy + 10 + 4 + (46 * tech_icon_y), playercolor)
				end
			end
		else
			if (CUpgrade:Get(unitName).Class ~= "" and GetCivilizationClassUnitType(CUpgrade:Get(unitName).Class, civilization) == unitName) then
				local tech_icon_x = 0
				local tech_icon_y = 0
				local tech_allowed = true
				if (CUpgrade:Get(unitName).Class == "melee-weapon-1") then
					tech_icon_x = 3
					tech_icon_y = 3
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("smithy", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("smithy", civilization)) > 0) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "melee-weapon-2") then
					tech_icon_x = 3
					tech_icon_y = 4
					if not (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("melee-weapon-1", civilization))) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "bronze-shield") then
					tech_icon_x = 2
					tech_icon_y = 3
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("smithy", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("smithy", civilization)) > 0) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "iron-shield") then
					tech_icon_x = 2
					tech_icon_y = 4
					if not (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("bronze-shield", civilization))) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "ranged-projectile-1") then
					tech_icon_x = 7
					tech_icon_y = 4
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("shooter", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("shooter", civilization)) > 0 and GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("flying-rider", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("flying-rider", civilization)) > 0) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "ranged-projectile-2") then
					tech_icon_x = 7
					tech_icon_y = 5
					if not (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("ranged-projectile-1", civilization))) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "siege-projectile-1") then
					tech_icon_x = 1
					tech_icon_y = 4
					if not (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("siege-engine", civilization))) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "siege-projectile-2") then
					tech_icon_x = 1
					tech_icon_y = 5
					if not (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("siege-projectile-1", civilization))) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "masonry") then
					tech_icon_x = 8
					tech_icon_y = 3
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("lumber-mill", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("lumber-mill", civilization)) > 0) then
						tech_allowed = false
					end
				else
					tech_allowed = false
				end
				if (tech_allowed) then
					addTechItemIcon(unitName, menu, offx + 23 + 4 + (54 * tech_icon_x), offy + 10 + 4 + (46 * tech_icon_y), playercolor)
				end
			end
		end
	end
	
	menu:addFullButton(_("~!Reset Tech Tree"), "r", offx + 208, offy + 212 + (36 * 5),
		function()
			ResetTechnologiesAcquired(civilization)
			menu:stop()
			RunTechTreeMenu(civilization_dd:getSelected())
		end)
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 212 + (36 * 6),
		function() menu:stop(); end)

	menu:run()
end

function ResetTechnologiesAcquired(civilization)
	local technologies_to_remove = {}
	for i=1,table.getn(wyr.preferences.TechnologyAcquired) do
		if (string.find(wyr.preferences.TechnologyAcquired[i], "upgrade-") == nil) then
			if (civilization == GetUnitTypeData(wyr.preferences.TechnologyAcquired[i], "Civilization")) then
				table.insert(technologies_to_remove, wyr.preferences.TechnologyAcquired[i])
			end
		else
			if (civilization == CUpgrade:Get(wyr.preferences.TechnologyAcquired[i]).Civilization) then
				table.insert(technologies_to_remove, wyr.preferences.TechnologyAcquired[i])
			end
		end
	end
	for i=1,table.getn(technologies_to_remove) do
		RemoveElementFromArray(wyr.preferences.TechnologyAcquired, technologies_to_remove[i])
	end
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
	if (technology == nil) then
		return 1
	end
	if (string.find(technology, "upgrade-") == nil) then
		if (civilization == GetUnitTypeData(technology, "Civilization") or civilization == "") then
			return GetUnitTypeData(technology, "TechnologyPointCost")
		end
	else
		if (civilization == CUpgrade:Get(technology).Civilization or civilization == "") then
			return CUpgrade:Get(technology).TechnologyPointCost
		end
	end
	return 0
end

function GetTechnologyAllowsString(technology, civilization)
	local allows_string = ""
	local allowed_technologies = {}
	if (string.find(technology, "upgrade-") == nil) then
		if (GetUnitTypeData(technology, "Class") == "shooter") then
			if (GetCivilizationClassUnitType("ranged-projectile-1", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("ranged-projectile-1", civilization))
			end
		elseif (GetUnitTypeData(technology, "Class") == "siege-engine") then
			if (GetCivilizationClassUnitType("siege-projectile-1", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("siege-projectile-1", civilization))
			end
		elseif (GetUnitTypeData(technology, "Class") == "lumber-mill") then
			if (GetCivilizationClassUnitType("shooter", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("shooter", civilization))
			end
			if (GetCivilizationClassUnitType("siege-engine", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("siege-engine", civilization))
			end
			if (GetCivilizationClassUnitType("masonry", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("masonry", civilization))
			end
		elseif (GetUnitTypeData(technology, "Class") == "smithy") then
			if (GetCivilizationClassUnitType("melee-weapon-1", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("melee-weapon-1", civilization))
			end
			if (GetCivilizationClassUnitType("bronze-shield", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("bronze-shield", civilization))
			end
			if (GetCivilizationClassUnitType("siege-engine", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("siege-engine", civilization))
			end
		elseif (GetUnitTypeData(technology, "Class") == "watch-tower") then
			if (GetCivilizationClassUnitType("guard-tower", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("guard-tower", civilization))
			end
		end
	else
		if (CUpgrade:Get(technology).Class == "melee-weapon-1") then
			if (GetCivilizationClassUnitType("melee-weapon-2", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("melee-weapon-2", civilization))
			end
		elseif (CUpgrade:Get(technology).Class == "bronze-shield") then
			if (GetCivilizationClassUnitType("iron-shield", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("iron-shield", civilization))
			end
		elseif (CUpgrade:Get(technology).Class == "ranged-projectile-1") then
			if (GetCivilizationClassUnitType("ranged-projectile-2", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("ranged-projectile-2", civilization))
			end
		elseif (CUpgrade:Get(technology).Class == "siege-projectile-1") then
			if (GetCivilizationClassUnitType("siege-projectile-2", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("siege-projectile-2", civilization))
			end
		elseif (CUpgrade:Get(technology).Class == "masonry") then
			if (GetCivilizationClassUnitType("stronghold", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("stronghold", civilization))
			end
			if (GetCivilizationClassUnitType("guard-tower", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("guard-tower", civilization))
			end
		end
	end
	if (table.getn(allowed_technologies) > 0) then
		allows_string = "\n\nRequired For: "
		for i=1,table.getn(allowed_technologies) do
			if (string.find(allowed_technologies[i], "upgrade-") == nil) then
				allows_string = allows_string .. GetUnitTypeName(allowed_technologies[i])
			else
				allows_string = allows_string .. CUpgrade:Get(allowed_technologies[i]).Name
			end
			if (i < table.getn(allowed_technologies)) then
				allows_string = allows_string .. ", "
			end
		end
		allows_string = allows_string .. "."
	end
	return allows_string
end

function GetCivilizationTechnologyPoints(civilization)
	local tech_points = 0
	
	for i=1,table.getn(wyr.preferences.QuestsCompleted) do
		tech_points = tech_points + GetQuestTechnologyPoints(civilization, wyr.preferences.QuestsCompleted[i])
	end

	for i=1,table.getn(wyr.preferences.TechnologyAcquired) do
		tech_points = tech_points - GetTechnologyPointCost(civilization, wyr.preferences.TechnologyAcquired[i])
	end
	
	return tech_points
end

function GetAvailableCivilizationsTechTree()
	local civilization_list = {"Dwarf", "Human - Germanic"}
	if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Gylve's Realm")) then
		table.insert(civilization_list, "Human - Teuton")
	end
	return civilization_list
end

function GetTechTreeCivilizationNumber(civilization)
	for i=1,table.getn(GetAvailableCivilizationsTechTree()) do
		local tech_tree_civilization = string.gsub(GetAvailableCivilizationsTechTree()[i], "Human", "")
		tech_tree_civilization = string.gsub(tech_tree_civilization, "-", "")
		tech_tree_civilization = string.gsub(tech_tree_civilization, " ", "")
		tech_tree_civilization = string.lower(tech_tree_civilization)
		if (tech_tree_civilization == civilization) then
			return i - 1
		end
	end
end