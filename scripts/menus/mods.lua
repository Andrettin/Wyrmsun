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
--      (c) Copyright 2015-2016 by Andrettin
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

	-- load the mods
	local mods = {}
	for mod_dir_i=1,table.getn(ModDirectories) do
	  
		local i
		local f
		local u = 1

		-- list the subdirectories in the mods folder
		local dirlist = {}
		local dirs = ListDirsInDirectory(ModDirectories[mod_dir_i])
		for i,f in ipairs(dirs) do
			dirlist[u] = f .. "/"
			u = u + 1
		end

		u = 1
		-- get mods in the subdirectories of the mods folder
		for j=1,table.getn(dirlist) do
			local fileslist = ListFilesInDirectory(ModDirectories[mod_dir_i] .. dirlist[j])
			for i,f in ipairs(fileslist) do
				ModName = ""
				if (string.find(f, "info.lua")) then
					local mod_location = ModDirectories[mod_dir_i] .. dirlist[j] .. f
					Load(mod_location)
					if (GetArrayIncludes(mod_list, ModName) == false) then
						mods[table.getn(mods) + 1] = mod_location
						table.insert(mod_list, ModName)
					end
					u = u + 1
				end
			end
		end
	end
			
	menu:addLabel(_("~<Mods~>"), offx + 176, offy + 1)
--	menu:addLabel(_("Resolution Width"), offx + 8, offy + 34, Fonts["game"], false)
	mod_dd = menu:addDropDown(mod_list, offx + 8 + 42, offy + 55 + 26*0,
		function(dd)
			ModName = ""
			ModDescription = ""
			ModDependencies = nil
			Load(mods[mod_dd:getSelected() + 1])
			menu:stop()
			RunModsMenu(mod_dd:getSelected())
		end
	)
	mod_dd:setSize(252, 20)
	if (table.getn(mod_list) > 0) then
		mod_dd:setSelected(selected_mod)
		ModName = ""
		ModDescription = ""
		ModDependencies = nil
		Load(mods[selected_mod + 1])

		menu:addMultiLineLabel(_("Description: " .. ModDescription), ((Video.Width - 640) / 2) + 32, offy + 34 + 60*1.5, Fonts["game"], false, Video.Width - (Video.Width - 640) - 64)

		if (ModDependencies ~= nil) then
			local dependencies_string = "Dependencies: "
			for i=1,table.getn(ModDependencies) do
				dependencies_string = dependencies_string .. ModDependencies[i]
				if (i < table.getn(ModDependencies)) then
					dependencies_string = dependencies_string .. ", "
				end
			end
			menu:addLabel(_(dependencies_string), Video.Width / 2, offy + 34 + 60*2.5, Fonts["game"], true)
		end

		local mod_enabled = {}
		mod_enabled = menu:addImageCheckBox("Enabled (Restart Required)", offx + 48, offy + 36 * 8.5,
			function()
				if (GetArrayIncludes(wyr.preferences.EnabledMods, mod_list[mod_dd:getSelected() + 1])) then
					RemoveElementFromArray(wyr.preferences.EnabledMods, mod_list[mod_dd:getSelected() + 1])
					SavePreferences()
				else
					local has_required_dependencies = true
					if (ModDependencies ~= nil) then
						for i=1,table.getn(ModDependencies) do
							if (GetArrayIncludes(wyr.preferences.EnabledMods, ModDependencies[i]) == false) then
								has_required_dependencies = false
							end
						end
					end
					if (has_required_dependencies) then
						table.insert(wyr.preferences.EnabledMods, mod_list[mod_dd:getSelected() + 1])
						SavePreferences()
					end
				end
				mod_enabled:setMarked(GetArrayIncludes(wyr.preferences.EnabledMods, mod_list[mod_dd:getSelected() + 1]))
			end
		)
		mod_enabled:setMarked(GetArrayIncludes(wyr.preferences.EnabledMods, mod_list[mod_dd:getSelected() + 1]))
		mod_enabled:adjustSize()
	end

	menu:addHalfButton(_("~!OK"), "o", offx + 123, offy + 55 + 26*12 + 14, function()
		menu:stop()
	end)

	return menu:run()
end

ModPath = ""
Mods = {}
function LoadMods()
	ModPath = ""
	Mods = nil
	Mods = {}
	local mod_list = {}
  
	for mod_dir_i=1,table.getn(ModDirectories) do
		local i
		local f
		local u = 1

		-- list the subdirectories in the mods folder
		local dirlist = {}
		local dirs = ListDirsInDirectory(ModDirectories[mod_dir_i])
		for i,f in ipairs(dirs) do
			dirlist[u] = f .. "/"
			u = u + 1
		end

		u = 1
		-- get mods in the subdirectories of the mods folder
		for j=1,table.getn(dirlist) do
			local fileslist = ListFilesInDirectory(ModDirectories[mod_dir_i] .. dirlist[j])
			for i,f in ipairs(fileslist) do
				ModName = ""
				if (string.find(f, "info.lua")) then
					local mod_location = ModDirectories[mod_dir_i] .. dirlist[j] .. f
					Load(mod_location)
					if (GetArrayIncludes(mod_list, ModName) == false and GetArrayIncludes(wyr.preferences.EnabledMods, ModName)) then
						Mods[table.getn(Mods) + 1] = mod_location
						table.insert(mod_list, ModName)
					end
					u = u + 1
				end
			end
		end
	end

	for i=1,table.getn(Mods) do
		ModName = ""
		ModPath = tostring(string.gsub(Mods[i], "info.lua", ""))
		Load(Mods[i])
		table.insert(MapDirectories, tostring(string.gsub(Mods[i], "info.lua", "maps/")))
		Load(tostring(string.gsub(Mods[i], "info", "main")))
	end
	
	ModPath = ""
end

function LoadDLCs()
	ModPath = ""
	
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
				ModPath = "dlcs/" .. dirlist[j]
				Load(ModPath .. f)
			elseif (string.find(f, "oaml.defs")) then
				LoadOAMLDefinitionsFile("dlcs/" .. dirlist[j] .. f)
			end
		end
	end
	
	ModPath = ""
end