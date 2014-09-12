function LoadGame(s)
  LoadGameFile = nil
  local loop = true

  while (loop) do
    InitGameVariables()
    CleanRawTiles()
    LoadedGame = true
    StartSavedGame(s)
    if (GameResult ~= GameRestart) then
      loop = false
    end
  end

  RunResultsMenu()

  InitGameSettings()
  SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
end

function AddLoadGameItems(menu)
  menu:addLabel(load_game_name, 384 / 2, 11)
  local browser = menu:addBrowser("~save", "^.*%.sav%.?g?z?$",
    (384 - 300 - 18) / 2, 11 + (36 * 1.5), 318, 126)

  menu:addHalfButton(load_name, "l", (384 - 300 - 18) / 2, 256 - 16 - 27,
    function()
      if (browser:getSelected() < 0) then
        return
      end
      LoadGameFile = "~save/" .. browser:getSelectedItem()
      if (menu.ingame) then
        StopGame(GameNoResult)
        menu:stopAll()
      else
        menu:stop()
      end
    end)
  menu:addHalfButton(cancel_name, "c", 384 - ((384 - 300 - 18) / 2) - 106, 256 - 16 - 27,
    function() menu:stop() end)
end

function RunLoadGameMenu()
  local menu = WarMenu(nil, panel(3), false)
  menu:setSize(384, 256)
  menu:setPosition((Video.Width - 384) / 2, (Video.Height - 256) / 2)
  menu:setDrawMenusUnder(true)

  AddLoadGameItems(menu)

  menu.ingame = false
  menu:run()
end

function RunGameLoadGameMenu()
  local menu = WarGameMenu(panel(3))
  menu:resize(384, 256)
  menu:setDrawMenusUnder(true)

  AddLoadGameItems(menu)

  menu.ingame = true
  menu:run(false)
end

