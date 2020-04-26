function RunSaveGame(name, menu)
	HexTiles = nil
	HexTiles = {}
	RawTiles = nil
	RawTiles = {}
	LoadedGame = true
	local saved_globals = {}
	saved_globals.Achievements = copy(Achievements)
	saved_globals.Preferences = copy(wyr.preferences)
	Achievements = nil
	wyr.preferences = nil
	if (menu ~= nil) then
		if (SaveGame(name) == -1) then
			local confirm = WarGameMenu(panel(4))
			confirm:resize(288 * get_scale_factor(), 128 * get_scale_factor())
			confirm:addLabel(_("Cannot save game to file:"), 288 / 2 * get_scale_factor(), 11 * get_scale_factor())
			confirm:addLabel(name, 288 / 2 * get_scale_factor(), 31 * get_scale_factor())
			confirm:addHalfButton(_("~!OK"), "o", 1 * (288 / 3) * get_scale_factor(), (128 - 16 - 27) * get_scale_factor(), function() confirm:stop() end)
			confirm:run(false)
		else
			UI.StatusLine:Set(_("Saved game to:") .. " " .. name)
			menu:stop()
		end
	else
		SaveGame(name)
	end
	Achievements = copy(saved_globals.Achievements)
	wyr.preferences = copy(saved_globals.Preferences)
	LoadedGame = false
end

function RunConfirmErase(name, menu)
  local confirm = WarGameMenu(panel(4))

  confirm:resize(288 * get_scale_factor(),128 * get_scale_factor())

  confirm:addLabel(name, 288 / 2 * get_scale_factor(), 11 * get_scale_factor())
  confirm:addLabel(_("File exists, are you sure?"), 288 / 2 * get_scale_factor(), 31 * get_scale_factor())

  confirm:addHalfButton(_("~!Yes"), "y", (1 * (288 / 3) - 90) * get_scale_factor(), (128 - 16 - 27) * get_scale_factor(),
    function()
        confirm:stop()
        RunSaveGame(name, menu)
    end)

  confirm:addHalfButton(_("~!No"), "n", (3 * (288 / 3) - 116) * get_scale_factor(), (128 - 16 - 27) * get_scale_factor(),
    function() confirm:stop() end)

  confirm:run(false)
end

function RunSaveMenu()
  local menu = WarGameMenu(panel(3))
  menu:resize(384 * get_scale_factor(), 256 * get_scale_factor())

  menu:addLabel(_("Save Game"), 384 / 2 * get_scale_factor(), 11 * get_scale_factor())

  local t = menu:addTextInputField("game.sav",
    (384 - 300 - 18) / 2 * get_scale_factor(), (11 + 24) * get_scale_factor(), 318 * get_scale_factor())

  local browser = menu:addBrowser("~save", ".sav.gz$",
    (384 - 300 - 18) / 2 * get_scale_factor(), (11 + 24 + 22) * get_scale_factor(), 318 * get_scale_factor(), 126 * get_scale_factor())
  local function cb(s)
    t:setText(browser:getSelectedItem())
  end
  browser:setActionCallback(cb)

  menu:addHalfButton(_("~!Save"), "s", (384 - 300 - 18) / 2 * get_scale_factor(), (256 - 16 - 27) * get_scale_factor(),
    function()
      local name = t:getText()
      -- check for an empty string
      if (string.len(name) == 0) then
        return
      end
      -- strip .gz
      if (string.find(name, ".gz$") ~= nil) then
        name = string.sub(name, 1, string.len(name) - 3)
      end
      -- append .sav
      if (string.find(name, ".sav$") == nil) then
        name = name .. ".sav"
      end
      -- replace invalid chars with underscore
      local t = {"\\", "/", ":", "*", "?", "\"", "<", ">", "|"}
      table.foreachi(t, function(k,v) name = string.gsub(name, v, "_") end)

      if (browser:exists(name .. ".gz")) then
        RunConfirmErase(name, menu)
      else
        RunSaveGame(name, menu)
      end
    end)

	local sortByCheckBox
	sortByCheckBox = menu:addImageCheckBox(_("Show Latest First"), (384 - 300 - 18) / 2 * get_scale_factor(), (256 - 16 - 27 - 25) * get_scale_factor(),
	function()
		wyr.preferences.SortSaveGamesByTime = sortByCheckBox:isMarked()
		SavePreferences()

		if (wyr.preferences.SortSaveGamesByTime) then
			browser:sortByTime()
		else
			browser:sortByName()
		end
	end)
	sortByCheckBox:setMarked(wyr.preferences.SortSaveGamesByTime)
	if (wyr.preferences.SortSaveGamesByTime) then
		browser:sortByTime()
	end

	menu:addHalfButton(_("~!Cancel"), "c", (384 - ((384 - 300 - 18) / 2) - 106) * get_scale_factor(), (256 - 16 - 27) * get_scale_factor(),
		function() menu:stop() end)

	menu:run(false)
end

