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
--      (c) Copyright 2013-2016 by Andrettin
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

UsingTechTree = false

function RunTechTreeMenu(civilization_number)

	UsingTechTree = true

	if (RunningScenario == false) then
		SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
		
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
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
	
	local civilization = string.gsub(civilization_list[civilization_number + 1], "Human %- ", "")
	civilization = string.lower(civilization)

	if (RunningScenario == false) then
		SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
	end
	
	tech_points = GetCivilizationTechnologyPoints(civilization)
	
	menu:addLabel(_("Technology Points: ") .. tech_points, 80 + 32, offy + 212 + (36 * 4))

	function addTechItemIcon(unit, menu, x, y, playercolor)
		local unit_name = ""
		local tech_description
		local techicon
		local techicon_frame = 0
		local skin_color = ""
		local hair_color = ""
		if (string.find(unit, "upgrade-") == nil) then
			unit_name = GetUnitTypeName(unit)
			tech_description = GetUnitTypeData(unit, "Description")
			techicon = CIcon:Get(GetUnitTypeData(unit, "Icon")).G
			techicon_frame = CIcon:Get(GetUnitTypeData(unit, "Icon")).Frame
			skin_color = GetUnitTypeData(unit, "SkinColor")
			hair_color = GetUnitTypeData(unit, "HairColor")
		else
			unit_name = CUpgrade:Get(unit).Name
			tech_description = CUpgrade:Get(unit).Description
			techicon = CUpgrade:Get(unit).Icon.G
			techicon_frame = CUpgrade:Get(unit).Icon.Frame
		end
		tech_description = tech_description .. GetTechnologyAllowsString(unit, civilization)
		local b
		techicon:Load()
		local techicon_x_origin = (techicon_frame * 46) % techicon:getGraphicWidth()
		local techicon_y_origin = math.floor((techicon_frame * 46) / techicon:getGraphicWidth()) * 38
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
				local tech_menu_image = PlayerColorImageWidget(techicon, playercolor)
				tech_menu_image:setImageOrigin(techicon_x_origin, techicon_y_origin)
				tech_menu_image:setSkinColor(skin_color)
				tech_menu_image:setHairColor(hair_color)
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
		b:setImageOrigin(techicon_x_origin, techicon_y_origin)
		b:setSkinColor(skin_color)
		b:setHairColor(hair_color)
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

	local playercolor = GetCivilizationData(civilization, "DefaultColor")

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
					tech_icon_x = 3
					tech_icon_y = 3
				elseif (GetUnitTypeData(unitName, "Class") == "spearman") then
					tech_icon_x = 4
					tech_icon_y = 3
				elseif (GetUnitTypeData(unitName, "Class") == "shooter") then
					tech_icon_x = 7
					tech_icon_y = 3
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("lumber-mill", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("lumber-mill", civilization)) > 0) then
						tech_allowed = false
					end
				elseif (GetUnitTypeData(unitName, "Class") == "cavalry") then
					tech_icon_x = 0
					tech_icon_y = 4
					if ((GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("stables", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("stables", civilization)) > 0) or (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("smithy", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("smithy", civilization)) > 0)) then
						tech_allowed = false
					end
				elseif (GetUnitTypeData(unitName, "Class") == "priest") then
					tech_icon_x = 10
					tech_icon_y = 3
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("temple", civilization)) == false) then
						tech_allowed = false
					end
				elseif (GetUnitTypeData(unitName, "Class") == "siege-engine") then
					tech_icon_x = 1
					tech_icon_y = 3
					if ((GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("lumber-mill", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("lumber-mill", civilization)) > 0) or (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("smithy", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("smithy", civilization)) > 0)) then
						tech_allowed = false
					end
				elseif (GetUnitTypeData(unitName, "Class") == "transport-ship") then
					tech_icon_x = 6
					tech_icon_y = 6
					if ((GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("dock", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("dock", civilization)) > 0)) then
						tech_allowed = false
					end
				elseif (GetUnitTypeData(unitName, "Class") == "flying-rider") then
					tech_icon_x = 8
					tech_icon_y = 4
					if (
						(GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("lumber-mill", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("lumber-mill", civilization)) > 0)
						or (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("stronghold", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("stronghold", civilization)) > 0)
						or (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("shooter", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("shooter", civilization)) > 0)
					) then
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
					tech_icon_x = 1
					tech_icon_y = 2
				elseif (GetUnitTypeData(unitName, "Class") == "stables") then
					tech_icon_x = 0
					tech_icon_y = 3
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("lumber-mill", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("lumber-mill", civilization)) > 0) then
						tech_allowed = false
					end
				elseif (GetUnitTypeData(unitName, "Class") == "temple") then
					tech_icon_x = 10
					tech_icon_y = 2
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("lumber-mill", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("lumber-mill", civilization)) > 0) then
						tech_allowed = false
					end
				elseif (GetUnitTypeData(unitName, "Class") == "dock") then
					tech_icon_x = 6
					tech_icon_y = 5
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("lumber-mill", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("lumber-mill", civilization)) > 0) then
						tech_allowed = false
					end
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
					tech_icon_y = 4
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("smithy", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("smithy", civilization)) > 0) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "melee-weapon-2") then
					tech_icon_x = 3
					tech_icon_y = 5
					if not (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("melee-weapon-1", civilization))) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "long-spear") then
					tech_icon_x = 4
					tech_icon_y = 4
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("lumber-mill", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("lumber-mill", civilization)) > 0) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "pike") then
					tech_icon_x = 4
					tech_icon_y = 5
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("long-spear", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("long-spear", civilization)) > 0) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "bronze-shield") then
					tech_icon_x = 2
					tech_icon_y = 4
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("smithy", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("smithy", civilization)) > 0) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "iron-shield") then
					tech_icon_x = 2
					tech_icon_y = 5
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
				elseif (CUpgrade:Get(unitName).Class == "wood-plow") then
					tech_icon_x = 6
					tech_icon_y = 3
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("lumber-mill", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("lumber-mill", civilization)) > 0) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "iron-tipped-wood-plow") then
					tech_icon_x = 6
					tech_icon_y = 4
					if not (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("wood-plow", civilization))) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "iron-plow") then
					tech_icon_x = 6
					tech_icon_y = 5
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("iron-plow", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("iron-plow", civilization)) > 0) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "masonry") then
					tech_icon_x = 8
					tech_icon_y = 3
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("lumber-mill", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("lumber-mill", civilization)) > 0) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "coinage") then
					tech_icon_x = 5
					tech_icon_y = 5
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("smithy", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("smithy", civilization)) > 0) then
						tech_allowed = false
					end
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("stronghold", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("stronghold", civilization)) > 0) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "writing") then
					tech_icon_x = 5
					tech_icon_y = 4
					if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("stronghold", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("stronghold", civilization)) > 0) then
						tech_allowed = false
					end
				elseif (CUpgrade:Get(unitName).Class == "alchemy") then
					tech_icon_x = 5
					tech_icon_y = 6
					if (
						(GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("stronghold", civilization)) == false and GetTechnologyPointCost(civilization, GetCivilizationClassUnitType("stronghold", civilization)) > 0)
						or GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType("writing", civilization)) == false
					) then
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
		function() SetPlayerData(GetThisPlayer(), "RaceName", "gnome"); menu:stop(); end)

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
	if (GetQuestData(quest, "Civilization") == civilization) then
		return GetQuestData(quest, "TechnologyPoints")
	else
		return 0
	end
end

function GetTechnologyPointCost(civilization, technology)
	if (technology == nil) then
		return 1
	end
	if (string.find(technology, "upgrade") == nil) then
		if (civilization == GetUnitTypeData(technology, "Civilization") or civilization == "") then
			return GetUnitTypeData(technology, "TechnologyPointCost")
		end
	elseif (string.find(technology, "upgrade") ~= nil) then
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
			if (GetCivilizationClassUnitType("flying-rider", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("flying-rider", civilization))
			end
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
			if (GetCivilizationClassUnitType("flying-rider", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("flying-rider", civilization))
			end
			if (GetCivilizationClassUnitType("stables", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("stables", civilization))
			end
			if (GetCivilizationClassUnitType("temple", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("temple", civilization))
			end
			if (GetCivilizationClassUnitType("dock", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("dock", civilization))
			end
			if (GetCivilizationClassUnitType("long-spear", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("long-spear", civilization))
			end
			if (GetCivilizationClassUnitType("pike", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("pike", civilization))
			end
			if (GetCivilizationClassUnitType("wood-plow", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("wood-plow", civilization))
			end
			if (GetCivilizationClassUnitType("iron-tipped-wood-plow", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("iron-tipped-wood-plow", civilization))
			end
			if (GetCivilizationClassUnitType("iron-plow", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("iron-plow", civilization))
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
			if (GetCivilizationClassUnitType("cavalry", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("cavalry", civilization))
			end
			if (GetCivilizationClassUnitType("siege-engine", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("siege-engine", civilization))
			end
		elseif (GetUnitTypeData(technology, "Class") == "stables") then
			if (GetCivilizationClassUnitType("cavalry", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("cavalry", civilization))
			end
		elseif (GetUnitTypeData(technology, "Class") == "temple") then
			if (GetCivilizationClassUnitType("priest", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("priest", civilization))
			end
		elseif (GetUnitTypeData(technology, "Class") == "dock") then
			if (GetCivilizationClassUnitType("transport-ship", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("transport-ship", civilization))
			end
		elseif (GetUnitTypeData(technology, "Class") == "watch-tower") then
			if (GetCivilizationClassUnitType("guard-tower", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("guard-tower", civilization))
			end
		elseif (GetUnitTypeData(technology, "Class") == "stronghold") then
			if (GetCivilizationClassUnitType("flying-rider", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("flying-rider", civilization))
			end
			if (GetCivilizationClassUnitType("coinage", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("coinage", civilization))
			end
			if (GetCivilizationClassUnitType("writing", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("writing", civilization))
			end
			if (GetCivilizationClassUnitType("alchemy", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("alchemy", civilization))
			end
		end
	else
		if (CUpgrade:Get(technology).Class == "melee-weapon-1") then
			if (GetCivilizationClassUnitType("melee-weapon-2", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("melee-weapon-2", civilization))
			end
		elseif (CUpgrade:Get(technology).Class == "long-spear") then
			if (GetCivilizationClassUnitType("pike", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("pike", civilization))
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
		elseif (CUpgrade:Get(technology).Class == "wood-plow") then
			if (GetCivilizationClassUnitType("iron-tipped-wood-plow", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("iron-tipped-wood-plow", civilization))
			end
		elseif (CUpgrade:Get(technology).Class == "iron-tipped-wood-plow") then
			if (GetCivilizationClassUnitType("iron-plow", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("iron-plow", civilization))
			end
		elseif (CUpgrade:Get(technology).Class == "masonry") then
			if (GetCivilizationClassUnitType("stronghold", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("stronghold", civilization))
			end
			if (GetCivilizationClassUnitType("guard-tower", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("guard-tower", civilization))
			end
		elseif (CUpgrade:Get(technology).Class == "writing") then
			if (GetCivilizationClassUnitType("alchemy", civilization) ~= nil) then
				table.insert(allowed_technologies, GetCivilizationClassUnitType("alchemy", civilization))
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
	
	local quests = GetQuests()
	for i=1,table.getn(quests) do
		if (GetQuestData(quests[i], "Completed")) then
			tech_points = tech_points + GetQuestTechnologyPoints(civilization, quests[i])
		end
	end

	for i=1,table.getn(wyr.preferences.TechnologyAcquired) do
		tech_points = tech_points - GetTechnologyPointCost(civilization, wyr.preferences.TechnologyAcquired[i])
	end
	
	return tech_points
end

function GetAvailableCivilizationsTechTree()
	local civilization_list = {}
	
	local civilizations = GetCivilizations()
	for i=1,table.getn(civilizations) do
		if (GetCivilizationData(civilizations[i], "Playable") and table.getn(GetCivilizationData(civilizations[i], "Quests")) > 0) then
			if (
				(civilizations[i] ~= "teuton" or GetQuestData("gylves-realm", "Completed"))
			) then
				local playable_civilization_species = CapitalizeString(GetCivilizationData(civilizations[i], "Species"))
				local playable_civilization = GetCivilizationData(civilizations[i], "Display")
				if (playable_civilization_species ~= playable_civilization) then
					table.insert(civilization_list, _(playable_civilization_species .. " - " .. playable_civilization))
				else
					table.insert(civilization_list, _(playable_civilization))
				end
			end
		end
	end
	
	table.sort(civilization_list)

	return civilization_list
end

function GetTechTreeCivilizationNumber(civilization)
	for i=1,table.getn(GetAvailableCivilizationsTechTree()) do
		local tech_tree_civilization = string.gsub(GetAvailableCivilizationsTechTree()[i], "Human %- ", "")
		tech_tree_civilization = string.lower(tech_tree_civilization)
		if (tech_tree_civilization == civilization) then
			return i - 1
		end
	end
end