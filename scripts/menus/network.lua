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
--      (c) Copyright 2005-2010 by François Beerten, Jimmy Salmon and Pali Rohár
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
  menu:setSize(288, 128)
  menu:setPosition((Video.Width - 288) / 2, (Video.Height - 128) / 2)
  menu:setDrawMenusUnder(true)

  menu:addLabel("Error:", 144, 11)

  local l = MultiLineLabel(errmsg)
  l:setFont(Fonts["large"])
  l:setAlignment(MultiLineLabel.CENTER)
  l:setVerticalAlignment(MultiLineLabel.CENTER)
  l:setLineWidth(270)
  l:setWidth(270)
  l:setHeight(41)
  l:setBackgroundColor(dark)
  menu:add(l, 9, 38)

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

  menu:writeLargeText("Players", sx * 11, sy*3)
  for i=1,8 do
    players_name[i] = menu:writeText("Player"..i, sx * 11, sy*4 + i*18)
    players_state[i] = menu:writeText("Preparing", sx * 11 + 80, sy*4 + i*18)
  end
  numplayers_text = menu:writeText("Open slots : " .. numplayers - 1, sx *11, sy*4 + 144)

  local function updatePlayers()
    local connected_players = 0
    local ready_players = 0
    players_state[1]:setCaption("Creator")
    players_name[1]:setCaption(Hosts[0].PlyName)
    for i=2,8 do
      if Hosts[i-1].PlyName == "" then
        players_name[i]:setCaption("")
        players_state[i]:setCaption("")
      else
        connected_players = connected_players + 1
        if ServerSetupState.Ready[i-1] == 1 then
          ready_players = ready_players + 1
          players_state[i]:setCaption("Ready")
        else
          players_state[i]:setCaption("Preparing")
        end
        players_name[i]:setCaption(Hosts[i-1].PlyName)
     end
    end
    numplayers_text:setCaption("Open slots : " .. numplayers - 1 - connected_players)
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


  menu = WarMenu("Joining Game: Map")

  menu:writeLargeText("Map", sx, sy*3)
  menu:writeText(_("Name:"), sx, sy*3+30)
  descr = menu:writeText(description, sx+70, sy*3+30)
  menu:writeText(_("File:"), sx, sy*3+50)
  maptext = menu:writeText(string.sub(NetworkMapName, 6), sx+70, sy*3+50)
  menu:writeText(_("Players:"), sx, sy*3+70)
  players = menu:writeText(numplayers, sx+70, sy*3+70)

  local fow = menu:addImageCheckBox("Fog of War", sx, sy*3+120, function() end)
  fow:setMarked(true)
  ServerSetupState.FogOfWar = 1
  fow:setEnabled(true)
  fow:setMarked(int2bool(ServerSetupState.FogOfWar))
  local revealmap = menu:addImageCheckBox("Reveal Map", sx, sy*3+150, function() end)
  revealmap:setEnabled(true)
  revealmap:setMarked(int2bool(ServerSetupState.RevealMap))
  local no_randomness = menu:addImageCheckBox("No Randomness", sx, sy*3+180, function() end)
  no_randomness:setEnabled(true)
  no_randomness:setMarked(int2bool(ServerSetupState.NoRandomness))
  local computer_opponents = menu:addImageCheckBox("Computer Opponents", sx, sy*3+210, function() end)
  computer_opponents:setEnabled(true)
  computer_opponents:setMarked(ServerSetupState.Opponents > 0)

  menu:writeText("Civilization:", sx, sy*11)
  local civilization_list = {_("Map Default"), _("Dwarf"), _("Human - Germanic")}
  local race = menu:addDropDown(civilization_list, sx + 100, sy*11,
    function(dd)
	  if (civilization_list[dd:getSelected() + 1] ~= _("Map Default")) then
			local chosen_civilization = civilization_list[dd:getSelected() + 1]
			chosen_civilization = string.gsub(chosen_civilization, "Human %- ", "")
			chosen_civilization = string.lower(chosen_civilization)
			GameSettings.Presets[NetLocalHostsSlot].Race = GetCivilizationID(chosen_civilization)
			LocalSetupState.Race[NetLocalHostsSlot] = GetCivilizationID(chosen_civilization)
	  end
    end)
  race:setSize(190, 20)

  menu:writeText("Units:", sx, sy*11+25)
  local units = menu:addDropDown({_("Map Default"), _("1 Worker"), _("Town Hall + Workers"), _("Basic Squad"), _("Improved Squad"), _("Advanced Squad")}, sx + 100, sy*11+25,
    function(dd) end)
  units:setSize(190, 20)
  units:setEnabled(false)

  menu:writeText("Resources:", sx, sy*11+50)
  local resources = menu:addDropDown({"Map Default", "Low", "Medium", "High"}, sx + 100, sy*11+50,
    function(dd) end)
  resources:setSize(190, 20)
  resources:setEnabled(false)

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
  menu:addImageCheckBox("Ready", sx*11,  sy*14, readycb)

  local updatePlayersList = addPlayersList(menu, numplayers)

  local joincounter = 0
  local function listen()
    NetworkProcessClientRequest()
    fow:setMarked(int2bool(ServerSetupState.FogOfWar))
    GameSettings.NoFogOfWar = not int2bool(ServerSetupState.FogOfWar)
    revealmap:setMarked(int2bool(ServerSetupState.RevealMap))
    GameSettings.RevealMap = ServerSetupState.RevealMap
    no_randomness:setMarked(int2bool(ServerSetupState.NoRandomness))
    GameSettings.NoRandomness = int2bool(ServerSetupState.NoRandomness)
    computer_opponents:setMarked(ServerSetupState.Opponents > 0)
    units:setSelected(ServerSetupState.UnitsOption)
    GameSettings.NumUnits = ServerSetupState.UnitsOption
    resources:setSelected(ServerSetupState.ResourcesOption)
    GameSettings.Resources = ServerSetupState.ResourcesOption
--    GameSettings.Inside = int2bool(ServerSetupState.Inside)
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
      ErrorMenu("Cannot reach server")
      menu:stop()
    end
  end
  listener = LuaActionListener(listen)
  menu:addLogicCallback(listener)

  menu:addFullButton(_("~!Cancel"), "c", Video.Width / 2 - 100, Video.Height - 100,
    function() NetworkDetachFromServer(); menu:stop() end)

  menu:run()
end

function RunJoiningGameMenu(server_address, s)
  local menu = WarMenu(nil, panel(4), false)
  menu:setSize(288, 128)
  menu:setPosition((Video.Width - 288) / 2, (Video.Height - 128) / 2)
  menu:setDrawMenusUnder(true)

  menu:addLabel("Connecting to " .. server_address, 144, 11)

  local percent = 0

  local sb = StatBoxWidget(258, 30)
  sb:setCaption("Connecting...")
  sb:setPercent(percent)
  menu:add(sb, 15, 38)
  sb:setBackgroundColor(dark)

  local function checkconnection()
    NetworkProcessClientRequest()
    percent = percent + 100 / (24 * GetGameSpeed()) -- 24 seconds * fps
    sb:setPercent(percent)
    local state = GetNetworkState()
    -- FIXME: do not use numbers
    if (state == 3) then -- ccs_mapinfo
      -- got ICMMap => load map
      RunJoiningMapMenu()
      menu:stop(0)
    elseif (state == 4) then -- ccs_badmap
      ErrorMenu("Map not available")
      menu:stop(1)
    elseif (state == 10) then -- ccs_unreachable
      ErrorMenu("Cannot reach server")
      menu:stop(1)
    elseif (state == 12) then -- ccs_nofreeslots
      ErrorMenu("Server is full")
      menu:stop(1)
    elseif (state == 13) then -- ccs_serverquits
      ErrorMenu("Server gone")
      menu:stop(1)
    elseif (state == 16) then -- ccs_incompatibleengine
      ErrorMenu("Incompatible engine version")
      menu:stop(1)
    elseif (state == 17) then -- ccs_incompatiblenetwork
      ErrorMenu("Incompatible network version")
      menu:stop(1)
    end
  end
  local listener = LuaActionListener(checkconnection)
  menu:addLogicCallback(listener)

  menu:addHalfButton("Cancel (~<Esc~>)", "escape", 92, 80,
    function() menu:stop(1) end)

  return menu:run()
end

function RunJoinIpMenu()
	local menu = WarMenu(nil, panel(4), false)
	menu:setSize(288, 128)
	menu:setPosition((Video.Width - 288) / 2, (Video.Height - 128) / 2)
	menu:setDrawMenusUnder(true)

	menu:addLabel("Enter server IP-address:", 144, 11)
	local server = menu:addTextInputField("localhost", 40, 38, 212)

	menu:addHalfButton("~!OK", "o", 24, 80,
		function(s)
			-- FIXME: allow port ("localhost:1234")
			if (NetworkSetupServerAddress(server:getText()) ~= 0) then
				ErrorMenu("Invalid address")
				return
			end
			NetworkInitClientConnect()
			if (RunJoiningGameMenu(server:getText()) ~= 0) then
				-- connect failed, don't leave this menu
				return
			end
			menu:stop()
		end
	)
	menu:addHalfButton(_("~!Cancel"), "c", 154, 80, function() menu:stop() end)

	menu:run()
end

function RunServerMultiGameMenu(map, description, numplayers)
  local menu
  local sx = Video.Width / 20
  local sy = Video.Height / 20
  local startgame
  local d

  menu = WarMenu("Create Multiplayer game")

  menu:writeLargeText("Map", sx, sy*3)
  menu:writeText(_("Name:"), sx, sy*3+30)
  descr = menu:writeText(description, sx+70, sy*3+30)
  menu:writeText(_("File:"), sx, sy*3+50)
  maptext = menu:writeText(string.sub(map, 6), sx+70, sy*3+50)
  menu:writeText(_("Players:"), sx, sy*3+70)
  players = menu:writeText(numplayers, sx+70, sy*3+70)

  local function fowCb(dd)
    ServerSetupState.FogOfWar = bool2int(dd:isMarked())
    NetworkServerResyncClients()
    GameSettings.NoFogOfWar = not dd:isMarked()
  end
  local fow = menu:addImageCheckBox("Fog of War", sx, sy*3+120, fowCb)
  fow:setMarked(true)
  local function revealMapCb(dd)
    ServerSetupState.RevealMap = bool2int(dd:isMarked())
    NetworkServerResyncClients()
    GameSettings.RevealMap = bool2int(dd:isMarked())
  end
  local revealmap = menu:addImageCheckBox("Reveal Map", sx, sy*3+150, revealMapCb)
  local function no_randomnessCb(dd)
    ServerSetupState.NoRandomness = bool2int(dd:isMarked())
    NetworkServerResyncClients()
    GameSettings.NoRandomness = dd:isMarked()
  end
  local no_randomness = menu:addImageCheckBox("No Randomness", sx, sy*3+180, no_randomnessCb)
  no_randomness:setMarked(false)
  
  ServerSetupState.Opponents = 0
  local function computer_opponentsCb(dd)
	if (dd:isMarked()) then
		local connected_players = 0
		for i=2,8 do
			if (Hosts[i-1].PlyName ~= "") then
				connected_players = connected_players + 1
			end
		end
		ServerSetupState.Opponents = numplayers - 1 - connected_players
	else
		ServerSetupState.Opponents = 0
	end
    NetworkServerResyncClients()
  end
  local computer_opponents = menu:addImageCheckBox("Computer Opponents", sx, sy*3+210, computer_opponentsCb)
  computer_opponents:setMarked(false)

  menu:writeText("Civilization:", sx, sy*11)
   local civilization_list = {_("Map Default"), _("Dwarf"), _("Human - Germanic")}
   d = menu:addDropDown(civilization_list, sx + 100, sy*11,
    function(dd)
	  if (civilization_list[dd:getSelected() + 1] ~= _("Map Default")) then
			local chosen_civilization = civilization_list[dd:getSelected() + 1]
			chosen_civilization = string.gsub(chosen_civilization, "Human %- ", "")
			chosen_civilization = string.lower(chosen_civilization)
			GameSettings.Presets[0].Race = GetCivilizationID(chosen_civilization)
			ServerSetupState.Race[0] = GetCivilizationID(chosen_civilization)
	  end
      NetworkServerResyncClients()
    end)
  d:setSize(190, 20)

  menu:writeText("Units:", sx, sy*11+25)
  d = menu:addDropDown({_("Map Default"), _("1 Worker"), _("Town Hall + Workers"), _("Basic Squad"), _("Improved Squad"), _("Advanced Squad")}, sx + 100, sy*11+25,
    function(dd)
      GameSettings.NumUnits = dd:getSelected()
      ServerSetupState.UnitsOption = GameSettings.NumUnits
      NetworkServerResyncClients()
    end)
  d:setSize(190, 20)

  menu:writeText("Resources:", sx, sy*11+50)
  d = menu:addDropDown({_("Map Default"), _("Low"), _("Medium"), _("High")}, sx + 100, sy*11+50,
    function(dd)
      GameSettings.Resources = dd:getSelected()
      ServerSetupState.ResourcesOption = GameSettings.Resources
      NetworkServerResyncClients()
    end)
  d:setSize(190, 20)

  local updatePlayers = addPlayersList(menu, numplayers)

  NetworkMapName = map
  NetworkInitServerConnect(numplayers)
  ServerSetupState.FogOfWar = 1
--  ServerSetupState.Inside = 0
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

  menu:addFullButton(_("~!Cancel"), "c", Video.Width / 2 - 100, Video.Height - 100,
    function() InitGameSettings(); menu:stop() end)

  menu:run()
end

function RunCreateMultiGameMenu(s)
  local menu
  local map = "No Map"
  local description = "No map"
  local mapfile = "maps/nidavellir/chaincolt-foothills.smp"
  local numplayers = 3
  local sx = Video.Width / 20
  local sy = Video.Height / 20

  menu = WarMenu(_("Create Multiplayer game"))

  menu:writeText(_("Name:"), sx, sy*3+30)
  descr = menu:writeText(description, sx+70, sy*3+30)
  menu:writeText(_("File:"), sx, sy*3+50)
  maptext = menu:writeText(string.sub(mapfile, 6), sx+70, sy*3+50)
  menu:writeText(_("Players:"), sx, sy*3+70)
  players = menu:writeText(numplayers, sx+70, sy*3+70)

  local OldPresentMap = PresentMap
  PresentMap = function(desc, nplayers, w, h, id)
    numplayers = nplayers
    players:setCaption(""..numplayers)
    players:adjustSize()
    description = desc
    descr:setCaption(desc)
    descr:adjustSize()
    OldPresentMap(desc, nplayers, w, h, id)
  end

  Load(mapfile)
  --[[
  local browser = menu:addBrowser(MapDirectories[1], "^.*%.smp%.?g?z?$", sx*10, sy*2+20, sx*8, sy*11)
  local function cb(s)
    mapfile = browser.path .. browser:getSelectedItem()
    Load(mapfile)
    maptext:setCaption(string.sub(mapfile, 6))
    maptext:adjustSize()
  end
  browser:setActionCallback(cb)
  --]]
  
  local world
  local scenario
  local scenario_list = {}
  local world_list = {}
  
  local maps = {}

  local custom_map_present = false
  for map_directory=1,table.getn(MapDirectories) do
	-- load the maps
	local i
	local f
	local u = 1

	-- list the subdirectories in the maps folder
	local dirlist = {}
	local dirs = ListDirsInDirectory(MapDirectories[map_directory])
	for i,f in ipairs(dirs) do
		dirlist[u] = f .. "/"
		u = u + 1
	end

	-- get maps in the main maps folder
	u = table.getn(maps) + 1
	local fileslist = ListFilesInDirectory(MapDirectories[map_directory])
	for i,f in ipairs(fileslist) do
		if (string.find(f, "^.*%.smp%.?g?z?$")) then
			GetMapInfo(MapDirectories[map_directory] .. f)
			if (mapinfo.npersonplayers > 1) then
				maps[u] = MapDirectories[map_directory] .. f
				u = u + 1
			end
		end
	end

	-- get maps in subdirectories of the maps folder
	for j=1,table.getn(dirlist) do
		fileslist = ListFilesInDirectory(MapDirectories[map_directory] .. dirlist[j])
		for i,f in ipairs(fileslist) do
			if (string.find(f, "^.*%.smp%.?g?z?$")) then
				GetMapInfo(MapDirectories[map_directory] .. dirlist[j] .. f)
				if (mapinfo.npersonplayers > 1) then
					maps[u] = MapDirectories[map_directory] .. dirlist[j] .. f
					u = u + 1
				end
			end
		end
	end

	-- build the world list from world references in the maps
	for i=1,table.getn(maps) do
		MapWorld = ""
		Load(maps[i])
		if (MapWorld ~= "" and MapWorld ~= "None" and GetArrayIncludes(world_list, _(MapWorld)) == false) then
			table.insert(world_list, _(MapWorld))
		elseif (MapWorld == "") then
			custom_map_present = true
		end
	end
  end
  table.sort(world_list)
  if (custom_map_present) then
	  table.insert(world_list, _("Custom"))
  end

  menu:addLabel(_("World:"), sx*10, sy*2+20, Fonts["game"], false)
  world = menu:addDropDown(world_list, sx*10, sy*2+20 + 20,
    function(dd) WorldChanged() end)
  world:setSize(152, 20)
  world:setSelected(0)
  
  menu:addLabel(_("Map:"), sx*10, sy*4+20, Fonts["game"], false)
  scenario = menu:addDropDown(scenario_list, sx*10, sy*4+20 + 20,
    function(dd) ScenarioChanged() end)
  scenario:setSize(152, 20)

  function WorldChanged()
	scenario_list = {}

	for i=1,table.getn(maps) do
		MapWorld = ""
		MapRequiredQuest = ""
		Load(maps[i])
		if (MapWorld == world_list[world:getSelected() + 1] or (MapWorld == "" and world_list[world:getSelected() + 1] == "Custom")) then
			local map_description = _(description)
			if (map_description == "") then
				map_description = string.gsub(string.gsub(maps[i], ".smp", ""), "(.*)/", "")
			end
			table.insert(scenario_list, map_description)
		end
	end

	table.sort(scenario_list)
	scenario:setList(scenario_list)
	scenario:setSize(152, 20)
	scenario:setSelected(0)
	ScenarioChanged()
  end

  function ScenarioChanged()
	for i=1,table.getn(maps) do
		MapWorld = ""
		Load(maps[i])
		if (
			(
				_(description) == scenario_list[scenario:getSelected() + 1]
				or string.gsub(string.gsub(maps[i], ".smp", ""), "(.*)/", "") == scenario_list[scenario:getSelected() + 1]
			)
			and (
				_(MapWorld) == _(world_list[world:getSelected() + 1])
				or (
					MapWorld == ""
					and world_list[world:getSelected() + 1] == "Custom"
				)
			)
		) then
			mapfile = maps[i]
			Load(mapfile)
			maptext:setCaption(string.sub(mapfile, 6))
			maptext:adjustSize()
			break
		end
	end
  end
  
  menu:addFullButton("~!Create Game", "c", sx,  sy*11,
    function(s)
--      if (browser:getSelected() < 0) then
--        return
--      end
      RunServerMultiGameMenu(mapfile, description, numplayers)
      menu:stop()
    end
  )
  
  WorldChanged()

  menu:addFullButton(_("Cancel (~<Esc~>)"), "escape", sx,  sy*12+25,
    function() menu:stop() end)

  menu:run()
  PresentMap = OldPresentMap
end

function RunMultiPlayerGameMenu(s)
  local menu = WarMenu()
  local offx = (Video.Width - 640) / 2
  local offy = (Video.Height - 480) / 2
  local nick

  local function FixMusic()
    SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
    wyrmsun.playlist = { "music/battle_theme_a.ogg" }

    if not (IsMusicPlaying()) then
        PlayMusic("music/battle_theme_a.ogg")
    end
  end

  InitGameSettings()
  InitNetwork1()

  menu:addLabel("~<Multiplayer Network Game~>", offx + 640/2 + 12, offy + 192)

  menu:writeText(_("Nickname :"), 208 + offx, 264 + offy)
  nick = menu:addTextInputField(GetLocalPlayerName(), offx + 298, 260 + offy)

  menu:addFullButton(_("~!Join Game"), "j", 208 + offx, 320 + (36 * 0) + offy,
    function()
      if nick:getText() ~= GetLocalPlayerName() then
        SetLocalPlayerName(nick:getText())
        wyr.preferences.PlayerName = nick:getText()
        SavePreferences()
      end
      RunJoinIpMenu()
      FixMusic()
    end)
  menu:addFullButton(_("~!Create Game"), "c", 208 + offx, 320 + (36 * 1) + offy,
    function()
      if nick:getText() ~= GetLocalPlayerName() then
        SetLocalPlayerName(nick:getText())
        wyr.preferences.PlayerName = nick:getText()
        SavePreferences()
      end
      RunCreateMultiGameMenu()
      FixMusic()
    end)

  menu:addFullButton(_("~!Previous Menu"), "p", 208 + offx, 320 + (36 * 2) + offy,
    function() SetLocalPlayerName("") menu:stop() end) -- Andrettin: in single-player games the local player shouldn't use his nick

  menu:run()

  ExitNetwork1()
end

