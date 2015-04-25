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
--      options.lua - Define the menu for options.
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

function RunModsMenu()
	local menu = WarMenu()
	local offx = (Video.Width - 352) / 2
	local offy = (Video.Height - 352) / 2
	local b
	local mod_list = {}
	local mod_dd

	-- load the mods
	local mods = {}
  
	local i
	local f
	local u = 1

	-- list the subdirectories in the mods folder
	local dirlist = {}
	local dirs = ListDirsInDirectory("mods/")
	for i,f in ipairs(dirs) do
		dirlist[u] = f .. "/"
		u = u + 1
	end

	u = 1
	-- get mods in the subdirectories of the mods folder
	for j=1,table.getn(dirlist) do
		local fileslist = ListFilesInDirectory("mods/" .. dirlist[j])
		for i,f in ipairs(fileslist) do
			if (string.find(f, "info.lua")) then
				mods[u] = "mods/" .. dirlist[j] .. f
				u = u + 1
			end
		end
	end

	-- build the mods list
	for i=1,table.getn(mods) do
		ModName = ""
		Load(mods[i])
		if (ModName ~= "") then
			table.insert(mod_list, ModName)
		end
	end
	
	menu:addLabel(_("~<Mods~>"), offx + 176, offy + 1)
--	menu:addLabel(_("Resolution Width"), offx + 8, offy + 34, Fonts["game"], false)
	mod_dd = menu:addDropDown(mod_list, offx + 8 + 42, offy + 55 + 26*0,
		function(dd)
--	 		ModChanged()
		end
	)
	mod_dd:setSize(252, 20)
	mod_dd:setSelected(0)

	local mod_enabled = {}
	mod_enabled = menu:addImageCheckBox("Enabled (Restart Required)", offx + 48, offy + 36 * 3.5,
		function()
			if (GetArrayIncludes(wyr.preferences.EnabledMods, mod_list[mod_dd:getSelected() + 1])) then
				RemoveElementFromArray(wyr.preferences.EnabledMods, mod_list[mod_dd:getSelected() + 1])
				SavePreferences()
			else
				table.insert(wyr.preferences.EnabledMods, mod_list[mod_dd:getSelected() + 1])
				SavePreferences()
			end
		end
	)
	mod_enabled:setMarked(GetArrayIncludes(wyr.preferences.EnabledMods, mod_list[mod_dd:getSelected() + 1]))
	mod_enabled:adjustSize()

	menu:addHalfButton(_("~!OK"), "o", offx + 123, offy + 55 + 26*12 + 14, function()
		menu:stop()
	end)

	return menu:run()
end

function LoadMods()
	local mods = {}
  
	local i
	local f
	local u = 1

	-- list the subdirectories in the mods folder
	local dirlist = {}
	local dirs = ListDirsInDirectory("mods/")
	for i,f in ipairs(dirs) do
		dirlist[u] = f .. "/"
		u = u + 1
	end

	u = 1
	-- get mods in the subdirectories of the mods folder
	for j=1,table.getn(dirlist) do
		local fileslist = ListFilesInDirectory("mods/" .. dirlist[j])
		for i,f in ipairs(fileslist) do
			if (string.find(f, "info.lua")) then
				mods[u] = "mods/" .. dirlist[j] .. f
				u = u + 1
			end
		end
	end

	u = 1
	-- get mod main files in the subdirectories of the mods folder
	for j=1,table.getn(dirlist) do
		local fileslist = ListFilesInDirectory("mods/" .. dirlist[j])
		for i,f in ipairs(fileslist) do
			if (string.find(f, "main.lua")) then
				mods[u] = "mods/" .. dirlist[j] .. f
				u = u + 1
			end
		end
	end

	for i=1,table.getn(mods) do
		ModName = ""
		Load(tostring(string.gsub(mods[i], "main", "info")))
		if (GetArrayIncludes(wyr.preferences.EnabledMods, ModName)) then
			Load(mods[i])
		end
	end
end