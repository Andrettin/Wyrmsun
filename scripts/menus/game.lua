function WarGameMenu(background)
  local menu = MenuScreen()

  if (background == nil) then
    menu:setOpaque(true)
    menu:setBaseColor(dark)
  else
    local bgg = CGraphic:New(background)
    bgg:Load(false, get_scale_factor())
    local bg = ImageWidget(bgg)
    menu:add(bg, 0, 0)
  end

  function menu:resize(w, h)
    menu:setSize(w, h)
    menu:setPosition((Video.Width - menu:getWidth()) / 2,
      (Video.Height - menu:getHeight()) / 2)
  end

  menu:resize(256 * get_scale_factor(), 288 * get_scale_factor())
--  menu:setBorderSize(1)
  menu:setDrawMenusUnder(true)

  AddMenuHelpers(menu)

  return menu
end



function RunGameMenu()
	local menu = WarGameMenu(panel(1))

	menu:addLabel(_("Game Menu"), 128, 11)

	menu:addFullButton(_("Options (~<F5~>)"), "f5", 16, 40,
		function()
		RunGameOptionsMenu(menu)
	end)
	menu:addFullButton(_("Help (~<F1~>)"), "f1", 16, 40 + 34*1,
		function() RunHelpMenu() end)
	local b = menu:addFullButton(_("Save (~<F11~>)"), "f11", 16, 40 + 34*2,
		function() RunSaveMenu() end
	)
 
	b = menu:addFullButton(_("Load (~<F12~>)"), "f12", 16, 40 + 34*3,
		function() RunGameLoadGameMenu() end
	)
	
	menu:addFullButton(_("~!End Mission"), "e", 16, 40 + 34*4,
		function() RunEndScenarioMenu() end)
	menu:addFullButton(_("Return to Game (~<Esc~>)"), "escape", 16, 40 + 34*5,
		function() menu:stop() end)

	menu:run(false)
end

