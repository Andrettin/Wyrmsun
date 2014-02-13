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
--      guichan.lua - Define the main guichan menu.
--
--      (c) Copyright 2006-2010 by Jimmy Salmon and Pali Rohár
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

PlayerFaction = ""

SetPlayerData(GetThisPlayer(), "RaceName", "dwarf")

-- Global useful objects for menus  ----------
dark = Color(38, 38, 78)
clear = Color(200, 200, 120)
black = Color(0, 0, 0)

bckground = CGraphic:New("ui/Menu_background_with_title.png")
bckground:Load()
bckground:Resize(Video.Width, Video.Height)
backgroundWidget = ImageWidget(bckground)

g_dbln = CGraphic:New("ui/dwarf/widgets/button-large-normal.png")
g_dbln:Load()
g_dblp = CGraphic:New("ui/dwarf/widgets/button-large-pressed.png")
g_dblp:Load()
g_dblg = CGraphic:New("ui/dwarf/widgets/button-large-grayed.png")
g_dblg:Load()

g_dbsn = CGraphic:New("ui/dwarf/widgets/button-small-normal.png")
g_dbsn:Load()
g_dbsp = CGraphic:New("ui/dwarf/widgets/button-small-pressed.png")
g_dbsp:Load()
g_dbsg = CGraphic:New("ui/dwarf/widgets/button-small-grayed.png")
g_dbsg:Load()

local dpanels = {
  "ui/dwarf/panel_1.png",
  "ui/dwarf/panel_2.png",
  "ui/dwarf/panel_3.png",
  "ui/dwarf/panel_4.png",
  "ui/dwarf/panel_5.png"
}

function panel(n)
  if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
    return dpanels[n]
  end
end



function AddMenuHelpers(menu)
  function menu:addCentered(widget, x, y)
    self:add(widget, x - widget:getWidth() / 2, y)
  end

  function menu:addLabel(text, x, y, font, center)
    local label = Label(text)
    if (font == nil) then font = Fonts["large"] end
    label:setFont(font)
    label:adjustSize()
    if (center == nil or center == true) then -- center text by default
      x = x - label:getWidth() / 2
    end
    self:add(label, x, y)

    return label
  end

  function menu:writeText(text, x, y)
    return self:addLabel(text, x, y, Fonts["game"], false)
  end

  function menu:writeLargeText(text, x, y)
    return self:addLabel(text, x, y, Fonts["large"], false)
  end

  function menu:addButton(caption, hotkey, x, y, callback, size)
    local b = ButtonWidget(caption)
    b:setHotKey(hotkey)
    b:setActionCallback(callback)
    if (size == nil) then size = {200, 24} end
    b:setSize(size[1], size[2])
    b:setBackgroundColor(dark)
    b:setBaseColor(dark)
    self:add(b, x, y)
    return b
  end

  function menu:addImageButton(caption, hotkey, x, y, callback)
    local b = ImageButton(caption)
    b:setHotKey(hotkey)
    b:setActionCallback(callback)
    self:add(b, x, y)
    return b
  end

  function menu:addFullButton(caption, hotkey, x, y, callback)
    local b = self:addImageButton(caption, hotkey, x, y, callback)
    if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
      b:setNormalImage(g_dbln)
      b:setPressedImage(g_dblp)
      b:setDisabledImage(g_dblg)
    else
      b:setNormalImage(g_dbln)
      b:setPressedImage(g_dblp)
      b:setDisabledImage(g_dblg)
    end
    b:setSize(224, 28)
    return b
  end

  function menu:addHalfButton(caption, hotkey, x, y, callback)
    local b = self:addImageButton(caption, hotkey, x, y, callback)
    if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
      b:setNormalImage(g_dbsn)
      b:setPressedImage(g_dbsp)
      b:setDisabledImage(g_dbsg)
    else
      b:setNormalImage(g_dbsn)
      b:setPressedImage(g_dbsp)
      b:setDisabledImage(g_dbsg)
    end
    b:setSize(106, 28)
    return b
  end

  function menu:addSlider(min, max, w, h, x, y, callback)
    local b = Slider(min, max)
    b:setBaseColor(dark)
    b:setForegroundColor(clear)
    b:setBackgroundColor(clear)
    b:setSize(w, h)
    b:setActionCallback(function(s) callback(b, s) end)
    self:add(b, x, y)
    return b
  end

  function menu:addListBox(x, y, w, h, list)
    local bq = ListBoxWidget(w, h)
    bq:setList(list)
    bq:setBaseColor(black)
    bq:setForegroundColor(clear)
    bq:setBackgroundColor(dark)
    bq:setFont(Fonts["game"])
    self:add(bq, x, y)
    bq.itemslist = list
    return bq
  end

  function menu:addBrowser(path, filter, x, y, w, h, default)
    -- Create a list of all dirs and files in a directory
    local function listfiles(path)
      local dirlist = {}
      local i
      local f
      local u = 1

      local dirs = ListDirsInDirectory(path)
      for i,f in ipairs(dirs) do
        dirlist[u] = f .. "/"
        u = u + 1
      end

      local fileslist = ListFilesInDirectory(path)
      for i,f in ipairs(fileslist) do
        if (string.find(f, filter)) then
          dirlist[u] = f
          u = u + 1
        end
      end

      return dirlist
    end

    local bq = self:addListBox(x, y, w, h, {})

    if (string.sub(path, string.len(path)) ~= "/") then
      path = path .. "/"
    end
    bq.origpath = path
    bq.actioncb = nil

    -- The directory changed, update the list
    local function updatelist()
      bq.itemslist = listfiles(bq.path)
      if (bq.path ~= bq.origpath) then
        table.insert(bq.itemslist, 1, "../")
      end
      bq:setList(bq.itemslist)
    end

    -- Change to the default directory and select the default file
    if (default == nil) then
      bq.path = path
      updatelist()
    else
      local i
      for i=string.len(default)-1,1,-1 do
        if (string.sub(default, i, i) == "/") then
          bq.path = string.sub(default, 1, i)
          updatelist()

          local f = string.sub(default, i + 1)
          for i=1,table.getn(bq.itemslist) do
            if (bq.itemslist[i] == f) then
              bq:setSelected(i - 1)
            end
          end
          break
        end
      end
    end

    function bq:exists(name)
     for i,v in ipairs(self.itemslist) do
       if(v == name) then
         return true
       end
     end
     return false
    end


    function bq:getSelectedItem()
      if (self:getSelected() < 0) then
        return self.itemslist[1]
      end
      return self.itemslist[self:getSelected() + 1]
    end

    -- If a directory was clicked change dirs
    -- Otherwise call the user's callback
    local function cb(s)
      local f = bq:getSelectedItem()
      if (f == "../") then
        local i
        for i=string.len(bq.path)-1,1,-1 do
          if (string.sub(bq.path, i, i) == "/") then
            bq.path = string.sub(bq.path, 1, i)
            updatelist()
            break
          end
        end
      elseif (string.sub(f, string.len(f)) == '/') then
        bq.path = bq.path .. f
        updatelist()
      else
        if (bq.actioncb ~= nil) then
          bq:actioncb(s)
        end
      end
    end
    bq:setActionCallback(cb)

    bq.oldSetActionCallback = bq.setActionCallback
    function bq:setActionCallback(cb)
      bq.actioncb = cb
    end

    return bq
  end

  function menu:addCheckBox(caption, x, y, callback)
    local b = CheckBox(caption)
    b:setBaseColor(clear)
    b:setForegroundColor(clear)
    b:setBackgroundColor(dark)
	if (callback ~= nil) then b:setActionCallback(function(s) callback(b, s) end) end
    b:setFont(Fonts["game"])
    self:add(b, x, y)
    return b
  end

  function menu:addRadioButton(caption, group, x, y, callback)
    local b = RadioButton(caption, group)
    b:setBaseColor(dark)
    b:setForegroundColor(clear)
    b:setBackgroundColor(dark)
    b:setActionCallback(callback)
    self:add(b, x, y)
    return b
  end

  function menu:addDropDown(list, x, y, callback)
    local dd = DropDownWidget()
    dd:setFont(Fonts["game"])
    dd:setList(list)
    dd:setActionCallback(function(s) callback(dd, s) end)
    dd:setBaseColor(dark)
    dd:setForegroundColor(clear)
    dd:setBackgroundColor(dark)
    self:add(dd, x, y)
    return dd
  end

  function menu:addTextInputField(text, x, y, w)
    local b = TextField(text)
    b:setActionCallback(function() end) --FIXME: remove this?
    b:setFont(Fonts["game"])
    b:setBaseColor(clear)
    b:setForegroundColor(clear)
    b:setBackgroundColor(dark)
    if (w == nil) then w = 100 end
    b:setSize(w, 18)
    self:add(b, x, y)
    return b
  end
end

function WarMenu(title, background, resize)
  local menu
  local exitButton
  local bg
  local bgg

  menu = MenuScreen()

  if background == nil then
    bg = backgroundWidget
  else
    bgg = CGraphic:New(background)
    bgg:Load()
    if (resize == nil or resize == true) then
      bgg:Resize(Video.Width, Video.Height)
    end
    bg = ImageWidget(bgg)
  end
  menu:add(bg, 0, 0)

  AddMenuHelpers(menu)

  if title then
    menu:addLabel(title, Video.Width / 2, Video.Height / 20, Fonts["large"])
  end

  return menu
end

-- Default configurations -------
Widget:setGlobalFont(Fonts["large"])


DefaultObjectives = {"- Destroy the enemy"}
for i=0,14 do
	Objectives[i] = DefaultObjectives
end


-- Define the different menus ----------

function InitGameSettings()
  GameSettings.NetGameType = 1
  for i=0,PlayerMax-1 do
    GameSettings.Presets[i].Race = -1
    GameSettings.Presets[i].Team = -1
    GameSettings.Presets[i].Type = -1
  end
  GameSettings.Resources = -1
  GameSettings.NumUnits = -1
  GameSettings.Opponents = -1
  GameSettings.Terrain = -1
  GameSettings.GameType = -1
  GameSettings.NoFogOfWar = false
  GameSettings.RevealMap = 0
  GameSettings.Tileset = nil
end
InitGameSettings()

function RunMap(map, objective, fow, revealmap)
  if objective == nil then
    for i=0,14 do
      Objectives[i] = DefaultObjectives
    end
  else
    for i=0,14 do
      Objectives[i] = objective
    end
  end
  local loop = true
  while (loop) do
    InitGameVariables()
    if fow ~= nil then
      SetFogOfWar(fow)
    end
    if revealmap == true then
       RevealMap()
    end
    StartMap(map)
    if GameResult ~= GameRestart then
      loop = false
    end
  end
  RunResultsMenu(s)

  InitGameSettings()
  SetPlayerData(GetThisPlayer(), "RaceName", "dwarf")
end

mapname = "maps/northern-lakes.smp"
local buttonStatut = 0 -- 0:not initialised, 1: Ok, 2: Cancel
mapinfo = {
  playertypes = {nil, nil, nil, nil, nil, nil, nil, nil},
  description = "",
  nplayers = 1,
  w = 32,
  h = 32,
  id = 0
}

function GetMapInfo(mapname)
  local OldDefinePlayerTypes = DefinePlayerTypes
  local OldPresentMap = PresentMap

  function DefinePlayerTypes(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p12, p13, p14, p15)
    mapinfo.playertypes[1] = p1
    mapinfo.playertypes[2] = p2
    mapinfo.playertypes[3] = p3
    mapinfo.playertypes[4] = p4
    mapinfo.playertypes[5] = p5
    mapinfo.playertypes[6] = p6
    mapinfo.playertypes[7] = p7
    mapinfo.playertypes[8] = p8
    mapinfo.playertypes[9] = p9
    mapinfo.playertypes[10] = p10
    mapinfo.playertypes[11] = p11
    mapinfo.playertypes[12] = p12
    mapinfo.playertypes[13] = p13
    mapinfo.playertypes[14] = p14
    mapinfo.playertypes[15] = p15

    mapinfo.nplayers = 0
    for i=0,15 do
      local t = mapinfo.playertypes[i]
      if (t == "person" or t == "computer") then
        mapinfo.nplayers = mapinfo.nplayers + 1
      end
    end
  end

  function PresentMap(description, nplayers, w, h, id)
    mapinfo.description = description
    -- nplayers includes rescue-passive and rescue-active
    -- calculate the real nplayers in DefinePlayerTypes
    --mapinfo.nplayers = nplayers
    mapinfo.w = w
    mapinfo.h = h
    mapinfo.id = id
  end

  Load(mapname)

  DefinePlayerTypes = OldDefinePlayerTypes
  PresentMap = OldPresentMap
end

function RunSelectScenarioMenu()
  buttonStatut = 0
  local menu = WarMenu(nil, panel(5), false)
  menu:setSize(352, 352)
  menu:setPosition((Video.Width - 352) / 2, (Video.Height - 352) / 2)
  menu:setDrawMenusUnder(true)

  menu:addLabel(select_scenario_name, 176, 8)

  local browser = menu:addBrowser("maps/", "^.*%.smp%.?g?z?$",
    24, 140, 300, 108, mapname)

  local l = menu:addLabel(browser:getSelectedItem(), 24, 260, Fonts["game"], false)

  local function cb(s)
    l:setCaption(browser:getSelectedItem())
    l:adjustSize()
  end
  browser:setActionCallback(cb)

  menu:addHalfButton("~!OK", "o", 48, 318,
    function()
      local cap = l:getCaption()

      if (browser:getSelected() < 0) then
        return
      end
      buttonStatut = 1
      mapname = browser.path .. cap
      menu:stop()
    end)
  menu:addHalfButton(cancel_name, "c", 198, 318,
    function() buttonStatut = 2; menu:stop() end)

  menu:run()
end

function RunSinglePlayerGameMenu()
  local menu = WarMenu()
  local offx = (Video.Width - 640) / 2
  local offy = (Video.Height - 480) / 2
  local d
  local world
  local scenario
  local race
  local faction
  local resources
  local opponents
  local numunits
  local gametype
  local mapl
  local descriptionl
  local tilesetdd
  local events

  -- create the scenario list
  local scenario_list = {}

  menu:addLabel("Scenario:", offx + 16, offy + 360, Fonts["game"], false)
  mapl = menu:addLabel(string.sub(mapname, 6), offx + 16, offy + 360 + 24, Fonts["game"], false)
  descriptionl = menu:addLabel("descriptionl", offx + 16 + 74, offy + 360, Fonts["game"], false)

  menu:addLabel("~<Single Player Game Setup~>", offx + 640/2 + 12, offy + 72)
  menu:addFullButton("~!Tech Tree", "t", offx + 640 - 224 - 16, offy + 360 + 36*0,
    function()
      RunTechTreeMenu(0)
    end)
  menu:addFullButton("~!Start Game", "s", offx + 640 - 224 - 16, offy + 360 + 36*1,
    function()
      local tilesetFilename = {nil, "wasteland.lua"};

      GameSettings.Presets[0].Race = race:getSelected()
      GameSettings.Resources = resources:getSelected()
      if (faction:getSelected() == 0) then
        PlayerFaction = ""
      elseif (race:getSelected() == 1) then
        PlayerFaction = GetCivilizationFactions("dwarf")[faction:getSelected()]
      end
      GameSettings.Opponents = opponents:getSelected()
      GameSettings.NumUnits = numunits:getSelected()
      GameSettings.GameType = gametype:getSelected() - 1
      GameSettings.Tileset = tilesetFilename[tilesetdd:getSelected() + 1]
      EventsActivated = events:getSelected()
	  
      RunMap(mapname)
      menu:stop()
    end)
  menu:addFullButton("~!Cancel Game", "c", offx + 640 - 224 - 16, offy + 360 + 36*2, function() menu:stop() end)

  menu:addLabel("~<World:~>", offx + 40, offy + (10 + 120) - 20, Fonts["game"], false)
  world = menu:addDropDown({"Earth", "Nidavellir", "Other"}, offx + 40, offy + 10 + 120,
    function(dd) WorldChanged() end)
  world:setSize(152, 20)
  world:setSelected(1)

  menu:addLabel("~<Map:~>", offx + 220, offy + (10 + 120) - 20, Fonts["game"], false)
  scenario = menu:addDropDown(scenario_list, offx + 220, offy + 10 + 120,
    function(dd) ScenarioChanged() end)
  scenario:setSize(152, 20)
  scenario:setSelected(table.getn(scenario_list))

  menu:addLabel("~<Your Civilization:~>", offx + 40, offy + (10 + 180) - 20, Fonts["game"], false)
  race = menu:addDropDown({"Map Default", dwarven_species_and_civilization_name}, offx + 40, offy + 10 + 180,
    function(dd) CivilizationChanged() end)
  race:setSize(152, 20)

  menu:addLabel("~<Your Faction:~>", offx + 220, offy + (10 + 180) - 20, Fonts["game"], false)
  faction = menu:addDropDown({"Map Default"}, offx + 220, offy + 10 + 180,
    function(dd) end)
  faction:setSize(152, 20)

  menu:addLabel("~<Resources:~>", offx + 640 - 224 - 16, offy + (10 + 180) - 20, Fonts["game"], false)
  resources = menu:addDropDown({"Map Default", "Low", "Medium", "High"}, offx + 640 - 224 - 16, offy + 10 + 180,
    function(dd) end)
  resources:setSize(152, 20)

  menu:addLabel(units_name, offx + 40, offy + (10 + 240) - 20, Fonts["game"], false)
  numunits = menu:addDropDown({"Map Default", "One Worker Only", "Town Hall + Workers"}, offx + 40, offy + 10 + 240,
    function(dd) end)
  numunits:setSize(152, 20)

  local opponents_list = {"Map Default", "1 Opponent", "2 Opponents",
    "3 Opponents", "4 Opponents", "5 Opponents", "6 Opponents", "7 Opponents"}

  menu:addLabel("~<Opponents:~>", offx + 220, offy + (10 + 240) - 20, Fonts["game"], false)
  opponents = menu:addDropDown(opponents_list, offx + 220, offy + 10 + 240,
    function(dd) end)
  opponents:setSize(152, 20)

  menu:addLabel("~<Game Type:~>", offx + 640 - 224 - 16, offy + (10 + 240) - 20, Fonts["game"], false)
  gametype = menu:addDropDown({"Use Map Settings", "Melee", "Free for All", "Top vs Bottom", "Left vs Right", "Man vs Machine"}, offx + 640 - 224 - 16, offy + 10 + 240,
    function(dd) end)
  gametype:setSize(152, 20)

  menu:addLabel("~<Terrain:~>", offx + 40, offy + (10 + 300) - 20, Fonts["game"], false)
  tilesetdd = menu:addDropDown({"Map Default", "Wasteland"}, offx + 40, offy + 10 + 300,
    function(dd) end)
  tilesetdd:setSize(152, 20)

  menu:addLabel("~<Events:~>", offx + 220, offy + (10 + 300) - 20, Fonts["game"], false)
  events = menu:addDropDown({"Activated", "Deactivated"}, offx + 220, offy + 10 + 300,
    function(dd) end)
  events:setSize(152, 20)

  function WorldChanged()
	scenario_list = {}
	if (world:getSelected() == 0) then
		table.insert(scenario_list, "Scandinavia")
	elseif (world:getSelected() == 1) then
--		if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck") == true) then
--			table.insert(scenario_list, "Caverns of Chaincolt")
--		end
		table.insert(scenario_list, "Chaincolt Foothills")
	else
		table.insert(scenario_list, "Central Park")
		table.insert(scenario_list, "Forgotten Forest")
		table.insert(scenario_list, "Little Island")
		table.insert(scenario_list, "Looking Upwards")
		table.insert(scenario_list, "Northern Lakes")
		table.insert(scenario_list, "North-South Conflict")
		table.insert(scenario_list, "River Crossing")
		table.insert(scenario_list, "Time for Decisions")
		table.insert(scenario_list, "Custom Map")
	end
	scenario:setList(scenario_list)
	scenario:setSize(152, 20)
	scenario:setSelected(0)
	ScenarioChanged()
  end

  function ScenarioChanged()
	if (scenario_list[scenario:getSelected() + 1] == "Scandinavia") then
		mapname = "maps/scandinavia.smp"
		mapl:setCaption(string.sub(mapname, 6))
	elseif (scenario_list[scenario:getSelected() + 1] == "Caverns of Chaincolt") then
		mapname = "maps/caverns-of-chaincolt.smp"
		mapl:setCaption(string.sub(mapname, 6))
	elseif (scenario_list[scenario:getSelected() + 1] == "Chaincolt Foothills") then
		mapname = "maps/chaincolt-foothills.smp"
		mapl:setCaption(string.sub(mapname, 6))
	elseif (scenario_list[scenario:getSelected() + 1] == "Central Park") then
		mapname = "maps/central-park.smp"
		mapl:setCaption(string.sub(mapname, 6))
	elseif (scenario_list[scenario:getSelected() + 1] == "Forgotten Forest") then
		mapname = "maps/forgotten-forest.smp"
		mapl:setCaption(string.sub(mapname, 6))
	elseif (scenario_list[scenario:getSelected() + 1] == "Little Island") then
		mapname = "maps/little-island.smp"
		mapl:setCaption(string.sub(mapname, 6))
	elseif (scenario_list[scenario:getSelected() + 1] == "Looking Upwards") then
		mapname = "maps/looking-upwards.smp"
		mapl:setCaption(string.sub(mapname, 6))
	elseif (scenario_list[scenario:getSelected() + 1] == "Northern Lakes") then
		mapname = "maps/northern-lakes.smp"
		mapl:setCaption(string.sub(mapname, 6))
	elseif (scenario_list[scenario:getSelected() + 1] == "North-South Conflict") then
		mapname = "maps/north-south-conflict.smp"
		mapl:setCaption(string.sub(mapname, 6))
	elseif (scenario_list[scenario:getSelected() + 1] == "River Crossing") then
		mapname = "maps/river-crossing.smp"
		mapl:setCaption(string.sub(mapname, 6))
	elseif (scenario_list[scenario:getSelected() + 1] == "Time for Decisions") then
		mapname = "maps/time-for-decisions.smp"
		mapl:setCaption(string.sub(mapname, 6))
	elseif (scenario_list[scenario:getSelected() + 1] == "Custom Map") then
		local oldmapname = mapname
		RunSelectScenarioMenu()
		if (mapname ~= oldmapname) then
			GetMapInfo(mapname)
			MapChanged()
		end
		mapl:setCaption(string.sub(mapname, 6))
	end
	GetMapInfo(mapname)
	MapChanged()
  end

  function CivilizationChanged()
    local faction_list = {"Map Default"}
    if (race:getSelected() == 1) then
	    for i=1,table.getn(GetCivilizationFactions("dwarf")) do
	      table.insert(faction_list, GetCivilizationFactions("dwarf")[i])
	    end
    end
    faction:setList(faction_list)
    faction:setSize(152, 20)
  end

  function MapChanged()
    mapl:adjustSize()

    descriptionl:setCaption(mapinfo.description ..
      " (" .. mapinfo.w .. " x " .. mapinfo.h .. ")")
    descriptionl:adjustSize()

    local o = {}
    for i=1,mapinfo.nplayers do
      table.insert(o, opponents_list[i])
    end
    opponents:setList(o)
    opponents:setSize(152, 20)
  end

  GetMapInfo(mapname)
  MapChanged()

  WorldChanged()

  menu:run()
end

function BuildProgramStartMenu()
  wyrmsun.playlist = { "music/legends_of_the_north.ogg" }
  SetPlayerData(GetThisPlayer(), "RaceName", "dwarf")

  if not (IsMusicPlaying()) then
    PlayMusic("music/legends_of_the_north.ogg")
  end

  local menu = WarMenu()
  local offx = (Video.Width - 640) / 2
  local offy = (Video.Height - 480) / 2

-- Replaced with a larger title, until we get a background with a proper logo
--  menu:addLabel(wyrmsun.Name .. " v" .. wyrmsun.Version .. "  " .. wyrmsun.Homepage, offx + 320, (Video.Height - 90) + 18*2, Fonts["game"])
  menu:addLabel(wyrmsun.Copyright, offx + 320, (Video.Height - 90) + 18*4, Fonts["small"])


  menu:addLabel(wyrmsun.Name .. " v" .. wyrmsun.Version, offx + 320, offy + 104 + 36*-1)
  if (wyr.preferences.LastVersionPlayed ~= wyrmsun.Version) then
    wyr.preferences.LastVersionPlayed = wyrmsun.Version
    SavePreferences()
  end

  menu:addFullButton(single_player_game_name, "s", offx + 208, offy + 104 + 36*0,
    function() RunSinglePlayerGameMenu(); menu:stop(1) end)
  menu:addFullButton(multi_player_game_name, "m", offx + 208, offy + 104 + 36*1,
    function() RunMultiPlayerGameMenu(); menu:stop(1) end)
  menu:addFullButton(title_load_game_name, "l", offx + 208, offy + 104 + 36*2,
    function() RunLoadGameMenu(); menu:stop(1) end)
  menu:addFullButton(replay_game_name, "r", offx + 208, offy + 104 + 36*3,
    function() RunReplayGameMenu(); menu:stop(1) end)
  menu:addFullButton(options_name, "o", offx + 208, offy + 104 + 36*4,
    function() RunOptionsMenu(); menu:stop(1) end)
  menu:addFullButton(map_editor_name, "e", offx + 208, offy + 104 + 36*5,
    function() RunEditorMenu(); menu:stop(1) end)
  menu:addFullButton("Load Mo~!d", "d", offx + 208, offy + 104 + 36*6,
    function() RunLoadModMenu(); menu:stop(1) end)
  menu:addFullButton(show_credits_name, "h", offx + 208, offy + 104 + 36*7, RunShowCreditsMenu)

  menu:addFullButton(exit_program_name, "x", offx + 208, offy + 104 + 36*8,
    function() menu:stop() end)

  return menu:run()
end

function RunLoadModMenu()
  buttonStatut = 0
  local menu = WarMenu(nil, panel(5), false)
  menu:setSize(352, 352)
  menu:setPosition((Video.Width - 352) / 2, (Video.Height - 352) / 2)
  menu:setDrawMenusUnder(true)

  menu:addLabel("Load Mod", 176, 8)

  local browser = menu:addBrowser("mods/", ".lua$",
    24, 140, 300, 108)

  local l = menu:addLabel(browser:getSelectedItem(), 24, 260, Fonts["game"], false)

  menu:addHalfButton("~!OK", "o", 48, 318,
    function()
      if (browser:getSelected() < 0) then
        return
      end
      Load(browser.path .. browser:getSelectedItem())
      menu:stop()
    end)
  menu:addHalfButton("~!Cancel", "c", 198, 318,
    function() buttonStatut = 2; menu:stop() end)

  menu:run()
end

LoadGameFile = nil

function RunProgramStartMenu()
  local continue = 1

  while continue == 1 do
    if (LoadGameFile ~= nil) then
      LoadGame(LoadGameFile)
    else
      continue = BuildProgramStartMenu(menu)
    end
  end
end


Load("scripts/menus/load.lua")
Load("scripts/menus/save.lua")
Load("scripts/menus/replay.lua")
Load("scripts/menus/options.lua")
Load("scripts/menus/editor.lua")
Load("scripts/menus/credits.lua")
Load("scripts/menus/game.lua")
Load("scripts/menus/help.lua")
Load("scripts/menus/objectives.lua")
Load("scripts/menus/endscenario.lua")
Load("scripts/menus/diplomacy.lua")
Load("scripts/menus/results.lua")
Load("scripts/menus/network.lua")
Load("scripts/menus/techtree.lua")

function GameStarting()
  if (wyr.preferences.ShowTips and not IsReplayGame()) then
    SetGamePaused(true)
    RunTipsMenu()
  end
end

if (Editor.Running == EditorCommandLine) then
  if (CliMapName and CliMapName ~= "") then
    StartEditor(CliMapName)
  else
    RunEditorMenu()
  end
else
  if (CliMapName and CliMapName ~= "") then
    RunMap(CliMapName)
  else
    RunProgramStartMenu()
  end
end

