function WarGameMenu(background)
  local menu = MenuScreen()

  if (background == nil) then
    menu:setOpaque(true)
    menu:setBaseColor(dark)
  else
    local bg = ImageWidget(background)
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
