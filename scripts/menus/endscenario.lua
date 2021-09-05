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
		function() play_menu_music(); StopGame(GameQuitToMenu); CEditor:get():set_running(false); menu:stopAll() end)
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
