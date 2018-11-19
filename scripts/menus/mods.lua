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
--      (c) Copyright 2015-2018 by Andrettin
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

function RunModsMenu(selected_mod)
	ModName = ""
	ModDescription = ""
	ModDependencies = nil
		
	local menu = WarMenu()
	local offx = (Video.Width - 352) / 2
	local offy = (Video.Height - 352) / 2
	local b
	local mod_list = {}
	local mod_dd
	local mod_enabled

	-- load the mods
	local mods = {}
	for mod_dir_i = 1, table.getn(ModDirectories) do
		local i
		local f
		local u = 1

		-- get the mods saved from the editor
		local fileslist = ListFilesInDirectory(ModDirectories[mod_dir_i])
		for i,f in ipairs(fileslist) do
			Map.Info.Description = ""
			if (string.find(f, ".smp")) then
				local mod_location = ModDirectories[mod_dir_i] .. f
				mod_location = tostring(string.gsub(mod_location, ".smp", ".sms"))
				if (GetArrayIncludes(mods, mod_location) == false) then
					table.insert(mods, mod_location)
				end
			end
		end
		
		-- list the subdirectories in the mods folder
		local dirlist = {}
		local dirs = ListDirsInDirectory(ModDirectories[mod_dir_i])
		for i,f in ipairs(dirs) do
			dirlist[u] = f .. "/"
			u = u + 1
		end

		-- get mods in the subdirectories of the mods folder
		for j=1,table.getn(dirlist) do
			fileslist = ListFilesInDirectory(ModDirectories[mod_dir_i] .. dirlist[j])
			for i,f in ipairs(fileslist) do
				ModName = ""
				Map.Info.Description = ""
				if (string.find(f, "info.lua")) then
					local mod_location = ModDirectories[mod_dir_i] .. dirlist[j]
					if (GetArrayIncludes(mod_list, mod_location) == false) then
						table.insert(mods, mod_location)
					end
				elseif (string.find(f, ".smp")) then
					local mod_location = ModDirectories[mod_dir_i] .. dirlist[j] .. f
					mod_location = tostring(string.gsub(mod_location, ".smp", ".sms"))
					if (GetArrayIncludes(mods, dirlist[j] .. f) == false) then
						table.insert(mods, mod_location)
					end
				end
			end
		end
	end
	
	mods = SortModList(mods)
	
	for i = 1, table.getn(mods) do
		ModName = ""
		Map.Info.Description = ""
		
		if (string.find(mods[i], ".sms")) then
			Load(tostring(string.gsub(mods[i], ".sms", ".smp")))
			if (Map.Info.Description ~= "") then
				table.insert(mod_list, Map.Info.Description)
			else
				table.insert(mod_list, mods[i])
			end
		else
			Load(mods[i] .. "info.lua")
			table.insert(mod_list, ModName)
		end
	end
			
	menu:addLabel(_("~<Mods~>"), offx + 176, offy + 1)
--	menu:addLabel(_("Resolution Width"), offx + 8, offy + 34, Fonts["game"], false)
	mod_dd = menu:addDropDown(mod_list, Video.Width / 2 - (300 / 2), offy + 55 + 26*0,
		function(dd)
			ModName = ""
			ModDescription = ""
			ModDependencies = nil
			Map.Info.Description = ""
			if (string.find(mods[mod_dd:getSelected() + 1], ".sms")) then
				Load(mods[mod_dd:getSelected() + 1])
			else
				Load(mods[mod_dd:getSelected() + 1] .. "info.lua")
			end
			if (Map.Info.Description ~= "") then
				ModName = Map.Info.Description
			end
			menu:stop()
			RunModsMenu(mod_dd:getSelected())
		end
	)
	mod_dd:setSize(300, 20)
	if (table.getn(mod_list) > 0) then
		mod_dd:setSelected(selected_mod)
		ModName = ""
		ModDescription = ""
		ModDependencies = nil
		Map.Info.Description = ""
		if (string.find(mods[selected_mod + 1], ".sms")) then
			Load(tostring(string.gsub(mods[selected_mod + 1], ".sms", ".smp")))
			ModName = Map.Info.Description
		else
			Load(mods[selected_mod + 1] .. "info.lua")
		end

		local mod_description = ""
		if (ModName ~= "") then
			mod_description = mod_description .. _("Name") .. ": " .. _(ModName) .. "\n\n"
		end

		if (ModDescription ~= "") then
			mod_description = mod_description .. _("Description: " .. ModDescription) .. "\n\n"
		end

		if (ModDependencies ~= nil) then
			local dependencies_string = _("Dependencies") .. ": "
			for i=1,table.getn(ModDependencies) do
				dependencies_string = dependencies_string .. _(ModDependencies[i])
				if (i < table.getn(ModDependencies)) then
					dependencies_string = dependencies_string .. ", "
				end
			end
			mod_description = mod_description .. dependencies_string .. "\n\n"
		end

		if (mod_description ~= "") then
			menu:addMultiLineLabel(mod_description, ((Video.Width - 640) / 2) + 32, offy + 34 + 60*1.5, Fonts["game"], false, Video.Width - (Video.Width - 640) - 64)
		end

		local enabled_label
		if (string.find(mods[selected_mod + 1], ".sms")) then
			enabled_label = "Enabled"
		else
			enabled_label = "Enabled (Restart Required)"
		end
		
		
		mod_enabled = menu:addImageCheckBox(enabled_label, offx + 48, offy + 36 * 8.5,
			function()
				if (GetArrayIncludes(wyr.preferences.EnabledMods, mods[mod_dd:getSelected() + 1])) then
					RemoveElementFromArray(wyr.preferences.EnabledMods, mods[mod_dd:getSelected() + 1])
					SavePreferences()
					if (string.find(mods[selected_mod + 1], ".sms")) then
						DisableMod(mods[selected_mod + 1])
					else
						RemoveElementFromArray(ModDirectories, mods[mod_dd:getSelected() + 1] .. "mods/")
					end
				else
					local has_required_dependencies = true
					if (ModDependencies ~= nil) then
						for i = 1, table.getn(ModDependencies) do
							local has_dependency = false
							for j = 1, table.getn(wyr.preferences.EnabledMods) do
								if (string.find(wyr.preferences.EnabledMods[j], "/" .. ModDependencies[i] .. "/", - (string.len(ModDependencies[i]) + 2))) then
									has_dependency = true
									break
								end
							end
							if (has_dependency == false) then
								has_required_dependencies = false
								break
							end
						end
					end
					if (has_required_dependencies) then
						table.insert(wyr.preferences.EnabledMods, mods[mod_dd:getSelected() + 1])
						SavePreferences()
						if (string.find(mods[selected_mod + 1], ".sms")) then
							Load(mods[selected_mod + 1])
						else
							table.insert(ModDirectories, mods[mod_dd:getSelected() + 1] .. "mods/") -- get submods
						end
					end
				end
				mod_enabled:setMarked(GetArrayIncludes(wyr.preferences.EnabledMods, mods[mod_dd:getSelected() + 1]))
			end
		)
		mod_enabled:setMarked(GetArrayIncludes(wyr.preferences.EnabledMods, mods[mod_dd:getSelected() + 1]))
		mod_enabled:adjustSize()
	end

	menu:addHalfButton(_("~!OK"), "o", offx + 123, offy + 55 + 26*12 + 14, function()
		menu:stop()
	end)

	return menu:run()
end

Mods = {}
function LoadMods()
	CMod:SetCurrentModPath("")
	Mods = nil
	Mods = {}
	
	for i = 1, table.getn(wyr.preferences.EnabledMods) do
		if (string.find(wyr.preferences.EnabledMods[i], "info.lua")) then
			wyr.preferences.EnabledMods[i] = tostring(string.gsub(wyr.preferences.EnabledMods[i], "info.lua", "")) -- for backwards compatibility
		end
	end
	
	wyr.preferences.EnabledMods = SortModList(wyr.preferences.EnabledMods)
	SavePreferences()
  
	for i = 1, table.getn(wyr.preferences.EnabledMods) do
		if (string.find(wyr.preferences.EnabledMods[i], ".sms")) then
			Load(wyr.preferences.EnabledMods[i])
		else
			ModName = ""
			CMod:SetCurrentModPath(wyr.preferences.EnabledMods[i])
			Load(wyr.preferences.EnabledMods[i] .. "info.lua")
			
			local has_required_dependencies = true
			if (ModDependencies ~= nil) then
				for j = 1, table.getn(ModDependencies) do
					local has_dependency = false
					for k = 1, table.getn(wyr.preferences.EnabledMods) do
						if (string.find(wyr.preferences.EnabledMods[k], "/" .. ModDependencies[j] .. "/", - (string.len(ModDependencies[j]) + 2))) then
							has_dependency = true
							break
						end
					end
					if (has_dependency == false) then
						has_required_dependencies = false
						break
					end
				end
			end
			if (has_required_dependencies) then
				table.insert(MapDirectories, wyr.preferences.EnabledMods[i] .. "maps/")
				if (CanAccessFile(wyr.preferences.EnabledMods[i] .. "mods/")) then
					table.insert(ModDirectories, wyr.preferences.EnabledMods[i] .. "mods/")
				end
				local mod_main_lua_file = wyr.preferences.EnabledMods[i] .. "main.lua"
				if (CanAccessFile(mod_main_lua_file)) then
					Load(mod_main_lua_file)
				end
			end
		end
	end
	
	CMod:SetCurrentModPath("")
end

function LoadDLCs()
	CMod:SetCurrentModPath("")
	
	local i
	local f
	local u = 1

	-- list the subdirectories in the dlcs folder
	local dirlist = {}
	local dirs = ListDirsInDirectory("dlcs/")
	for i,f in ipairs(dirs) do
		dirlist[u] = f .. "/"
		u = u + 1
	end

	-- get dlcs in the subdirectories of the dlcs folder
	for j=1,table.getn(dirlist) do
		local fileslist = ListFilesInDirectory("dlcs/" .. dirlist[j])
		for i,f in ipairs(fileslist) do
			if (string.find(f, "main.lua")) then
				CMod:SetCurrentModPath("dlcs/" .. dirlist[j])
				Load(CMod:GetCurrentModPath() .. f)
			elseif (string.find(f, "oaml.defs")) then
				LoadOAMLDefinitionsFile("dlcs/" .. dirlist[j] .. f)
			end
		end
	end
	
	CMod:SetCurrentModPath("")
end

function SortModList(mod_list)
	local function compare_mods(a, b)
		if (string.find(a, ".sms") ~= nil) then
			return true
		elseif (string.find(b, ".sms") ~= nil) then
			return false
		end
		
		local mod_a_path = ""
		local mod_a_dependencies = {}
		local mod_b_path = ""
		local mod_b_dependencies = {}
		
		CMod:SetCurrentModPath("")
		ModDependencies = {}
		Load(a .. "info.lua")
		mod_a_path = CMod:GetCurrentModPath()
		mod_a_dependencies = ModDependencies
		
		CMod:SetCurrentModPath("")
		ModDependencies = {}
		Load(b .. "info.lua")
		mod_b_path = CMod:GetCurrentModPath()
		mod_b_dependencies = ModDependencies
		CMod:SetCurrentModPath("")
		ModDependencies = {}
		
		if (string.len(mod_b_path) > string.len(mod_a_path) and string.find(mod_b_path, mod_a_path) ~= nil) then
			return true
		elseif (string.len(mod_a_path) > string.len(mod_b_path) and string.find(mod_a_path, mod_b_path) ~= nil) then
			return false
		end
		
		for i = 1, table.getn(mod_a_dependencies) do
			if (string.find(mod_b_path, "/" .. mod_a_dependencies[i] .. "/", - (string.len(mod_a_dependencies[i]) + 2)) ~= nil) then -- mod b is a dependency of mod a
				return false
			end
		end
		
		return a < b
	end
	
	table.sort(mod_list, compare_mods)
	
	return mod_list
end

function ReloadMods() -- used after the editor runs, to reload mods made in the map editor
	for i=1,table.getn(wyr.preferences.EnabledMods) do
		if (string.find(wyr.preferences.EnabledMods[i], ".sms")) then
			DisableMod(wyr.preferences.EnabledMods[i])
		end
	end

	for i=1,table.getn(wyr.preferences.EnabledMods) do
		if (string.find(wyr.preferences.EnabledMods[i], ".sms")) then
			Load(wyr.preferences.EnabledMods[i])
		end
	end
end