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
  local players_name = {}
  local players_state = {}
  local sx = Video.Width / 20
  local sy = Video.Height / 20
  local numplayers_text

  menu:writeLargeText(_("Players"), sx * 11, sy*3)
  for i=1,8 do
    players_name[i] = menu:writeText(_("Player")..i, sx * 11, sy*4 + i*18 * get_scale_factor())
    players_state[i] = menu:writeText(_("Preparing"), sx * 11 + 80 * get_scale_factor(), sy*4 + i*18 * get_scale_factor())
  end
  numplayers_text = menu:writeText(_("Open slots") .. " : " .. numplayers - 1, sx *11, sy*4 + 144 * get_scale_factor())

  local function updatePlayers()
    local connected_players = 0
    local ready_players = 0
    players_state[1]:setCaption(_("Creator"))
    players_name[1]:setCaption(Hosts[0].PlyName)
    for i=2,8 do
      if Hosts[i-1].PlyName == "" then
        players_name[i]:setCaption("")
        players_state[i]:setCaption("")
      else
        connected_players = connected_players + 1
        if ServerSetupState.Ready[i-1] == 1 then
          ready_players = ready_players + 1
          players_state[i]:setCaption(_("Ready"))
        else
          players_state[i]:setCaption(_("Preparing"))
        end
        players_name[i]:setCaption(Hosts[i-1].PlyName)
     end
    end
    numplayers_text:setCaption(_("Open slots") .. " : " .. numplayers - 1 - connected_players)
    numplayers_text:adjustSize()
    return (connected_players > 0 and ready_players == connected_players)
  end

  return updatePlayers
end

function RunJoiningMapMenu(s)
	local menu
	local listener
	local sx = Video.Width / 20
	local sy = Video.Height / 20
	local numplayers = 3
	local state
	local d

	menu = WarMenu(_("Joining Game: Map"))

	menu:writeLargeText(_("Map"), sx, sy*3)
	menu:writeText(_("Name:"), sx, sy*3+30 * get_scale_factor())
	descr = menu:writeText(description, sx+70 * get_scale_factor(), sy*3+30 * get_scale_factor())
	menu:writeText(_("File:"), sx, sy*3+50 * get_scale_factor())
	maptext = menu:writeText(string.sub(NetworkMapName, 6), sx+70 * get_scale_factor(), sy*3+50 * get_scale_factor())
	menu:writeText(_("Players:"), sx, sy*3+70 * get_scale_factor())
	players = menu:writeText(numplayers, sx+70 * get_scale_factor(), sy*3+70 * get_scale_factor())

	local fow = menu:addImageCheckBox(_("Fog of War"), sx, sy*3+120 * get_scale_factor(), function() end)
	fow:setMarked(true)
	ServerSetupState.FogOfWar = 1
	fow:setEnabled(true)
	fow:setMarked(int2bool(ServerSetupState.FogOfWar))
	local revealmap = menu:addImageCheckBox(_("Reveal Map"), sx, sy*3+150 * get_scale_factor(), function() end)
	revealmap:setEnabled(true)
	revealmap:setMarked(int2bool(ServerSetupState.RevealMap))
	local computer_opponents = menu:addImageCheckBox(_("Computer Opponents"), sx, sy*3+210 * get_scale_factor(), function() end)
	computer_opponents:setEnabled(true)
	computer_opponents:setMarked(ServerSetupState.Opponents > 0)

	menu:writeText(_("Civilization:"), sx, sy*11)
	local civilization_list = {_("Map Default"), _("Dwarf"), _("Goblin"), _("Human - Germanic")}
	local race = menu:addDropDown(civilization_list, sx + 100 * get_scale_factor(), sy*11,
		function(dd)
			if (civilization_list[dd:getSelected() + 1] ~= _("Map Default")) then
				local chosen_civilization = civilization_list[dd:getSelected() + 1]
				chosen_civilization = string.gsub(chosen_civilization, "Human %- ", "")
				chosen_civilization = string.lower(chosen_civilization)
				GameSettings.Presets[NetLocalHostsSlot].Race = GetCivilizationID(chosen_civilization)
				LocalSetupState.Race[NetLocalHostsSlot] = GetCivilizationID(chosen_civilization)
			else
				GameSettings.Presets[NetLocalHostsSlot].Race = -1
				LocalSetupState.Race[NetLocalHostsSlot] = -1
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
		players:setCaption(""..nplayers)
		players:adjustSize()
		descr:setCaption(desc)
		descr:adjustSize()
		OldPresentMap(desc, nplayers, w, h, id)
	end

	-- Security: The map name is checked by the stratagus engine.
	Load(NetworkMapName)
	local function readycb(dd)
		LocalSetupState.Ready[NetLocalHostsSlot] = bool2int(dd:isMarked())
	end
	menu:addImageCheckBox(_("Ready"), sx*11, sy*14, readycb)

	local updatePlayersList = addPlayersList(menu, numplayers)

	local joincounter = 0
	local function listen()
		NetworkProcessClientRequest()
		fow:setMarked(int2bool(ServerSetupState.FogOfWar))
		GameSettings.NoFogOfWar = not int2bool(ServerSetupState.FogOfWar)
		revealmap:setMarked(int2bool(ServerSetupState.RevealMap))
		GameSettings.RevealMap = ServerSetupState.RevealMap
		computer_opponents:setMarked(ServerSetupState.Opponents > 0)
		resources:setSelected(ServerSetupState.ResourcesOption)
		GameSettings.Resources = ServerSetupState.ResourcesOption
		difficulty:setSelected(ServerSetupState.Difficulty - 1)
		GameSettings.Difficulty = ServerSetupState.Difficulty
		difficulty:setVisible(ServerSetupState.Opponents > 0)
		difficulty_label:setVisible(ServerSetupState.Opponents > 0)
--		GameSettings.Inside = int2bool(ServerSetupState.Inside)
		updatePlayersList()
		state = GetNetworkState()
		-- FIXME: don't use numbers
		if (state == 15) then -- ccs_started, server started the game
			SetThisPlayer(1)
			joincounter = joincounter + 1
			if (joincounter == 30) then
				SetFogOfWar(fow:isMarked())
				if revealmap:isMarked() == true then
					RevealMap()
				end
				NetworkGamePrepareGameSettings()
				RunMap(NetworkMapName)
				PresentMap = OldPresentMap
				menu:stop()
			end
		elseif (state == 10) then -- ccs_unreachable
			ErrorMenu(_("Cannot reach server"))
			menu:stop()
		end
	end
	listener = LuaActionListener(listen)
	menu:addLogicCallback(listener)

	menu:addFullButton(_("~!Cancel"), "c", Video.Width / 2 - 100 * get_scale_factor(), Video.Height - 100 * get_scale_factor(),
		function() NetworkDetachFromServer(); menu:stop() end)

	menu:run()
end

server_multi_game_menu = nil

function RunServerMultiGameMenu(map, description, numplayers)
	local menu
	local sx = Video.Width / 20
	local sy = Video.Height / 20
	local startgame
	local difficulty
	local difficulty_label
	local d

	menu = WarMenu(nil)
	server_multi_game_menu = menu

	local function fowCb(dd)
		ServerSetupState.FogOfWar = bool2int(dd:isMarked())
		NetworkServerResyncClients()
		GameSettings.NoFogOfWar = not dd:isMarked()
	end
	local fow = menu:addImageCheckBox(_("Fog of War"), sx, sy*3+150 * get_scale_factor(), fowCb)
	fow:setMarked(true)
	local function revealMapCb(dd)
		ServerSetupState.RevealMap = bool2int(dd:isMarked())
		NetworkServerResyncClients()
		GameSettings.RevealMap = bool2int(dd:isMarked())
	end
	local revealmap = menu:addImageCheckBox(_("Reveal Map"), sx, sy*3+180 * get_scale_factor(), revealMapCb)
	
	ServerSetupState.Opponents = 0
	local function computer_opponentsCb(dd)
		if (dd:isMarked()) then
			ServerSetupState.Opponents = 1
		else
			ServerSetupState.Opponents = 0
		end
		NetworkServerResyncClients()
		difficulty:setVisible(ServerSetupState.Opponents > 0)
		difficulty_label:setVisible(ServerSetupState.Opponents > 0)
	end
	local computer_opponents = menu:addImageCheckBox(_("Computer Opponents"), sx, sy*3+210 * get_scale_factor(), computer_opponentsCb)
	computer_opponents:setMarked(false)

	menu:writeText(_("Civilization:"), sx, sy*11+25 * get_scale_factor())
	local civilization_list = {_("Map Default"), _("Dwarf"), _("Goblin"), _("Human - Germanic")}
	d = menu:addDropDown(civilization_list, sx + 100 * get_scale_factor(), sy*11+25 * get_scale_factor(),
		function(dd)
			if (civilization_list[dd:getSelected() + 1] ~= _("Map Default")) then
				local chosen_civilization = civilization_list[dd:getSelected() + 1]
				chosen_civilization = string.gsub(chosen_civilization, "Human %- ", "")
				chosen_civilization = string.lower(chosen_civilization)
				GameSettings.Presets[0].Race = GetCivilizationID(chosen_civilization)
				ServerSetupState.Race[0] = GetCivilizationID(chosen_civilization)
			else
				GameSettings.Presets[0].Race = -1
				ServerSetupState.Race[0] = -1
			end
			NetworkServerResyncClients()
		end)
	d:setSize(190 * get_scale_factor(), 20 * get_scale_factor())

	menu:writeText("Resources:", sx, sy*11+50 * get_scale_factor())
	d = menu:addDropDown({_("Map Default"), _("Low"), _("Medium"), _("High")}, sx + 100 * get_scale_factor(), sy*11+50 * get_scale_factor(),
		function(dd)
			GameSettings.Resources = dd:getSelected()
			ServerSetupState.ResourcesOption = GameSettings.Resources
			NetworkServerResyncClients()
		end)
	d:setSize(190 * get_scale_factor(), 20 * get_scale_factor())

	difficulty_label = menu:writeText(_("Difficulty:"), sx, sy * 11 + 75 * get_scale_factor())
	difficulty = menu:addDropDown({_("Easy"), _("Normal"), _("Hard"), _("Brutal")}, sx + 100 * get_scale_factor(), sy * 11 + 75 * get_scale_factor(),
		function(dd)
			GameSettings.Difficulty = dd:getSelected() + 1
			ServerSetupState.Difficulty = GameSettings.Difficulty
			NetworkServerResyncClients()
		end)
	difficulty:setSize(190 * get_scale_factor(), 20 * get_scale_factor())
	difficulty:setSelected(1)
	difficulty:setVisible(false)
	difficulty_label:setVisible(false)
	GameSettings.Difficulty = DifficultyNormal
	ServerSetupState.Difficulty = GameSettings.Difficulty

	local updatePlayers = addPlayersList(menu, numplayers)

	NetworkMapName = map
	NetworkInitServerConnect(numplayers)
	ServerSetupState.FogOfWar = 1
--	ServerSetupState.Inside = 0
	GameSettings.Inside = false
	startgame = menu:addFullButton(_("~!Start Game"), "s", sx * 11,  sy*14,
		function(s)
			SetFogOfWar(fow:isMarked())
			if revealmap:isMarked() == true then
				RevealMap()
			end
			NetworkServerStartGame()
			NetworkGamePrepareGameSettings()
			RunMap(map)
			menu:stop()
		end
	)
	startgame:setVisible(false)
	local waitingtext = menu:writeText(_("Waiting for players"), sx*11, sy*14)
	local function updateStartButton(ready)
		startgame:setVisible(ready)
		waitingtext:setVisible(not ready)
	end

	local listener = LuaActionListener(function(s) updateStartButton(updatePlayers()) end)
	menu:addLogicCallback(listener)

	menu:run()
end
