function RunEndScenarioMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel("End Mission", 128, 11)
  local b = menu:addFullButton("~!Restart Mission", "r", 16, 40 + (36 * 0),
    function()
		if not (IsNetworkGame() or GrandStrategy) then
			RunRestartConfirmMenu()
		end
	end)
  if (IsNetworkGame() or GrandStrategy) then
    b:setEnabled(false)
  end
  menu:addFullButton("~!Resign", "r", 16, 40 + (36 * 1),
    function() RunSurrenderConfirmMenu() end)
  menu:addFullButton("~!Quit to Menu", "q", 16, 40 + (36 * 2),
    function() RunQuitToMenuConfirmMenu() end)
  menu:addFullButton("E~!xit to Desktop", "x", 16, 40 + (36 * 3),
    function() RunExitConfirmMenu() end)
  menu:addFullButton("Previous (~<Esc~>)", "escape", 16, 248,
    function() menu:stop() end)

  menu:run(false)
end

function RunRestartConfirmMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel("Do you really", 128, 11)
  menu:addLabel("want to restart?", 128, 11 + (24 * 1))
  menu:addFullButton("~!Restart Mission", "r", 16, 11 + (24 * 3) + 29,
    function() StopGame(GameRestart); menu:stopAll() end)
  menu:addFullButton("Cancel (~<Esc~>)", "escape", 16, 248,
    function() menu:stop() end)

  menu:run(false)
end

function RunSurrenderConfirmMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel("Do you really", 128, 11)
  menu:addLabel("wish to resign?", 128, 11 + (24 * 1))
  menu:addFullButton("~!Resign", "r", 16, 11 + (24 * 3) + 29,
    function() StopGame(GameDefeat); menu:stopAll() end)
  menu:addFullButton("Cancel (~<Esc~>)", "escape", 16, 248,
    function() menu:stop() end)

  menu:run(false)
end

function RunQuitToMenuConfirmMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel("Do you really", 128, 11)
  menu:addLabel("want to quit to", 128, 11 + (24 * 1))
  menu:addLabel("the main menu?", 128, 11 + (24 * 2))
  menu:addFullButton("~!Quit to Menu", "q", 16, 11 + (24 * 3) + 29,
    function() StopMusic(); StopGame(GameQuitToMenu); Editor.Running = EditorNotRunning; menu:stopAll() end)
  menu:addFullButton("Cancel (~<Esc~>)", "escape", 16, 248,
    function() menu:stop() end)

  menu:run(false)
end

function RunExitConfirmMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel("Do you really", 128, 11)
  menu:addLabel("want to exit", 128, 11 + (24 * 1))
  menu:addLabel("the game?", 128, 11 + (24 * 2))
  menu:addFullButton("E~!xit", "x", 16, 11 + (24 * 3) + 29,
    function() Exit(0) end)
  menu:addFullButton("Cancel (~<Esc~>)", "escape", 16, 248,
    function() menu:stop() end)

  menu:run(false)
end

