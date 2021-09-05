function RunSaveGame(filepath)
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
	if (SaveGame(filepath) == -1) then
		local confirm = WarGameMenu(panel(4))
		confirm:resize(288 * get_scale_factor(), 128 * get_scale_factor())
		confirm:addLabel(_("Cannot save game to file:"), 288 / 2 * get_scale_factor(), 11 * get_scale_factor())
		confirm:addLabel(filepath, 288 / 2 * get_scale_factor(), 31 * get_scale_factor())
		confirm:addHalfButton(_("~!OK"), "o", 1 * (288 / 3) * get_scale_factor(), (128 - 16 - 27) * get_scale_factor(), function() confirm:stop() end)
		confirm:run(false)
	else
		CUserInterface:get().StatusLine:Set(_("Saved game"))
	end
	Achievements = copy(saved_globals.Achievements)
	wyr.preferences = copy(saved_globals.Preferences)
	LoadedGame = false
end
