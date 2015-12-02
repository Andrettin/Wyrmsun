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
--      (c) Copyright 2015 by Andrettin
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

function CustomHeroCreationMenu(civilization, quest_menu)
	local menu = WarGameMenu(panel(5))
	menu:setSize(352, 352)
    menu:setPosition((Video.Width - menu:getWidth()) / 2, (Video.Height - menu:getHeight()) / 2)
	menu:addLabel(_("Create Custom Hero"), 176, 11)
	
	local sizeX = 352
	local sizeY = 352

	local hero_civilization_list = {"Dwarf"}
	local hero_class_list = {"Axefighter"}
	local trait_ident_list = GetUnitTypeData("unit-dwarven-axefighter", "Traits")
	table.sort(trait_ident_list)
	local trait_list = {}
	for i=1,table.getn(trait_ident_list) do
		table.insert(trait_list, CUpgrade:Get(trait_ident_list[i]).Name .. ": " .. GetUpgradeEffectsString(trait_ident_list[i]))
	end
	local variation_list = {"Black Hair", "Blond Hair", "Brown Hair", "Gray Hair", "Orange Hair", "Red Hair"}
	
	menu:addLabel(_("Name:"), 10, 12 + 36 * 1, Fonts["game"], false)
	local hero_name = menu:addTextInputField(GeneratePersonalName("dwarf", "unit-dwarven-axefighter"), (sizeX / 2) - 60 - 10, 11 + 36 * 1, 120)

	menu:addLabel(_("Surname:"), 10, 12 + 36 * 2, Fonts["game"], false)
	local hero_family_name = menu:addTextInputField("", (sizeX / 2) - 60 - 10, 11 + 36 * 2, 120)

	menu:addLabel(_("Civilization:"), 10, 14 + 36 * 3, Fonts["game"], false)
	local hero_civilization = menu:addDropDown(hero_civilization_list, (sizeX / 2) - 60 - 10, 11 + 36 * 3, function(dd) end)
	hero_civilization:setSize(236, 20)
	hero_civilization:setSelected(0)
	
	menu:addLabel(_("Class:"), 10, 14 + 36 * 4, Fonts["game"], false)
	local hero_class = menu:addDropDown(hero_class_list, (sizeX / 2) - 60 - 10, 11 + 36 * 4, function(dd) end)
	hero_class:setSize(236, 20)
	hero_class:setSelected(0)
	
	menu:addLabel(_("Trait:"), 10, 14 + 36 * 5, Fonts["game"], false)
	local trait = menu:addDropDown(trait_list, (sizeX / 2) - 60 - 10, 11 + 36 * 5, function(dd) end)
	trait:setSize(236, 20)
	trait:setSelected(0)
	
	menu:addLabel(_("Hair:"), 10, 14 + 36 * 6, Fonts["game"], false)
	local variation = menu:addDropDown(variation_list, (sizeX / 2) - 60 - 10, 11 + 36 * 6, function(dd) end)
	variation:setSize(236, 20)
	variation:setSelected(0)
	
	menu:addFullButton("Create ~!Hero", "p", 176 - (224 / 2), 352 - 40 * 2,
		function()
			local hero_full_name = hero_name:getText()
			if (hero_family_name:getText() ~= "") then
				hero_full_name = hero_full_name .. " " .. hero_family_name:getText()
			end
			
			if (hero_name:getText() == "") then
				GenericDialog("Error", "The hero's name cannot be empty.")
			elseif (GetArrayIncludes(GetCustomHeroes(), hero_full_name)) then
				GenericDialog("Error", "There is already a custom hero with that combination of name and surname.")
			else
				DefineCustomHero(hero_full_name, {
					Name = hero_name:getText(),
					Dynasty = hero_family_name:getText(),
					Civilization = "dwarf",
					Type = "unit-dwarven-axefighter",
					Trait = trait_ident_list[trait:getSelected() + 1],
					Variation = string.lower(string.gsub(variation_list[variation:getSelected() + 1], " ", "-"))
				})
				quest_menu:stop()
				RunQuestMenu("Nidavellir")
				menu:stop()
			end
		end
	)
	menu:addFullButton("~!Cancel", "c", 176 - (224 / 2), 352 - 40 * 1,
		function()
			menu:stop()
		end
	)
	menu:run()
end
