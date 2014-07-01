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
		tech_points = 6
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
					if (unit == "upgrade-dwarven-throwing-axe-1") then
						unit_name = "Sharp Throwing Axe"
					elseif (unit == "upgrade-dwarven-throwing-axe-2") then
						unit_name = "Bearded Throwing Axe"
					elseif (unit == "upgrade-dwarven-broad-axe") then
						unit_name = "Broad Axe"
					elseif (unit == "upgrade-dwarven-great-axe") then
						unit_name = "Great Axe"
					elseif (unit == "upgrade-dwarven-shield-1") then
						unit_name = "Heater Shield"
					elseif (unit == "upgrade-dwarven-shield-2") then
						unit_name = "Thrymgjol Shield"
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
		b:setFrame(true)
		return b
	end

	if (civilization == "dwarf") then
		local playercolor = "red"
		addTechItemIcon("unit-dwarven-miner", menu, "dwarf/icons/miner",
			"Dwarven miners are the grunt workers of dwarven society. They take the precious ores out of the ground, but do not ever take part in the crafting of weapons or artifacts. Although their expertise makes them quite efficient in mining, this comes at the cost of neglecting training in the harvesting of other resources.",
			offx + 23 + 4 + (54 * 5), offy + 10 + 4 + (46 * 1), playercolor)
		addTechItemIcon("unit-dwarven-town-hall", menu, "dwarf/icons/town_hall",
			"The mead hall is the center of any sizable dwarven settlement, where they gather to discuss the issues facing the community and drink their strong mead. It was in one such hall that Fjalar and Galar feasted on the mead they made out of the blood of a dwarven sage, believing that it would grant them his breadth of knowledge.",
			offx + 23 + 4 + (54 * 5), offy + 10 + 4 + (46 * 2), playercolor)
		addTechItemIcon("unit-dwarven-mushroom-farm", menu, "dwarf/icons/mushroom_farm",
			"For aeons, dwarves have practiced mushroom farming underground. At first, their crude agricultural methods allowed them only to use mushroom farming as a supplementary means of nutrition, so that they could remain in a given area for a longer time before migrating. Eventually, however, dwarven mushroom farming techniques developed to the point that dwarves were able to establish their first permanent communities.",
			offx + 23 + 4 + (54 * 6), offy + 10 + 4 + (46 * 2), playercolor)
		addTechItemIcon("unit-dwarven-barracks", menu, "dwarf/icons/barracks",
			"The war hall is where dwarves meet to train and hone their axefighting skills. Since early times, dwarves have faced many perils in the dark plains and caves of Nidavellir, such as goblins or hostile dwarven clans. To fight off these menaces, clans gradually developed means of organizing themselves militarily.",
			offx + 23 + 4 + (54 * 4), offy + 10 + 4 + (46 * 2), playercolor)
		addTechItemIcon("unit-dwarven-axefighter", menu, "dwarf/icons/dwarven_axefighter",
			"Dwarven axefighters wield mighty battle axes, which make them feared opponents in close-range combat. Veteran axefighters often use the pay they've managed to gather to purchase steel armor for themselves at the local blacksmith.",
			offx + 23 + 4 + (54 * 4), offy + 10 + 4 + (46 * 3), playercolor)
		addTechItemIcon("unit-dwarven-lumber-mill", menu, "tilesets/swamp/dwarf/icons/lumber_mill",
			"The lumber mill employs a number of dwarven artisans skilled in woodworking, who strive to improve methods of lumber production and the scouts' throwing axes.",
			offx + 23 + 4 + (54 * 3), offy + 10 + 4 + (46 * 2), playercolor)
		addTechItemIcon("unit-dwarven-blacksmith", menu, "dwarf/icons/blacksmith",
			"Smithing is a highly-valued skill in dwarven society, and it is in this structure that dwarven smiths gather to produce weapons and armor for troops. Dwarves are renowned for their smithing abilities, and their craft attracts many non-dwarven customers.",
			offx + 23 + 4 + (54 * 2), offy + 10 + 4 + (46 * 2), playercolor)
		addTechItemIcon("unit-dwarven-sentry-tower", menu, "tilesets/swamp/dwarf/icons/sentry_tower",
			"In these towers dwarves keep watch of threats approaching their settlements.",
			offx + 23 + 4 + (54 * 7), offy + 10 + 4 + (46 * 2), playercolor)
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-sentry-tower") and GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-lumber-mill")) then
			addTechItemIcon("unit-dwarven-guard-tower", menu, "tilesets/swamp/dwarf/icons/guard_tower",
				"Garrisoned by dwarven scouts, these towers are an essential part of a dwarven settlement's defenses.",
				offx + 23 + 4 + (54 * 7), offy + 10 + 4 + (46 * 3), playercolor)
		end
--		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-blacksmith") and GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-stronghold")) then
--			addTechItemIcon("unit-dwarven-steelclad", menu, "dwarf/icons/dwarven_steelclad",
--				"The dwarven steelclad fighters wear heavy chain mail and plate armor, for which they are rightly famous.",
--				offx + 23 + 4 + (54 * 4), offy + 10 + 4 + (46 * 4), playercolor)
--		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-lumber-mill")) then
			addTechItemIcon("unit-dwarven-scout", menu, "dwarf/icons/dwarven_scout",
				"Dwarven scouts use their lighter armor to their advantage, ranging ahead of the main force and reporting back on troop movements and dispositions, or securing important objectives. Outside of battle, they are often used to relay messages between dwarven communities.",
				offx + 23 + 4 + (54 * 3), offy + 10 + 4 + (46 * 3), playercolor)
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-scout")) then
			addTechItemIcon("upgrade-dwarven-throwing-axe-1", menu, "dwarf/icons/throwing_axe_2",
				"As their woodworking craftsmanship progress, dwarven artisans become capable of improving the basic throwing axe to have sharper blades.\n\nEffect: +1 Damage for Scouts.",
				offx + 23 + 4 + (54 * 3), offy + 10 + 4 + (46 * 4), playercolor)
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "upgrade-dwarven-throwing-axe-1")) then
			addTechItemIcon("upgrade-dwarven-throwing-axe-2", menu, "dwarf/icons/throwing_axe_3",
				"The 'bearding' of throwing axes by extending the bottom of their blades is an innovation which makes them more deadly when thrown.\n\nEffect: +1 Damage for Scouts.",
				offx + 23 + 4 + (54 * 3), offy + 10 + 4 + (46 * 5), playercolor)
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-blacksmith")) then
			addTechItemIcon("upgrade-dwarven-broad-axe", menu, "dwarf/icons/axe_2",
				"Dwarven blacksmiths work hard at their craft to improve soldiers' weapons, and with the perfecting of smithing techniques the broadening of axe blades becomes possible.",
				offx + 23 + 4 + (54 * 2), offy + 10 + 4 + (46 * 3), playercolor)

			addTechItemIcon("upgrade-dwarven-shield-1", menu, "dwarf/icons/shield_2",
				"Earlier shields provided little more than a minimal degree of protection. With the development of heater shields, dwarven soldiers have a greater chance of survival in battle.",
				offx + 23 + 4 + (54 * 1), offy + 10 + 4 + (46 * 3), playercolor)
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "upgrade-dwarven-broad-axe")) then
			addTechItemIcon("upgrade-dwarven-great-axe", menu, "dwarf/icons/axe_3",
				"Further innovations in dwarven smithing allows axes to be made sturdier, and often to carry double blades.",
				offx + 23 + 4 + (54 * 2), offy + 10 + 4 + (46 * 4), playercolor)
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "upgrade-dwarven-shield-1")) then
			addTechItemIcon("upgrade-dwarven-shield-2", menu, "dwarf/icons/shield_3",
				"As shield-making techniques improved, the creation of thrymgjol shields became possible, further enhancing the degree of protection available for the dwarven soldiery. These shields receive their name from the impregnable gate crafted by the sons of the dwarf Solblindi, due to the mighty protection they give their users.",
				offx + 23 + 4 + (54 * 1), offy + 10 + 4 + (46 * 4), playercolor)
		end
		if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-lumber-mill") and GetArrayIncludes(wyr.preferences.TechnologyAcquired, "unit-dwarven-blacksmith")) then
			addTechItemIcon("unit-dwarven-ballista", menu, "tilesets/swamp/dwarf/icons/dwarven_ballista",
				"Dwarves employ heavy ballistas as their siege weapon of choice, with devasting effects on enemy fortifications.",
				offx + 23 + 4 + (54 * 0), offy + 10 + 4 + (46 * 3), playercolor)
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
		"unit-dwarven-miner", "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-town-hall", "unit-dwarven-mushroom-farm", "unit-dwarven-barracks",
		"unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-town-hall", "unit-gnomish-farm", "unit-gnomish-barracks",
		"unit-goblin-worker", "unit-goblin-spearman", "unit-goblin-town-hall", "unit-goblin-farm", "unit-goblin-mess-hall"
	}
	if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck")) then
		table.insert(wyr.preferences.TechnologyAcquired, "unit-hero-rugnur")
		table.insert(wyr.preferences.TechnologyAcquired, "unit-hero-rugnur-steelclad")
	end
	if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Closing the Gates")) then
		table.insert(wyr.preferences.TechnologyAcquired, "unit-hero-baglur")
	end
	if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Searching for the Runecrafter")) then
		table.insert(wyr.preferences.TechnologyAcquired, "unit-hero-thursagan")
	end
	if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Hills of the Shorbear Clan")) then
		table.insert(wyr.preferences.TechnologyAcquired, "unit-hero-durstorn")
	end
	if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Greebo's Shinies")) then
		table.insert(wyr.preferences.TechnologyAcquired, "unit-hero-greebo")
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
	if (civilization == "dwarf" and string.find(technology, "dwarven-") ~= nil) then
		return 1
	else
		return 0
	end
end
