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
--      (c) Copyright 2015-2020 by Andrettin
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

function CustomHeroCreationMenu(world, quest_menu)
	local menu = WarGameMenu(panel(5))
	menu:setSize(352, 352)
    menu:setPosition((Video.Width - menu:getWidth()) / 2, (Video.Height - menu:getHeight()) / 2)
	menu:addLabel(_("Create Custom Hero"), 176, 11)
	
	local sizeX = 352
	local sizeY = 352

	local hero_civilization_list = {}
	if (world == "earth") then
--		table.insert(hero_civilization_list, "Anglo-Saxon")
		table.insert(hero_civilization_list, "Frankish")
		table.insert(hero_civilization_list, "Germanic")
--		table.insert(hero_civilization_list, "Goth")
		table.insert(hero_civilization_list, "Latin")
		table.insert(hero_civilization_list, "Norse")
		table.insert(hero_civilization_list, "Suebi")
		table.insert(hero_civilization_list, "Teuton")
	elseif (world == "nidavellir") then
		table.insert(hero_civilization_list, "Dwarf")
		table.insert(hero_civilization_list, "Gnome")
		table.insert(hero_civilization_list, "Goblin")
	end
	local hero_class_ident_list = {}
	local hero_class_list = {}
	local trait_ident_list = {}
	local trait_list = {}
	local variation_list = {}
	
	local hero_name
	local hero_family_name
	local hero_civilization
	local hero_class
	local trait
	local variation
	
	local language
	
	local function GenerateNewHeroName()
		local generated_personal_name = ""
		while (generated_personal_name == "" or GetArrayIncludes(GetCustomHeroes(), generated_personal_name)) do
			generated_personal_name = GeneratePersonalName(hero_class_ident_list[hero_class:getSelected() + 1])
		end
		hero_name:setText(generated_personal_name)
	end

	local function ClassChanged()
		trait_ident_list = nil
		trait_ident_list = GetUnitTypeData(hero_class_ident_list[hero_class:getSelected() + 1], "Traits")
		table.sort(trait_ident_list)
		trait_list = nil
		trait_list = {}
		for i=1,table.getn(trait_ident_list) do
			table.insert(trait_list, CUpgrade:Get(trait_ident_list[i]).Name .. ": " .. GetUpgradeEffectsString(trait_ident_list[i]))
		end
		trait:setList(trait_list)
		trait:setSize(236, 20)
		trait:setSelected(0)
		
		variation_list = nil
		variation_list = {}
		local variation_ident_list = GetUnitTypeData(hero_class_ident_list[hero_class:getSelected() + 1], "Variations")
		if (table.getn(GetUnitTypeData(hero_class_ident_list[hero_class:getSelected() + 1], "LayerVariations", "hair")) > 0) then
			variation_ident_list = GetUnitTypeData(hero_class_ident_list[hero_class:getSelected() + 1], "LayerVariations", "hair")
		end
		
		for i=1,table.getn(variation_ident_list) do
			table.insert(variation_list, FullyCapitalizeString(string.gsub(variation_ident_list[i], "-", " ")))
		end
		table.sort(variation_list)
		variation:setList(variation_list)
		variation:setSize(236, 20)
		variation:setSelected(0)
		
		local new_language = GetCivilizationData(string.lower(hero_civilization_list[hero_civilization:getSelected() + 1]), "Language")
		
		if (new_language ~= language) then -- if the language changed, generate a new name for the hero
			language = new_language
			GenerateNewHeroName()
		end
	end
	
	local function CivilizationChanged()
		hero_class_ident_list = nil
		hero_class_ident_list = {}
		hero_class_list = nil
		hero_class_list = {}
		for i, unitName in ipairs(Units) do
			if (
				string.find(unitName, "upgrade-") == nil
				and GetUnitTypeData(unitName, "Civilization") == string.lower(hero_civilization_list[hero_civilization:getSelected() + 1])
				and GetUnitTypeData(unitName, "Class") ~= "worker"
				and GetUnitTypeData(unitName, "Class") ~= "militia"
				and unitName ~= "unit-germanic-spearman"
				and GetUnitTypeData(unitName, "Class") ~= "priest"
				and GetUnitTypeData(unitName, "Class") ~= "thief" -- no dagger units yet
				and GetUnitTypeData(unitName, "Level") == 1
				and GetUnitTypeData(unitName, "Organic")
			) then
				table.insert(hero_class_ident_list, unitName)
				if (GetUnitTypeData(unitName, "Faction") ~= "") then
					table.insert(hero_class_list, GetUnitTypeData(unitName, "Name") .. " (" .. GetFactionData(GetUnitTypeData(unitName, "Faction"), "Name") .. ")")
				else
					table.insert(hero_class_list, GetUnitTypeData(unitName, "Name"))
				end
			end
		end
		hero_class:setList(hero_class_list)
		hero_class:setSize(236, 20)
		
		hero_class:setSelected(0)
		ClassChanged()
	end
	
	menu:addLabel(_("Name:"), 10, 12 + 36 * 1, Fonts["game"], false)
	hero_name = menu:addTextInputField("", (sizeX / 2) - 60 - 10, 11 + 36 * 1, 120)

	menu:addLabel(_("Surname:"), 10, 12 + 36 * 2, Fonts["game"], false)
	hero_family_name = menu:addTextInputField("", (sizeX / 2) - 60 - 10, 11 + 36 * 2, 120)

	menu:addLabel(_("Civilization:"), 10, 14 + 36 * 3, Fonts["game"], false)
	hero_civilization = menu:addDropDown(hero_civilization_list, (sizeX / 2) - 60 - 10, 11 + 36 * 3, function(dd) CivilizationChanged() end)
	hero_civilization:setSize(236, 20)
	
	menu:addLabel(_("Class:"), 10, 14 + 36 * 4, Fonts["game"], false)
	hero_class = menu:addDropDown(hero_class_list, (sizeX / 2) - 60 - 10, 11 + 36 * 4, function(dd) ClassChanged() end)
	hero_class:setSize(236, 20)
	
	menu:addLabel(_("Trait:"), 10, 14 + 36 * 5, Fonts["game"], false)
	trait = menu:addDropDown(trait_list, (sizeX / 2) - 60 - 10, 11 + 36 * 5, function(dd) end)
	trait:setSize(236, 20)
	
	menu:addLabel(_("Variation:"), 10, 14 + 36 * 6, Fonts["game"], false)
	variation = menu:addDropDown(variation_list, (sizeX / 2) - 60 - 10, 11 + 36 * 6, function(dd) end)
	variation:setSize(236, 20)
	variation:setSelected(0)
	
	hero_civilization:setSelected(0)
	CivilizationChanged()
	
	menu:addHalfButton(_("Crea~!te"), "t", 20 + 48, 352 - 40 * 2,
		function()
			local hero_ident = hero_name:getText()
			if (hero_family_name:getText() ~= "") then
				hero_ident = hero_ident .. " " .. hero_family_name:getText()
			end
			
			hero_ident = string.lower(string.gsub(hero_ident, " ", "-"))
			hero_ident = "custom-" .. hero_ident
			
			if (hero_name:getText() == "") then
				GenericDialog("Error", "The hero's name cannot be empty.")
			elseif (GetArrayIncludes(GetCustomHeroes(), hero_ident, true)) then
				GenericDialog("Error", "There is already another custom hero with that combination of name and surname.")
			elseif (IsNameValidForCustomHero(hero_name:getText(), hero_family_name:getText()) == false) then
				GenericDialog("Error", "The custom hero's name is invalid.")
			else
				local hero_data = {
					Name = hero_name:getText(),
					FamilyName = hero_family_name:getText(),
					Civilization = string.lower(hero_civilization_list[hero_civilization:getSelected() + 1]),
					Type = hero_class_ident_list[hero_class:getSelected() + 1],
					Trait = trait_ident_list[trait:getSelected() + 1],
				}
				if (table.getn(variation_list) > 0) then
					hero_data.HairVariation = string.lower(string.gsub(variation_list[variation:getSelected() + 1], " ", "-"))
				end
				DefineCustomHero(hero_ident, hero_data)
				SaveCustomHero(hero_ident)
				menu:stop()
				quest_menu:stop()
				RunQuestMenu(world)
			end
		end
	)
	menu:addHalfButton(_("New ~!Name"), "n", 130 + 48, 352 - 40 * 2,
		function()
			GenerateNewHeroName()
		end
	)
	menu:addFullButton(_("~!Cancel"), "c", 176 - (224 / 2), 352 - 40 * 1,
		function()
			menu:stop()
		end
	)
	menu:run()
end
