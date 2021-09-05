function RunEditorSaveMap(browser, name, menu)
	local saved = EditorSaveMap(browser.path .. name)
	
	if (saved == -1) then
		local confirm = WarGameMenu(panel(3))
		confirm:resize(300 * get_scale_factor(), 120 * get_scale_factor())
		confirm:addLabel("Cannot save map to file:", 300 / 2 * get_scale_factor(), 11 * get_scale_factor())
		confirm:addLabel(browser.path .. name, 300 / 2 * get_scale_factor(), 31 * get_scale_factor())
		confirm:addHalfButton(_("~!OK"), "o", 1 * (300 / 3) * get_scale_factor(), (120 - 16 - 27) * get_scale_factor(), function() confirm:stop() end)
		confirm:run(false)
	else
		CUserInterface:get().StatusLine:Set("Saved map to: " .. browser.path .. name)
		menu:stop()
	end
end

--
--  Save map from the editor
--
function RunEditorSaveMenu()
	local map_has_person_player = false
	for i = 0,(PlayerMax - 2) do
		if (CMap:get():get_info().PlayerType[i] == 5) then
			map_has_person_player = true
			break
		end
	end
	if not (map_has_person_player) then
		GenericDialog(_("Error"), _("A map needs to have at least one person player."))
		return
	end
	
	local menu = WarGameMenu(panel(3))

	menu:resize(384 * get_scale_factor(), 256 * get_scale_factor())

	menu:addLabel(_("Save Map"), 384 / 2 * get_scale_factor(), 11 * get_scale_factor())

	local t
	local browser
	t = menu:addTextInputField("map.smp",
		(384 - 300 - 18) / 2 * get_scale_factor(), (11 + 24) * get_scale_factor(), 318 * get_scale_factor())

	browser = menu:addBrowser(get_user_maps_path(), ".smp$",
		(384 - 300 - 18) / 2 * get_scale_factor(), (11 + 24 + 22) * get_scale_factor(), 318 * get_scale_factor(), 126 * get_scale_factor())

	local function cb(s)
		t:setText(browser:getSelectedItem())
	end
	browser:setActionCallback(cb)

	menu:addHalfButton(_("~!Cancel"), "c", (384 - ((384 - 300 - 18) / 2) - 106) * get_scale_factor(), (256 - 16 - 27) * get_scale_factor(), function() menu:stop() end)
	menu:addHalfButton(_("~!Save"), "s", (384 - 300 - 18) / 2 * get_scale_factor(), (256 - 16 - 27) * get_scale_factor(),
	function()
		local name = t:getText()
		-- check for an empty string
		if (string.len(name) == 0) then
			return
		end
		-- append .smp
		if (string.find(name, ".smp$") == nil) then
			name = name .. ".smp"
		end
		
		-- replace invalid chars with underscore
		local t = {"\\", "/", ":", "*", "?", "\"", "<", ">", "|"}
		table.foreachi(t, function(k,v) name = string.gsub(name, v, "_") end)

		if (browser:exists(name)) then
			local confirm = WarGameMenu(panel(3))
			confirm:resize(300 * get_scale_factor(), 120 * get_scale_factor())
			confirm:addLabel(name, 300 / 2 * get_scale_factor(), 11 * get_scale_factor())
			confirm:addLabel(_("File exists, are you sure?"), 300 / 2 * get_scale_factor(), 31 * get_scale_factor())
			confirm:addHalfButton(_("~!Yes"), "y", (1 * (300 / 3) - 90) * get_scale_factor(), (120 - 16 - 27) * get_scale_factor(),
			function()
				confirm:stop()
				RunEditorSaveMap(browser, name, menu)
			end)
			confirm:addHalfButton(_("~!No"), "n", (3 * (300 / 3) - 116) * get_scale_factor(), (120 - 16 - 27) * get_scale_factor(), function() confirm:stop() end)
			confirm:run(false)
		else
			RunEditorSaveMap(browser, name, menu)
		end
	end)
	
	local sortByCheckBox
	sortByCheckBox = menu:addImageCheckBox(_("Show Latest First"), (384 - 300 - 18) / 2 * get_scale_factor(), (256 - 16 - 27 - 25) * get_scale_factor(),
	function()
		wyr.preferences.SortSaveGamesByTime = sortByCheckBox:isMarked()
		SavePreferences()

		if (wyr.preferences.SortSaveGamesByTime) then
			browser:sortByTime()
		else
			browser:sortByName()
		end
	end)
	sortByCheckBox:setMarked(wyr.preferences.SortSaveGamesByTime)
	if (wyr.preferences.SortSaveGamesByTime) then
		browser:sortByTime()
	end

	menu:run(false)
end

--
--  Change player properties from the editor
--
function RunEditorPlayerProperties()
	local menu = WarGameMenu(panel(5))
	local sizeX = 352 * get_scale_factor()
	local sizeY = 352 * get_scale_factor()

	menu:resize(sizeX, sizeY)
	menu:addLabel(_("Player Properties"), sizeX / 2, 11 * get_scale_factor())

	local types = {"neutral", "nobody", "computer", "person", "rescue-passive", "rescue-active"}
	local civilization_names = GetCivilizations(true)
	local faction_list = {}
	local ais = { "passive", "land-attack", "northern-wastelands-goblins", "sea-attack" }

	local player_list = {}
	local player_properties = {}
--	for i = 1,(PlayerMax - 1) do
	for i = 1,(16 - 1) do -- allow only 16 players in the editor
		player_properties[i] = {}
		player_properties[i]["Type"] = CMap:get():get_info().PlayerType[i-1] - 2
		player_properties[i]["Civilization"] = GetPlayerData(i-1, "RaceName")
		player_properties[i]["Faction"] = GetPlayerData(i-1, "Faction")
		player_properties[i]["AI"] = 0
		for j = 1,table.getn(ais) do
			if (ais[j] == CPlayer:GetPlayer(i-1).AiName) then player_properties[i].AI = j-1 end
		end
		player_properties[i]["Copper"] = GetPlayerData(i-1, "Resources", "copper")
		player_properties[i]["Lumber"] = GetPlayerData(i-1, "Resources", "lumber")
		player_properties[i]["Stone"] = GetPlayerData(i-1, "Resources", "stone")
		table.insert(player_list, "Player " .. i)
	end
	
	local current_player
	local current_player_type
	local current_player_civilization
	local current_player_civilization_label
	local current_player_faction
	local current_player_faction_label
	local current_player_ai
	local current_player_ai_label
	local current_player_copper
	local current_player_copper_label
	local current_player_lumber
	local current_player_lumber_label
	local current_player_stone
	local current_player_stone_label
	
	local function PlayerChanged()
		current_player_type:setSelected(player_properties[current_player:getSelected() + 1].Type)
		if (GetElementIndexFromArray(civilization_names, player_properties[current_player:getSelected() + 1].Civilization)) then
			current_player_civilization:setSelected(GetElementIndexFromArray(civilization_names, player_properties[current_player:getSelected() + 1].Civilization) - 1)
		else
			current_player_civilization:setSelected(0)
			player_properties[current_player:getSelected() + 1].Civilization = civilization_names[current_player_civilization:getSelected() + 1]
		end
		
		faction_list = GetFactions(civilization_names[current_player_civilization:getSelected() + 1])
		table.insert(faction_list, "")
		current_player_faction:setList(faction_list)
		if (GetElementIndexFromArray(faction_list, player_properties[current_player:getSelected() + 1].Faction)) then
			current_player_faction:setSelected(GetElementIndexFromArray(faction_list, player_properties[current_player:getSelected() + 1].Faction) - 1)
		else
			current_player_faction:setSelected(0)
			player_properties[current_player:getSelected() + 1].Faction = faction_list[current_player_faction:getSelected() + 1]
		end
		current_player_faction:setSize(236 * get_scale_factor(), 20 * get_scale_factor())
		
		current_player_ai:setSelected(player_properties[current_player:getSelected() + 1].AI)
		current_player_copper:setText(player_properties[current_player:getSelected() + 1].Copper)
		current_player_lumber:setText(player_properties[current_player:getSelected() + 1].Lumber)
		current_player_stone:setText(player_properties[current_player:getSelected() + 1].Stone)
		local player_active = current_player_type:getSelected() ~= 1
		current_player_civilization:setVisible(player_active)
		current_player_civilization_label:setVisible(player_active)
		current_player_faction:setVisible(player_active)
		current_player_faction_label:setVisible(player_active)
		current_player_ai:setVisible(player_active)
		current_player_ai_label:setVisible(player_active)
		current_player_copper:setVisible(player_active)
		current_player_copper_label:setVisible(player_active)
		current_player_lumber:setVisible(player_active)
		current_player_lumber_label:setVisible(player_active)
		current_player_stone:setVisible(player_active)
		current_player_stone_label:setVisible(player_active)
	end

	current_player = menu:addDropDown(player_list, (sizeX / 2) - 60 * get_scale_factor(), (11 + (36 * 1)) * get_scale_factor(), function(dd) PlayerChanged() end)
	current_player:setSize(120 * get_scale_factor(), 20 * get_scale_factor())
		
	menu:addLabel(_("Type:"), 10 * get_scale_factor(), (14 + 36 * 2) * get_scale_factor(), Fonts["game"], false)
	current_player_type = menu:addDropDown(types, (sizeX / 2) + (-60 - 10) * get_scale_factor(), (11 + 36 * 2) * get_scale_factor(), function(dd)
		player_properties[current_player:getSelected() + 1].Type = current_player_type:getSelected()
		PlayerChanged()
	end)
	current_player_type:setSize(236 * get_scale_factor(), 20 * get_scale_factor())
	
	current_player_civilization_label = menu:addLabel(_("Civilization:"), 10 * get_scale_factor(), (14 + 36 * 3) * get_scale_factor(), Fonts["game"], false)
	current_player_civilization = menu:addDropDown(civilization_names, (sizeX / 2) + (-60 - 10) * get_scale_factor(), (11 + 36 * 3) * get_scale_factor(), function(dd)
		player_properties[current_player:getSelected() + 1].Civilization = civilization_names[current_player_civilization:getSelected() + 1]
		PlayerChanged()
	end)
	current_player_civilization:setSize(236 * get_scale_factor(), 20 * get_scale_factor())
	
	current_player_faction_label = menu:addLabel(_("Faction:"), 10 * get_scale_factor(), (14 + 36 * 4) * get_scale_factor(), Fonts["game"], false)
	current_player_faction = menu:addDropDown(faction_list, (sizeX / 2) + (-60 - 10) * get_scale_factor(), (11 + 36 * 4) * get_scale_factor(), function(dd)
		player_properties[current_player:getSelected() + 1].Faction = faction_list[current_player_faction:getSelected() + 1]
	end)
	current_player_faction:setSize(236 * get_scale_factor(), 20 * get_scale_factor())
	
	current_player_ai_label = menu:addLabel(_("AI:"), 10 * get_scale_factor(), (14 + 36 * 5) * get_scale_factor(), Fonts["game"], false)
	current_player_ai = menu:addDropDown(ais, (sizeX / 2) + (-60 - 10) * get_scale_factor(), (11 + 36 * 5) * get_scale_factor(), function(dd)
		player_properties[current_player:getSelected() + 1].AI = current_player_ai:getSelected()
	end)
	current_player_ai:setSize(236 * get_scale_factor(), 20 * get_scale_factor())
	
	current_player_copper_label = menu:addLabel(_("Copper:"), 10 * get_scale_factor(), (12 + 36 * 6) * get_scale_factor(), Fonts["game"], false)
	current_player_copper = menu:addTextInputField(player_properties[current_player:getSelected() + 1].Copper, (sizeX / 2) + (-60 - 10) * get_scale_factor(), (11 + 36 * 6) * get_scale_factor(), 60 * get_scale_factor())

	current_player_lumber_label = menu:addLabel(_("Lumber:"), (sizeX / 2) + 10 * get_scale_factor(), (12 + 36 * 6) * get_scale_factor(), Fonts["game"], false)
	current_player_lumber = menu:addTextInputField(player_properties[current_player:getSelected() + 1].Lumber, sizeX + (-60 - 10) * get_scale_factor(), (11 + 36 * 6) * get_scale_factor(), 60 * get_scale_factor())

	current_player_stone_label = menu:addLabel(_("Stone:"), 10 * get_scale_factor(), (12 + 36 * 7) * get_scale_factor(), Fonts["game"], false)
	current_player_stone = menu:addTextInputField(player_properties[current_player:getSelected() + 1].Stone, (sizeX / 2) + (-60 - 10) * get_scale_factor(), (11 + 36 * 7) * get_scale_factor(), 60 * get_scale_factor())

	local function listen()
		player_properties[current_player:getSelected() + 1].Copper = tonumber(current_player_copper:getText())
		player_properties[current_player:getSelected() + 1].Lumber = tonumber(current_player_lumber:getText())
		player_properties[current_player:getSelected() + 1].Stone = tonumber(current_player_stone:getText())
	end
	local listener = LuaActionListener(listen)
	menu:addLogicCallback(listener)
	
	PlayerChanged()
	
	menu:addHalfButton("~!OK", "o", (20 + 48) * get_scale_factor(), sizeY - 40 * get_scale_factor(),
		function()
			for i = 0,(PlayerMax - 2) do
				if (i < table.getn(player_properties)) then
					CMap:get():get_info().PlayerType[i] = player_properties[i + 1].Type + 2
					CPlayer:GetPlayer(i).Race = GetCivilizationID(player_properties[i + 1].Civilization)
					SetPlayerData(i, "Faction", player_properties[i + 1].Faction)
					CPlayer:GetPlayer(i).AiName = ais[player_properties[i + 1].AI + 1]
					SetPlayerData(i, "Resources", "copper", player_properties[i + 1].Copper)
					SetPlayerData(i, "Resources", "lumber", player_properties[i + 1].Lumber)
					SetPlayerData(i, "Resources", "stone", player_properties[i + 1].Stone)
				else
					break
				end
			end
			menu:stop()
		end
	)

	menu:addHalfButton(_("~!Cancel"), "c", (130 + 48) * get_scale_factor(), sizeY - 40 * get_scale_factor(),
		function() menu:stop() end)

	menu:run(false)
end

--
--  Change player properties from the editor
--
function RunEditorMapProperties()
-- TODO : manage edition of all properties.
	local menu = WarGameMenu(panel(3))

	local sizeX = 384 * get_scale_factor()
	local sizeY = 256 * get_scale_factor()

	menu:resize(sizeX, sizeY)
	menu:addLabel(_("Map Properties"), sizeX / 2, 11 * get_scale_factor())

	menu:addLabel(_("Map Name:") .. " ", 45 * get_scale_factor(), (11 + 36) * get_scale_factor(), nil, false)
	local desc = menu:addTextInputField(CMap:get():get_info():get_name(), 15 * get_scale_factor(), 36 * 2 * get_scale_factor(), 350 * get_scale_factor())

	menu:addLabel(_("Size:") .. " " .. CMap:get():get_info().MapWidth .. " x " .. CMap:get():get_info().MapHeight, 45 * get_scale_factor(), 36 * 3 * get_scale_factor(), nil, false)
--	menu:addLabel("Size : ", 15, 36 * 3, nil, false)
--	local sizeX = menu:addTextInputField(CMap:get():get_info().MapWidth, 75, 36 * 3, 50)
--	menu:addLabel(" x ", 130, 36 * 3, nil, false)
--	local sizeY = menu:addTextInputField(CMap:get():get_info().MapHeight, 160, 36 * 3, 50)

	menu:addHalfButton(_("~!OK"), "o", 1 * (sizeX / 3) + (-106 - 10) * get_scale_factor(), sizeY + (-16 - 27) * get_scale_factor(),
		function()
			CMap:get():get_info():set_name(desc:getText())
			-- TODO : Add others properties
			menu:stop()
		end
	)

	menu:addHalfButton(_("~!Cancel"), "c", 3 * (sizeX / 3) + (-106 - 10) * get_scale_factor(), sizeY + (-16 - 27) * get_scale_factor(),
		function() menu:stop() end)

	menu:run(false)
end

editor_menu = nil

--
--  Main menu in editor.
--
function RunInEditorMenu()
	if (editor_menu ~= nil) then
		return;
	end
	
	local menu = WarGameMenu(panel(1))
	editor_menu = menu

	menu:addLabel(_("Editor Menu"), 128 * get_scale_factor(), 11 * get_scale_factor())

	menu:addFullButton(_("~!Save Map"), "s", 16 * get_scale_factor(), 40 * get_scale_factor(), function() RunEditorSaveMenu(); end)
	menu:addFullButton(_("Map Properties (~<F5~>)"), "f5", 16 * get_scale_factor(), (40 + 35 * 1) * get_scale_factor(), RunEditorMapProperties)
	menu:addFullButton(_("Player Properties (~<F6~>)"), "f6", 16 * get_scale_factor(), (40 + 35 * 2) * get_scale_factor(), RunEditorPlayerProperties)

--	buttonEditorLoad:setEnabled(false) -- To be removed when enabled.

	menu:addFullButton(_("E~!xit to Menu"), "x", 16 * get_scale_factor(), (40 + 35 * 3) * get_scale_factor(),
		function() CEditor:get():set_running(false); menu:stopAll(); end)
	menu:addFullButton(_("Return to Editor (~<Esc~>)"), "escape", 16 * get_scale_factor(), (40 + 35 * 4) * get_scale_factor(),
		function() editor_menu = nil; menu:stop(); end)

	menu:run(false)
end

--
--  Function to edit unit properties in the editor
--
function EditUnitProperties()

	if (GetUnitUnderCursorNumber() == -1) then
		return;
	end
	local menu = WarGameMenu(panel(5))
	local sizeX = 352 * get_scale_factor()
	local sizeY = 352 * get_scale_factor()

	menu:resize(sizeX, sizeY)
	menu:addLabel(_("Unit Properties"), sizeX / 2, 11 * get_scale_factor())

	local name_label = menu:addLabel(_("Unit Name"), sizeX / 2, (11 + (36 * 1)) * get_scale_factor())
	local name_value = menu:addTextInputField(GetUnitVariable(GetUnitUnderCursorNumber(), "Name"), sizeX / 2 - 60 * get_scale_factor(), (11 + (36 * 2)) * get_scale_factor(), 120 * get_scale_factor())

	local trait_list = GetUnitTypeData(GetUnitVariable(GetUnitUnderCursorNumber(), "Ident"), "Traits")
	local prefix_list = GetUnitTypeData(GetUnitVariable(GetUnitUnderCursorNumber(), "Ident"), "Prefixes")
	local suffix_list = GetUnitTypeData(GetUnitVariable(GetUnitUnderCursorNumber(), "Ident"), "Suffixes")
	local work_list = GetUnitTypeData(GetUnitVariable(GetUnitUnderCursorNumber(), "Ident"), "Works")
	local unique_list = GetUnitTypeData(GetUnitVariable(GetUnitUnderCursorNumber(), "Ident"), "Uniques")
	table.insert(trait_list, "") -- for if the unit has no trait
	table.insert(prefix_list, "") -- for if the unit has no prefix
	table.insert(suffix_list, "") -- for if the unit has no suffix
	table.insert(work_list, "") -- for if the unit has no literary work
	table.insert(unique_list, "") -- for if the unit has no unique

	local display_trait_list = {}
	local display_prefix_list = {}
	local display_suffix_list = {}
	local display_work_list = {}
	
	for i=1,table.getn(trait_list) do
		table.insert(display_trait_list, tostring(string.gsub(trait_list[i], "upgrade%-", "")))
	end
	for i=1,table.getn(prefix_list) do
		table.insert(display_prefix_list, tostring(string.gsub(prefix_list[i], "upgrade%-item%-prefix%-", "")))
	end
	for i=1,table.getn(suffix_list) do
		table.insert(display_suffix_list, tostring(string.gsub(suffix_list[i], "upgrade%-item%-suffix%-", "")))
	end
	for i=1,table.getn(work_list) do
		table.insert(display_work_list, tostring(string.gsub(work_list[i], "upgrade%-work%-", "")))
	end
	
	local unit_trait
	local unit_prefix
	local unit_prefix_label
	local unit_suffix
	local unit_suffix_label
	local unit_work
	local unit_work_label
	local unit_unique
	local activeCheckBox
	local resource = GetUnitTypeData(GetUnitVariable(GetUnitUnderCursorNumber(), "Ident"), "GivesResource")
	local resourceValue
	
	local function UniqueChanged()
		if (table.getn(unique_list) > 1) then
			local has_unique = unique_list[unit_unique:getSelected() + 1] ~= ""
			name_value:setVisible(has_unique == false)
			name_label:setVisible(has_unique == false)
			if (unit_prefix) then
				unit_prefix:setVisible(has_unique == false)
				unit_prefix_label:setVisible(has_unique == false)
			end
			if (unit_suffix) then
				unit_suffix:setVisible(has_unique == false)
				unit_suffix_label:setVisible(has_unique == false)
			end
			if (unit_work) then
				unit_work:setVisible(has_unique == false)
				unit_work_label:setVisible(has_unique == false)
			end
			
			if not (has_unique) then
				name_value:setText("")
				if (unit_prefix) then
					unit_prefix:setSelected(GetElementIndexFromArray(prefix_list, "") - 1)
				end
				if (unit_suffix) then
					unit_suffix:setSelected(GetElementIndexFromArray(suffix_list, "") - 1)
				end
				if (unit_work) then
					unit_work:setSelected(GetElementIndexFromArray(work_list, "") - 1)
				end
			end
		end
	end	

	if (GetUnitBoolFlag(GetUnitUnderCursorNumber(), "Organic") and table.getn(GetUnitTypeData(GetUnitVariable(GetUnitUnderCursorNumber(), "Ident"), "Traits")) > 0) then
		menu:addLabel(_("Unit Trait"), sizeX / 2, (11 + (36 * 3)) * get_scale_factor())
		unit_trait = menu:addDropDown(display_trait_list, (sizeX / 2) - 60 * get_scale_factor(), (11 + (36 * 4)) * get_scale_factor(), function(dd) end)
		unit_trait:setSize(120 * get_scale_factor(), 20 * get_scale_factor())
		unit_trait:setSelected(GetElementIndexFromArray(trait_list, GetUnitVariable(GetUnitUnderCursorNumber(), "Trait")) - 1)
	end

	if (GetUnitBoolFlag(GetUnitUnderCursorNumber(), "Organic") == false and GetUnitBoolFlag(GetUnitUnderCursorNumber(), "Decoration") == false) then
		if (table.getn(GetUnitTypeData(GetUnitVariable(GetUnitUnderCursorNumber(), "Ident"), "Prefixes")) > 0) then
			unit_prefix_label = menu:addLabel(_("Prefix"), sizeX / 4, (11 + (36 * 3)) * get_scale_factor())
			unit_prefix = menu:addDropDown(display_prefix_list, (sizeX / 4) - 60 * get_scale_factor(), (11 + (36 * 4)) * get_scale_factor(), function(dd) end)
			unit_prefix:setSize(120 * get_scale_factor(), 20 * get_scale_factor())
			unit_prefix:setSelected(GetElementIndexFromArray(prefix_list, GetUnitVariable(GetUnitUnderCursorNumber(), "Prefix")) - 1)
		end
		if (table.getn(GetUnitTypeData(GetUnitVariable(GetUnitUnderCursorNumber(), "Ident"), "Suffixes")) > 0) then
			unit_suffix_label = menu:addLabel(_("Suffix"), math.floor(sizeX * 3 / 4), (11 + (36 * 3)) * get_scale_factor())
			unit_suffix = menu:addDropDown(display_suffix_list, math.floor(sizeX * 3 / 4) - 60 * get_scale_factor(), (11 + (36 * 4)) * get_scale_factor(), function(dd) end)
			unit_suffix:setSize(120 * get_scale_factor(), 20 * get_scale_factor())
			unit_suffix:setSelected(GetElementIndexFromArray(suffix_list, GetUnitVariable(GetUnitUnderCursorNumber(), "Suffix")) - 1)
		end
		if (table.getn(GetUnitTypeData(GetUnitVariable(GetUnitUnderCursorNumber(), "Ident"), "Works")) > 0) then
			unit_work_label = menu:addLabel(_("Work"), sizeX / 4, (11 + (36 * 3)) * get_scale_factor())
			unit_work = menu:addDropDown(display_work_list, (sizeX / 4) - 60 * get_scale_factor(), (11 + (36 * 4)) * get_scale_factor(), function(dd) end)
			unit_work:setSize(120 * get_scale_factor(), 20 * get_scale_factor())
			unit_work:setSelected(GetElementIndexFromArray(work_list, GetUnitVariable(GetUnitUnderCursorNumber(), "Work")) - 1)
		end
		if (table.getn(unique_list) > 1) then
			menu:addLabel(_("Unique"), sizeX / 4, (11 + (36 * 5)) * get_scale_factor())
			unit_unique = menu:addDropDown(unique_list, (sizeX / 4) - 60 * get_scale_factor(), (11 + (36 * 6)) * get_scale_factor(), function(dd) UniqueChanged() end)
			unit_unique:setSize(120 * get_scale_factor(), 20 * get_scale_factor())
			unit_unique:setSelected(GetElementIndexFromArray(unique_list, GetUnitVariable(GetUnitUnderCursorNumber(), "Unique")) - 1)
		end
	end

	if (resource == 0) then
		menu:addLabel(_("AI"), math.floor(sizeX * 3 / 4), (11 + (36 * 5)) * get_scale_factor())
		activeCheckBox = menu:addImageCheckBox(_("Active"), math.floor(sizeX * 3 / 4) - 30 * get_scale_factor(), (11 + (36 * 6)) * get_scale_factor())
		activeCheckBox:setMarked(GetUnitVariable(GetUnitUnderCursorNumber(), "Active"))
	else
		menu:addLabel(_("Resources:"), 10 * get_scale_factor(), (12 + 36 * 7) * get_scale_factor(), Fonts["game"], false)
		resourceValue = menu:addTextInputField(GetUnitVariable(GetUnitUnderCursorNumber(), "ResourcesHeld"), (sizeX / 2) + (-60 - 10) * get_scale_factor(), (11 + 36 * 7) * get_scale_factor(), 60 * get_scale_factor())
	end

	
	menu:addLabel(_("Hit Points:"), (sizeX / 2) + 10 * get_scale_factor(), (12 + 36 * 7) * get_scale_factor(), Fonts["game"], false)
	local hp_value = menu:addTextInputField(GetUnitVariable(GetUnitUnderCursorNumber(), "HitPoints"), sizeX + (-60 - 10) * get_scale_factor(), (11 + 36 * 7) * get_scale_factor(), 60 * get_scale_factor())
	
	if (GetUnitVariable(GetUnitUnderCursorNumber(), "Unique") ~= "") then
		UniqueChanged()
	end

	menu:addHalfButton(_("~!OK"), "o", (20 + 48) * get_scale_factor(), sizeY - 40 * get_scale_factor(),
		function()
			if (resourceValue and tonumber(resourceValue:getText()) == nil) then
				GenericDialog(_("Error"), _("The resource amount must be a number."))
			elseif (hp_value and tonumber(hp_value:getText()) == nil) then
				GenericDialog(_("Error"), _("The hit points must be a number."))
			else
				if (table.getn(unique_list) > 1 and unique_list[unit_unique:getSelected() + 1] ~= GetUnitVariable(GetUnitUnderCursorNumber(), "Unique") and unique_list[unit_unique:getSelected() + 1] == "") then
					SetUnitVariable(GetUnitUnderCursorNumber(), "Unique", unique_list[unit_unique:getSelected() + 1])
				end
				if (table.getn(unique_list) <= 1 or unique_list[unit_unique:getSelected() + 1] == "") then
					SetUnitVariable(GetUnitUnderCursorNumber(), "Name", name_value:getText())
				end
				if (GetUnitBoolFlag(GetUnitUnderCursorNumber(), "Organic") and table.getn(GetUnitTypeData(GetUnitVariable(GetUnitUnderCursorNumber(), "Ident"), "Traits")) > 0) then
					if (trait_list[unit_trait:getSelected() + 1] ~= GetUnitVariable(GetUnitUnderCursorNumber(), "Trait")) then
						AcquireTrait(GetUnitUnderCursorNumber(), trait_list[unit_trait:getSelected() + 1])
					end
				end
				if (GetUnitBoolFlag(GetUnitUnderCursorNumber(), "Organic") == false and GetUnitBoolFlag(GetUnitUnderCursorNumber(), "Decoration") == false) then
					if (table.getn(unique_list) == 1 or unique_list[unit_unique:getSelected() + 1] == "") then
						if (table.getn(GetUnitTypeData(GetUnitVariable(GetUnitUnderCursorNumber(), "Ident"), "Prefixes")) > 0 and prefix_list[unit_prefix:getSelected() + 1] ~= GetUnitVariable(GetUnitUnderCursorNumber(), "Prefix")) then
							SetUnitVariable(GetUnitUnderCursorNumber(), "Prefix", prefix_list[unit_prefix:getSelected() + 1])
						end
						if (table.getn(GetUnitTypeData(GetUnitVariable(GetUnitUnderCursorNumber(), "Ident"), "Suffixes")) > 0 and suffix_list[unit_suffix:getSelected() + 1] ~= GetUnitVariable(GetUnitUnderCursorNumber(), "Suffix")) then
							SetUnitVariable(GetUnitUnderCursorNumber(), "Suffix", suffix_list[unit_suffix:getSelected() + 1])
						end
						if (table.getn(GetUnitTypeData(GetUnitVariable(GetUnitUnderCursorNumber(), "Ident"), "Works")) > 0 and work_list[unit_work:getSelected() + 1] ~= GetUnitVariable(GetUnitUnderCursorNumber(), "Work")) then
							SetUnitVariable(GetUnitUnderCursorNumber(), "Work", work_list[unit_work:getSelected() + 1])
						end
					end
					if (table.getn(unique_list) > 1 and unique_list[unit_unique:getSelected() + 1] ~= GetUnitVariable(GetUnitUnderCursorNumber(), "Unique") and unique_list[unit_unique:getSelected() + 1] ~= "") then
						SetUnitVariable(GetUnitUnderCursorNumber(), "Unique", unique_list[unit_unique:getSelected() + 1])
					end
				end
				if (resource ~= 0) then
					local resources_held = tonumber(resourceValue:getText())
					if (resources_held > 1000000) then -- 1 million maximum
						SetUnitVariable(GetUnitUnderCursorNumber(), "ResourcesHeld", 1000000)
					else
						SetUnitVariable(GetUnitUnderCursorNumber(), "ResourcesHeld", resources_held)
					end
				else
					SetUnitVariable(GetUnitUnderCursorNumber(), "Active", activeCheckBox:isMarked())
				end
				if (hp_value:getText() ~= GetUnitVariable(GetUnitUnderCursorNumber(), "HitPoints", "Max")) then
					SetUnitVariable(GetUnitUnderCursorNumber(), "HitPoints", tonumber(hp_value:getText()))
				end
				menu:stop()
			end
		end
	)
		
	menu:addHalfButton(_("~!Cancel"), "c", (130 + 48) * get_scale_factor(), sizeY - 40 * get_scale_factor(),
		function() menu:stop() end)
	menu:run(false)
end
