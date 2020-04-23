function RunEndScenarioMenu()
	local menu = WarGameMenu(panel(1))

	menu:addLabel(_("End Mission"), 128 * get_scale_factor(), 11 * get_scale_factor())
	local b = menu:addFullButton(_("~!Restart Mission"), "r", 16 * get_scale_factor(), (40 + (36 * 0)) * get_scale_factor(),
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
	b = menu:addFullButton(_("~!Quit Mission"), "q", 16 * get_scale_factor(), (40 + (36 * 1)) * get_scale_factor(),
		function() RunQuitToMenuConfirmMenu() end)
	
	menu:addFullButton(_("E~!xit to Desktop"), "x", 16 * get_scale_factor(), (40 + (36 * 2)) * get_scale_factor(),
		function() RunExitConfirmMenu() end
	)
	menu:addFullButton(_("Previous Menu (~<Esc~>)"), "escape", 16 * get_scale_factor(), 248 * get_scale_factor(),
		function() menu:stop() end
	)

	menu:run(false)
end

function RunRestartConfirmMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel(_("Are you sure?"), 128 * get_scale_factor(), 11 * get_scale_factor())
  menu:addFullButton(_("~!Yes"), "y", 16 * get_scale_factor(), (11 + (36 * 2) + 29) * get_scale_factor(),
    function() StopGame(GameRestart); menu:stopAll() end)
  menu:addFullButton(_("~!No"), "n", 16 * get_scale_factor(), (11 + (36 * 3) + 29) * get_scale_factor(),
    function() menu:stop() end)

  menu:run(false)
end

function RunSurrenderConfirmMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel(_("Are you sure?"), 128 * get_scale_factor(), 11 * get_scale_factor())
  menu:addFullButton(_("~!Yes"), "y", 16 * get_scale_factor(), (11 + (36 * 2) + 29) * get_scale_factor(),
    function() StopGame(GameDefeat); menu:stopAll() end)
  menu:addFullButton(_("~!No"), "n", 16 * get_scale_factor(), (11 + (36 * 3) + 29) * get_scale_factor(),
    function() menu:stop() end)

  menu:run(false)
end

function RunQuitToMenuConfirmMenu()
	local menu = WarGameMenu(panel(1))

	menu:addLabel(_("Are you sure?"), 128 * get_scale_factor(), 11 * get_scale_factor())
	menu:addFullButton(_("~!Yes"), "y", 16 * get_scale_factor(), (11 + (36 * 2) + 29) * get_scale_factor(),
		function() StopMusic(); StopGame(GameQuitToMenu); Editor.Running = EditorNotRunning; menu:stopAll() end)
	menu:addFullButton(_("~!No"), "n", 16 * get_scale_factor(), (11 + (36 * 3) + 29) * get_scale_factor(),
		function() menu:stop() end)

	menu:run(false)
end

function RunExitConfirmMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel(_("Are you sure?"), 128 * get_scale_factor(), 11 * get_scale_factor())
  menu:addFullButton(_("~!Yes"), "y", 16 * get_scale_factor(), (11 + (36 * 2) + 29) * get_scale_factor(),
    function() Exit(0) end)
  menu:addFullButton(_("~!No"), "n", 16 * get_scale_factor(), (11 + (36 * 3) + 29) * get_scale_factor(),
    function() menu:stop() end)

  menu:run(false)
end
