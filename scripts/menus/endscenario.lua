function RunEndScenarioMenu()
	local menu = WarGameMenu(panel(1))

	menu:addLabel("End Mission", 128, 11)
	local b = menu:addFullButton("~!Restart Mission", "r", 16, 40 + (36 * 0),
		function()
			if not (IsNetworkGame() or GrandStrategy) then
				RunRestartConfirmMenu()
			end
		end
	)
	if (IsNetworkGame() or GrandStrategy) then
		b:setEnabled(false)
	end
--	menu:addFullButton("~!Resign", "r", 16, 40 + (36 * 1),
--		function() RunSurrenderConfirmMenu() end)
	b = menu:addFullButton("~!Quit Mission", "q", 16, 40 + (36 * 1),
		function() RunQuitToMenuConfirmMenu() end)
	if (GrandStrategy) then
		b:setEnabled(false)
	end
	
	menu:addFullButton("E~!xit to Desktop", "x", 16, 40 + (36 * 2),
		function() RunExitConfirmMenu() end
	)
	menu:addFullButton("Previous Menu (~<Esc~>)", "escape", 16, 248,
		function() menu:stop() end
	)

	menu:run(false)
end

function RunRestartConfirmMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel("Are you sure?", 128, 11)
  menu:addFullButton("~!Yes", "y", 16, 11 + (36 * 2) + 29,
    function() StopGame(GameRestart); menu:stopAll() end)
  menu:addFullButton("~!No", "n", 16, 11 + (36 * 3) + 29,
    function() menu:stop() end)

  menu:run(false)
end

function RunSurrenderConfirmMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel("Are you sure?", 128, 11)
  menu:addFullButton("~!Yes", "y", 16, 11 + (36 * 2) + 29,
    function() StopGame(GameDefeat); menu:stopAll() end)
  menu:addFullButton("~!No", "n", 16, 11 + (36 * 3) + 29,
    function() menu:stop() end)

  menu:run(false)
end

function RunQuitToMenuConfirmMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel("Are you sure?", 128, 11)
  menu:addFullButton("~!Yes", "y", 16, 11 + (36 * 2) + 29,
    function() StopMusic(); StopGame(GameQuitToMenu); Editor.Running = EditorNotRunning; menu:stopAll() end)
  menu:addFullButton("~!No", "n", 16, 11 + (36 * 3) + 29,
    function() menu:stop() end)

  menu:run(false)
end

function RunExitConfirmMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel("Are you sure?", 128, 11)
  menu:addFullButton("~!Yes", "y", 16, 11 + (36 * 2) + 29,
    function() Exit(0) end)
  menu:addFullButton("~!No", "n", 16, 11 + (36 * 3) + 29,
    function() menu:stop() end)

  menu:run(false)
end

