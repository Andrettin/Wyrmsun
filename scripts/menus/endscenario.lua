function RunEndScenarioMenu()
	local menu = WarGameMenu(panel(1))

	menu:addLabel(_("End Mission"), 128, 11)
	local b = menu:addFullButton(_("~!Restart Mission"), "r", 16, 40 + (36 * 0),
		function()
			if not (IsNetworkGame()) then
				RunRestartConfirmMenu()
			end
		end
	)
	if (IsNetworkGame()) then
		b:setEnabled(false)
	end
--	menu:addFullButton("~!Resign", "r", 16, 40 + (36 * 1),
--		function() RunSurrenderConfirmMenu() end)
	b = menu:addFullButton(_("~!Quit Mission"), "q", 16, 40 + (36 * 1),
		function() RunQuitToMenuConfirmMenu() end)
	
	menu:addFullButton(_("E~!xit to Desktop"), "x", 16, 40 + (36 * 2),
		function() RunExitConfirmMenu() end
	)
	menu:addFullButton(_("Previous Menu (~<Esc~>)"), "escape", 16, 248,
		function() menu:stop() end
	)

	menu:run(false)
end

function RunRestartConfirmMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel(_("Are you sure?"), 128, 11)
  menu:addFullButton(_("~!Yes"), "y", 16, 11 + (36 * 2) + 29,
    function() StopGame(GameRestart); menu:stopAll() end)
  menu:addFullButton(_("~!No"), "n", 16, 11 + (36 * 3) + 29,
    function() menu:stop() end)

  menu:run(false)
end

function RunSurrenderConfirmMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel(_("Are you sure?"), 128, 11)
  menu:addFullButton(_("~!Yes"), "y", 16, 11 + (36 * 2) + 29,
    function() StopGame(GameDefeat); menu:stopAll() end)
  menu:addFullButton(_("~!No"), "n", 16, 11 + (36 * 3) + 29,
    function() menu:stop() end)

  menu:run(false)
end

function RunQuitToMenuConfirmMenu()
	local menu = WarGameMenu(panel(1))

	menu:addLabel(_("Are you sure?"), 128, 11)
	menu:addFullButton(_("~!Yes"), "y", 16, 11 + (36 * 2) + 29,
		function() StopMusic(); StopGame(GameQuitToMenu); Editor.Running = EditorNotRunning; menu:stopAll() end)
	menu:addFullButton(_("~!No"), "n", 16, 11 + (36 * 3) + 29,
		function() menu:stop() end)

	menu:run(false)
end

function RunExitConfirmMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel(_("Are you sure?"), 128, 11)
  menu:addFullButton(_("~!Yes"), "y", 16, 11 + (36 * 2) + 29,
    function() Exit(0) end)
  menu:addFullButton(_("~!No"), "n", 16, 11 + (36 * 3) + 29,
    function() menu:stop() end)

  menu:run(false)
end

