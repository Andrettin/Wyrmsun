function WarGameMenu(background)
  local menu = MenuScreen()

  if (background == nil) then
    menu:setOpaque(true)
    menu:setBaseColor(dark)
  else
    local bgg = CGraphic:New(background)
    bgg:Load()
    local bg = ImageWidget(bgg)
    menu:add(bg, 0, 0)
  end

  function menu:resize(w, h)
    menu:setSize(w, h)
    menu:setPosition((Video.Width - menu:getWidth()) / 2,
      (Video.Height - menu:getHeight()) / 2)
  end

  menu:resize(256, 288)
--  menu:setBorderSize(1)
  menu:setDrawMenusUnder(true)

  AddMenuHelpers(menu)

  return menu
end



function RunGameMenu()
	local menu = WarGameMenu(panel(1))

	menu:addLabel("Game Menu", 128, 11)

	menu:addFullButton("Options (~<F5~>)", "f5", 16, 40,
		function()
		RunGameOptionsMenu(menu)
	end)
	menu:addFullButton("Help (~<F1~>)", "f1", 16, 40 + 34*1,
		function() RunHelpMenu() end)
	menu:addFullButton("~!Objectives", "o", 16, 40 + 34*2,
		function() RunObjectivesMenu() end)
		
	local b = menu:addFullButton("Save (~<F11~>)", "f11", 16, 40 + 34*3,
		function() RunSaveMenu() end
	)
 
	b = menu:addFullButton("Load (~<F12~>)", "f12", 16, 40 + 34*4,
		function() RunGameLoadGameMenu() end
	)
	
	menu:addFullButton("~!End Mission", "e", 16, 40 + 34*5,
		function() RunEndScenarioMenu() end)
	menu:addFullButton("Return to Game (~<Esc~>)", "escape", 16, 40 + 34*6,
		function() menu:stop() end)

	menu:run(false)
end

