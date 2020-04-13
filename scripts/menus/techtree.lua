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
--      (c) Copyright 2013-2020 by Andrettin
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
	local civilization_ident_list = GetAvailableCivilizationIdentsTechTree()
	local civilization_list = GetAvailableCivilizationNamesTechTree()
--	local button_quantity = 0

	menu:addLabel(_("~<Civilization:~>"), offx + 244, offy + (10 + 15) - 20, Fonts["game"], false)
	civilization_dd = menu:addDropDown(civilization_list, offx + 244, offy + 10 + 15,
		function(dd) menu:stop(); RunTechTreeMenu(civilization_dd:getSelected()) end)
	civilization_dd:setSelected(civilization_number)
	civilization_dd:setSize(152, 20)

	local civilization = civilization_ident_list[civilization_number + 1]

	if (RunningScenario == false) then
		SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
	end
	
	function addTechItemIcon(unit, menu, x, y, playercolor)
		local unit_name = ""
		local tech_description
		local techicon
		local techicon_frame = 0
		if (string.find(unit, "upgrade-") == nil) then
			unit_name = GetUnitTypeName(unit)
			tech_description = GetUnitTypeData(unit, "Description")
			techicon = CPlayerColorGraphic:Get(GetIconData(GetUnitTypeData(unit, "Icon"), "File"))
			techicon_frame = GetIconData(GetUnitTypeData(unit, "Icon"), "Frame")
		else
			unit_name = GetUpgradeData(unit, "Name")
			tech_description = GetUpgradeData(unit, "Description")
			techicon = CPlayerColorGraphic:Get(GetIconData(GetUpgradeData(unit, "Icon"), "File"))
			techicon_frame = GetIconData(GetUpgradeData(unit, "Icon"), "Frame")
		end
		local b
		techicon:Load()
		local techicon_x_origin = (techicon_frame * 46) % techicon:getGraphicWidth()
		local techicon_y_origin = math.floor((techicon_frame * 46) / techicon:getGraphicWidth()) * 38
		b = PlayerColorImageButton("", playercolor)
		b:setActionCallback(
			function()
				PlaySound("click")
				
				local tech_menu = WarGameMenu(panel(5))
				tech_menu:setSize(352, 352)
				tech_menu:setPosition((Video.Width - tech_menu:getWidth()) / 2, (Video.Height - tech_menu:getHeight()) / 2)
				tech_menu:addLabel(_(unit_name), 176, 11)
				local tech_menu_image = PlayerColorImageButton("", playercolor)
				tech_menu:add(tech_menu_image, 153, 48)
				tech_menu_image:setNormalImage(techicon)
				tech_menu_image:setPressedImage(techicon)
				tech_menu_image:setDisabledImage(techicon)
				tech_menu_image:setSize(techicon:getWidth(), techicon:getHeight())
				tech_menu_image:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
				tech_menu_image:setFrameImage(Preference.IconFrameG)
				tech_menu_image:setPressedFrameImage(Preference.PressedIconFrameG)

				local l = MultiLineLabel()
				l:setFont(Fonts["game"])
				l:setSize(324, 208)
				l:setLineWidth(324)
				tech_menu:add(l, 14, 112)
				l:setCaption(_(tech_description))

				tech_menu:addFullButton(_("~!Close"), "c", 176 - (224 / 2), 352 - 40 * 1,
					function()
						tech_menu:stop()
					end)
				tech_menu:run()
			end
		)
		menu:add(b, x, y)
		b:setImageOrigin(techicon_x_origin, techicon_y_origin)
		b:setNormalImage(techicon)
		b:setPressedImage(techicon)
		b:setDisabledImage(techicon)
		b:setSize(46, 38)
		b:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
		b:setFrameImage(Preference.IconFrameG)
		b:setPressedFrameImage(Preference.PressedIconFrameG)
		b:setTooltip(_(unit_name))
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
				elseif (GetUnitTypeData(unitName, "Class") == "gunpowder_infantry") then
					tech_icon_x = 10
					tech_icon_y = 8
				elseif (GetUnitTypeData(unitName, "Class") == "cavalry") then
					tech_icon_x = 0
					tech_icon_y = 4
				elseif (GetUnitTypeData(unitName, "Class") == "priest") then
					tech_icon_x = 10
					tech_icon_y = 3
				elseif (GetUnitTypeData(unitName, "Class") == "siege_engine") then
					tech_icon_x = 1
					tech_icon_y = 3
				elseif (GetUnitTypeData(unitName, "Class") == "transport_ship") then
					tech_icon_x = 6
					tech_icon_y = 7
				elseif (GetUnitTypeData(unitName, "Class") == "siege_warship") then
					tech_icon_x = 7
					tech_icon_y = 7
				elseif (GetUnitTypeData(unitName, "Class") == "flying_rider") then
					tech_icon_x = 8
					tech_icon_y = 4
				elseif (GetUnitTypeData(unitName, "Class") == "town_hall") then
					tech_icon_x = 5
					tech_icon_y = 2
				elseif (GetUnitTypeData(unitName, "Class") == "stronghold") then
					tech_icon_x = 5
					tech_icon_y = 3
				elseif (GetUnitTypeData(unitName, "Class") == "farm") then
					tech_icon_x = 6
					tech_icon_y = 2
				elseif (GetUnitTypeData(unitName, "Class") == "barracks") then
					tech_icon_x = 4
					tech_icon_y = 2
				elseif (GetUnitTypeData(unitName, "Class") == "lumber_mill") then
					tech_icon_x = 7
					tech_icon_y = 2
				elseif (GetUnitTypeData(unitName, "Class") == "masons_shop") then
					tech_icon_x = 9
					tech_icon_y = 4
				elseif (GetUnitTypeData(unitName, "Class") == "market") then
					tech_icon_x = 8
					tech_icon_y = 2
				elseif (GetUnitTypeData(unitName, "Class") == "smithy") then
					tech_icon_x = 1
					tech_icon_y = 2
				elseif (GetUnitTypeData(unitName, "Class") == "stables") then
					tech_icon_x = 0
					tech_icon_y = 3
				elseif (GetUnitTypeData(unitName, "Class") == "temple") then
					tech_icon_x = 10
					tech_icon_y = 2
				elseif (GetUnitTypeData(unitName, "Class") == "university") then
					tech_icon_x = 10
					tech_icon_y = 4
				elseif (GetUnitTypeData(unitName, "Class") == "dock") then
					tech_icon_x = 6
					tech_icon_y = 6
				elseif (GetUnitTypeData(unitName, "Class") == "watch_tower") then
					tech_icon_x = 9
					tech_icon_y = 2
				elseif (GetUnitTypeData(unitName, "Class") == "guard_tower") then
					tech_icon_x = 9
					tech_icon_y = 3
				elseif (GetUnitTypeData(unitName, "Class") == "heavy_tower") then
					tech_icon_x = 9
					tech_icon_y = 6
				elseif (GetUnitTypeData(unitName, "Class") == "cannon_tower") then
					tech_icon_x = 9
					tech_icon_y = 8
				else
					tech_allowed = false
				end
				if (tech_allowed) then
					addTechItemIcon(unitName, menu, offx + 23 + 4 + (54 * tech_icon_x), offy + 10 + 4 + (46 * tech_icon_y), playercolor)
				end
			end
		else
			if (GetUpgradeData(unitName, "Class") ~= "" and GetCivilizationClassUnitType(GetUpgradeData(unitName, "Class"), civilization) == unitName) then
				local tech_icon_x = 0
				local tech_icon_y = 0
				local tech_allowed = true
				if (GetUpgradeData(unitName, "Class") == "melee-weapon-1") then
					tech_icon_x = 3
					tech_icon_y = 4
				elseif (GetUpgradeData(unitName, "Class") == "melee-weapon-2") then
					tech_icon_x = 3
					tech_icon_y = 5
				elseif (GetUpgradeData(unitName, "Class") == "long-spear") then
					tech_icon_x = 4
					tech_icon_y = 4
				elseif (GetUpgradeData(unitName, "Class") == "pike") then
					tech_icon_x = 4
					tech_icon_y = 5
				elseif (GetUpgradeData(unitName, "Class") == "bronze-shield") then
					tech_icon_x = 2
					tech_icon_y = 4
				elseif (GetUpgradeData(unitName, "Class") == "iron-shield") then
					tech_icon_x = 2
					tech_icon_y = 5
				elseif (GetUpgradeData(unitName, "Class") == "ranged-projectile-1") then
					tech_icon_x = 7
					tech_icon_y = 4
				elseif (GetUpgradeData(unitName, "Class") == "ranged-projectile-2") then
					tech_icon_x = 7
					tech_icon_y = 5
				elseif (GetUpgradeData(unitName, "Class") == "composite-bow") then
					tech_icon_x = 8
					tech_icon_y = 4
					if (civilization == "dwarf") then
						tech_allowed = false
					end
				elseif (GetUpgradeData(unitName, "Class") == "longbow") then
					tech_icon_x = 8
					tech_icon_y = 5
					if (civilization == "dwarf") then
						tech_allowed = false
					end
				elseif (GetUpgradeData(unitName, "Class") == "siege-projectile-1") then
					tech_icon_x = 1
					tech_icon_y = 4
				elseif (GetUpgradeData(unitName, "Class") == "siege-projectile-2") then
					tech_icon_x = 1
					tech_icon_y = 5
				elseif (GetUpgradeData(unitName, "Class") == "wood-plow") then
					tech_icon_x = 6
					tech_icon_y = 3
				elseif (GetUpgradeData(unitName, "Class") == "iron-tipped-wood-plow") then
					tech_icon_x = 6
					tech_icon_y = 4
				elseif (GetUpgradeData(unitName, "Class") == "iron-plow") then
					tech_icon_x = 6
					tech_icon_y = 5
				elseif (GetUpgradeData(unitName, "Class") == "masonry") then
					tech_icon_x = 8
					tech_icon_y = 3
				elseif (GetUpgradeData(unitName, "Class") == "coinage") then
					tech_icon_x = 5
					tech_icon_y = 5
				elseif (GetUpgradeData(unitName, "Class") == "sailing") then
					tech_icon_x = 5
					tech_icon_y = 7
				elseif (GetUpgradeData(unitName, "Class") == "celestial_navigation") then
					tech_icon_x = 4
					tech_icon_y = 7
				elseif (GetUpgradeData(unitName, "Class") == "compass") then
					tech_icon_x = 4
					tech_icon_y = 8
				elseif (GetUpgradeData(unitName, "Class") == "writing") then
					tech_icon_x = 5
					tech_icon_y = 4
				elseif (GetUpgradeData(unitName, "Class") == "mathematics") then
					tech_icon_x = 10
					tech_icon_y = 5
					if (GetCivilizationClassUnitType("university", civilization) == nil) then
						tech_allowed = false
					end
				elseif (GetUpgradeData(unitName, "Class") == "architecture") then
					tech_icon_x = 11
					tech_icon_y = 5
					if (GetCivilizationClassUnitType("university", civilization) == nil) then
						tech_allowed = false
					end
				elseif (GetUpgradeData(unitName, "Class") == "engineering") then
					tech_icon_x = 11
					tech_icon_y = 6
					if (GetCivilizationClassUnitType("university", civilization) == nil) then
						tech_allowed = false
					end
				elseif (GetUpgradeData(unitName, "Class") == "philosophy") then
					tech_icon_x = 9
					tech_icon_y = 5
					if (GetCivilizationClassUnitType("university", civilization) == nil) then
						tech_allowed = false
					end
				elseif (GetUpgradeData(unitName, "Class") == "alchemy") then
					tech_icon_x = 10
					tech_icon_y = 6
					if (GetCivilizationClassUnitType("university", civilization) == nil) then
						tech_allowed = false
					end
				elseif (GetUpgradeData(unitName, "Class") == "gunpowder") then
					tech_icon_x = 10
					tech_icon_y = 7
					if (GetCivilizationClassUnitType("university", civilization) == nil or GetCivilizationClassUnitType("alchemy", civilization) == nil) then
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
	
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 10),
		function() SetPlayerData(GetThisPlayer(), "RaceName", "gnome"); menu:stop(); end)

	menu:run()
end

function GetAvailableCivilizationIdentsTechTree()
	local function compare_civilization(a, b)
		if (GetCivilizationData(a, "Species") ~= GetCivilizationData(b, "Species")) then
			return GetCivilizationData(a, "Species") < GetCivilizationData(b, "Species")
		else
			return a < b
		end
	end
	
	local civilization_list = {}
	
	local civilizations = GetCivilizations()
	for i=1,table.getn(civilizations) do
		if (GetCivilizationData(civilizations[i], "Playable")) then
			table.insert(civilization_list, civilizations[i])
		end
	end
	
	table.sort(civilization_list, compare_civilization)

	return civilization_list
end

function GetAvailableCivilizationNamesTechTree()
	local civilization_list = {}
	
	local civilizations = GetAvailableCivilizationIdentsTechTree()
	for i=1,table.getn(civilizations) do
		local playable_civilization_species = CapitalizeString(GetCivilizationData(civilizations[i], "Species"))
		local playable_civilization = GetCivilizationData(civilizations[i], "Display")
		if (GetCivilizationData(civilizations[i], "Species") ~= civilizations[i]) then -- if the civilization isn't named after the species, show the species in the name
			table.insert(civilization_list, _(playable_civilization_species) .. " - " .. _(playable_civilization))
		else
			table.insert(civilization_list, _(playable_civilization))
		end
	end
	
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