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
--      network.lua - Define the menu for network game.
--
--      (c) Copyright 2005-2022 by François Beerten, Jimmy Salmon, Pali Rohár
--		and Andrettin
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

function bool2int(boolvalue)
  if boolvalue == true then
    return 1
  else
    return 0
  end
end

function int2bool(int)
  if int == 0 then
    return false
  else
    return true
  end
end

function ErrorMenu(errmsg)
  local menu = WarMenu(nil, panel(4), false)
  menu:setSize(288 * get_scale_factor(), 128 * get_scale_factor())
  menu:setPosition((Video.Width - 288 * get_scale_factor()) / 2, (Video.Height - 128 * get_scale_factor()) / 2)
  menu:setDrawMenusUnder(true)

  menu:addLabel(_("Error:"), 144 * get_scale_factor(), 11 * get_scale_factor())

  local l = MultiLineLabel(errmsg)
  l:setFont(Fonts["large"])
  l:setAlignment(MultiLineLabel.CENTER)
  l:setVerticalAlignment(MultiLineLabel.CENTER)
  l:setLineWidth(270 * get_scale_factor())
  l:setWidth(270 * get_scale_factor())
  l:setHeight(41 * get_scale_factor())
  l:setBackgroundColor(dark)
  menu:add(l, 9 * get_scale_factor(), 38 * get_scale_factor())

  menu:addHalfButton("~!OK", "o", 92, 80, function() menu:stop() end)

  menu:run()
end

function addPlayersList(menu, numplayers)
  local i
  local sx = Video.Width / 20
  local sy = Video.Height / 20
  local numplayers_text

  numplayers_text = menu:writeText(_("Open slots") .. " : " .. numplayers - 1, sx *11, sy*4 + 144 * get_scale_factor())

  local function updatePlayers(server_setup)
    local connected_players = 0
    for i=2,8 do
      if Hosts[i-1].PlyName ~= "" then
        connected_players = connected_players + 1
     end
    end
    numplayers_text:setCaption(_("Open slots") .. " : " .. numplayers - 1 - connected_players)
    numplayers_text:adjustSize()
  end

  return updatePlayers
end

joining_map_menu = nil

function RunJoiningMapMenu(s)
	local menu
	local listener
	local sx = Video.Width / 20
	local sy = Video.Height / 20
	local numplayers = 3
	local state
	local d

	menu = WarMenu("")
	
	joining_map_menu = menu

	menu:writeText(_("Civilization:"), sx, sy*11)
	local civilization_list = {_("Map Default"), _("Dwarf"), _("Goblin"), _("Human - Germanic")}
	local race = menu:addDropDown(civilization_list, sx + 100 * get_scale_factor(), sy*11,
		function(dd)
			if (civilization_list[dd:getSelected() + 1] ~= _("Map Default")) then
				local chosen_civilization = civilization_list[dd:getSelected() + 1]
				chosen_civilization = string.gsub(chosen_civilization, "Human %- ", "")
				chosen_civilization = string.lower(chosen_civilization)
				GameSettings.Presets[NetLocalHostsSlot].Race = GetCivilizationID(chosen_civilization)
				client:get():get_local_setup().Race[NetLocalHostsSlot] = GetCivilizationID(chosen_civilization)
			else
				GameSettings.Presets[NetLocalHostsSlot].Race = -1
				client:get():get_local_setup().Race[NetLocalHostsSlot] = -1
			end
		end)
	race:setSize(190 * get_scale_factor(), 20 * get_scale_factor())

	menu:writeText(_("Resources:"), sx, sy*11+50 * get_scale_factor())
	local resources = menu:addDropDown({_("Map Default"), _("Low"), _("Medium"), _("High")}, sx + 100 * get_scale_factor(), sy*11+50 * get_scale_factor(),
		function(dd) end)
	resources:setSize(190, 20)
	resources:setEnabled(false)

	local difficulty_label = menu:writeText(_("Difficulty:"), sx, sy * 11 + 75 * get_scale_factor())
	local difficulty = menu:addDropDown({_("Easy"), _("Normal"), _("Hard"), _("Brutal")}, sx + 100 * get_scale_factor(), sy * 11 + 75 * get_scale_factor(),
		function(dd) end)
	difficulty:setSize(190 * get_scale_factor(), 20 * get_scale_factor())
	difficulty:setEnabled(false)
	difficulty:setVisible(false)
	difficulty_label:setVisible(false)
	difficulty:setSelected(1)
	GameSettings.Difficulty = DifficultyNormal

	local OldPresentMap = PresentMap
	PresentMap = function(desc, nplayers, w, h, id)
		numplayers = nplayers
		OldPresentMap(desc, nplayers, w, h, id)
	end

	-- Security: The map name is checked by the stratagus engine.
	Load(NetworkMapName)
	local function readycb(dd)
		client:get():get_local_setup().Ready[NetLocalHostsSlot] = bool2int(dd:isMarked())
	end
	menu:addImageCheckBox(_("Ready"), sx*11, sy*14, readycb)

	local updatePlayersList = addPlayersList(menu, numplayers)

	local joincounter = 0
	local function listen()
		NetworkProcessClientRequest()
		resources:setSelected(client:get():get_server_setup().ResourcesOption)
		GameSettings.Resources = client:get():get_server_setup().ResourcesOption
		difficulty:setSelected(client:get():get_server_setup().Difficulty - 1)
		GameSettings.Difficulty = client:get():get_server_setup().Difficulty
		difficulty:setVisible(client:get():get_server_setup().Opponents > 0)
		difficulty_label:setVisible(client:get():get_server_setup().Opponents > 0)
		updatePlayersList(client:get():get_server_setup())
		state = GetNetworkState()
		-- FIXME: don't use numbers
		if (state == 15) then -- ccs_started, server started the game
			joincounter = joincounter + 1
			if (joincounter == 30) then
				PresentMap = OldPresentMap
				menu:stop()
			end
		end
	end
	listener = LuaActionListener(listen)
	menu:addLogicCallback(listener)

	menu:run()
end
