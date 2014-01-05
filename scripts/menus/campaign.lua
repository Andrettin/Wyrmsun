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
--      campaign.lua - Define the menu for campaigns.
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

function Briefing(title, objs, bg, text, voices)
  if (currentRace ~= nil) then
    SetPlayerData(GetThisPlayer(), "RaceName", currentRace)
  end

  local menu = WarMenu(nil, bg)

  wyrmsun.playlist = {}
  if (currentRace == "dwarf") then
    PlayMusic("music/legends_of_the_north.ogg")
    Load("scripts/dwarf/ui.lua")
  else
    StopMusic()
  end

  Objectives = objs

  if (title ~= nil) then
    menu:addLabel(title, (70 + 340) / 2 * Video.Width / 640, 28 * Video.Height / 480, Fonts["large"], true)
  end

  local t = LoadBuffer(text)
  t = "\n\n\n\n\n\n" .. t .. "\n\n\n\n\n\n\n\n\n\n\n\n\n"
  local sw = ScrollingWidget(320, 170 * Video.Height / 480)
  sw:setBackgroundColor(Color(0,0,0,0))
  sw:setSpeed(0.28)
  local l = MultiLineLabel(t)
  l:setFont(Fonts["large"])
  l:setAlignment(MultiLineLabel.LEFT)
  l:setLineWidth(320)
  l:adjustSize()
  sw:add(l, 0, 0)
  menu:add(sw, 70 * Video.Width / 640, 80 * Video.Height / 480)

  if (objs ~= nil) then
    menu:addLabel("Objectives:", 372 * Video.Width / 640, 306 * Video.Height / 480, Fonts["large"], false)

    local objectives = ""
    table.foreachi(objs, function(k,v) objectives = objectives .. v .. "\n" end)

    local l = MultiLineLabel(objectives)
    l:setFont(Fonts["large"])
    l:setAlignment(MultiLineLabel.LEFT)
    l:setLineWidth(250 * Video.Width / 640)
    l:adjustSize()
    menu:add(l, 372 * Video.Width / 640, (306 * Video.Height / 480) + 30)
  end

  local voice = 0
  local channel = -1

  menu:addHalfButton("~!Continue", "c", 455 * Video.Width / 640, 440 * Video.Height / 480,
    function()
      if (channel ~= -1) then
        voice = table.getn(voices)
        StopChannel(channel)
      end
      menu:stop()
      StopMusic()
    end)


  function PlayNextVoice()
    voice = voice + 1
    if (voice <= table.getn(voices)) then
      channel = PlaySoundFile(voices[voice], PlayNextVoice);
    else
      channel = -1
    end
  end
  PlayNextVoice()

  local speed = GetGameSpeed()
  SetGameSpeed(30)

  menu:run()

  SetGameSpeed(speed)
end

function GetCampaignState(race, exp)
	-- Loaded saved game could have other old state
	-- Make sure that we use saved state from config file
	Load("preferences.lua")

	-- The Scepter of Fire
	if (race == "dwarf" and exp == "") then
		return wyr.preferences.CampaignTheScepterOfFire
	end
	return 1
end

function IncreaseCampaignState(race, exp, state)
	-- Loaded saved game could have other old state
	-- Make sure that we use saved state from config file
	Load("preferences.lua")
	if (race == "dwarf" and exp == "") then
		if (state ~= GetCampaignState(race, exp)) then return end
		wyr.preferences.CampaignTheScepterOfFire = wyr.preferences.CampaignTheScepterOfFire + 1
	end
	-- Make sure that we immediately save state
	SavePreferences()
end

function CreatePictureStep(bg, sound, title, text)
  return function()
    SetPlayerData(GetThisPlayer(), "RaceName", currentRace)
    wyrmsun.playlist = {}
    PlayMusic(sound)
    local menu = WarMenu(nil, bg)
    local offx = (Video.Width - 640) / 2
    local offy  = (Video.Height - 480) / 2
    menu:addLabel(title, offx + 320, offy + 240 - 67, Fonts["large-title"], true)
    menu:addLabel(text, offx + 320, offy + 240 - 25, Fonts["small-title"], true)
    menu:addHalfButton("~!Continue", "c", 455 * Video.Width / 640, 440 * Video.Height / 480,
      function() menu:stop() end)
    menu:run()
    GameResult = GameVictory
  end
end

function CreateMapStep(map)
  return function()
    Load(map)
    RunMap(map)
    if (GameResult == GameVictory) then
      IncreaseCampaignState(currentRace, currentExp, currentState)
    end
  end
end

function CreateVideoStep(video)
  return function()
    PlayMovie(video)
    GameResult = GameVictory
  end
end

function CreateVictoryStep(bg, text, voices)
  return function()
    Briefing(nil, nil, bg, text, voices)
    GameResult = GameVictory
  end
end

function CampaignButtonTitle(race, exp, i)
  local name = "campaigns/" .. race
  if (exp == "exp") then name = name .. "-exp" end
  name = name .. "/level"
  if (exp == "exp") then name = name .. "x" end
  if (i<10) then name = name .. "0" end
  name = name .. i

  if (race == "dwarf") then
    name = name .. "d"
  else
    name = name .. "h"
  end

  name = name .. "_c2.sms"

  title = "Ending - Victory"
  Load(name)

  if ( string.len(title) > 20 ) then
	  title = string.sub(title, 1, 19) .. "..."
  end

  return title
end

function CampaignButtonFunction(campaign, race, exp, i, menu)
  return function()
    position = campaign_menu[i]
    currentCampaign = campaign
    currentRace = race
    currentExp = exp
    currentState = i
    menu:stop()
    RunCampaign(campaign)
  end
end

function RunCampaignSubmenu(campaign, race, exp)
  Load(campaign)

  wyrmsun.playlist = { "music/legends_of_the_north.ogg" }
  SetPlayerData(GetThisPlayer(), "RaceName", "dwarf")

  if not (IsMusicPlaying()) then
    PlayMusic("music/legends_of_the_north.ogg")
  end

  local menu = WarMenu()
  local offx = (Video.Width - 640) / 2
  local offy = (Video.Height - 480) / 2

  local show_buttons = GetCampaignState(race, exp)
  local half = math.ceil(show_buttons/2)
  local floorhalf = math.floor(show_buttons / 2)

  for it = 1, floorhalf do
    local i = 2 * it - 1
    menu:addFullButton(CampaignButtonTitle(race, exp, i), ".", offx + 98, offy + 64 + (36 * it), CampaignButtonFunction(campaign, race, exp, i, menu))
    menu:addFullButton(CampaignButtonTitle(race, exp, i + 1), ".", offx + 326, offy + 64 + (36 * it), CampaignButtonFunction(campaign, race, exp, i + 1, menu))
  end
  if (floorhalf ~= half) then
    menu:addFullButton(CampaignButtonTitle(race, exp, show_buttons), ".", offx + 98, offy + 64 + (36 * half), CampaignButtonFunction(campaign, race, exp, show_buttons, menu))
  end

  menu:addFullButton(previous_menu_name, "p", offx + 208, offy + 212 + (36 * 5),
    function() menu:stop(); currentCampaign = nil; currentRace = nil; currentExp = nil; currentState = nil; RunCampaignGameMenu() end)

  menu:run()

end

function RunCampaign(campaign)
  Load(campaign)

  if (campaign ~= currentCampaign or position == nil) then
    position = 1
  end

  currentCampaign = campaign

  while (position <= table.getn(campaign_steps)) do
    campaign_steps[position]()
    if (GameResult == GameVictory) then
      position = position + 1
    elseif (GameResult == GameDefeat) then
    elseif (GameResult == GameDraw) then
    elseif (GameResult == GameNoResult) then
      currentCampaign = nil
      return
    else
      break -- quit to menu
    end
  end

  RunCampaignSubmenu(currentCampaign, currentRace, currentExp)

  currentCampaign = nil
end

function RunCampaignGameMenu()
	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	menu:addLabel(tales_of_nidavellir_name, offx + 320, offy + 212 - 25)
	menu:addFullButton(the_scepter_of_fire_name, "s", offx + 208, offy + 212 + (36 * 0),
		function() RunCampaignSubmenu("scripts/dwarf/campaign_the_scepter_of_fire.lua", "dwarf", ""); menu:stop() end)

	menu:addFullButton(previous_menu_name, "p", offx + 208, offy + 212 + (36 * 5),
		function() menu:stop() end)

	menu:run()
end

