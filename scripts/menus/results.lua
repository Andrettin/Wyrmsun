
function RunResultsMenu()
	local background
	local result
	
	if (GameResult == GameVictory) then
		result = "Victory!"
		if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
			background = GetBackground("ui/backgrounds/yale.png")
			PlayMusic("music/victory.ogg")
		elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "gnome") then
			background = GetBackground("ui/backgrounds/yale.png")
			PlayMusic("music/victory.ogg")
		elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "kobold") then
			background = GetBackground("ui/backgrounds/wyrm.png")
			PlayMusic("music/victory.ogg")
		else
			background = GetBackground("ui/backgrounds/gryphon.png")
			PlayMusic("music/victory.ogg")
		end
	elseif (GameResult == GameDefeat) then
		result = "Defeat!"
		if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
			background = GetBackground("ui/backgrounds/wyrm.png")
			PlayMusic("music/defeat2.ogg")
		elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "gnome") then
			background = GetBackground("ui/backgrounds/wyrm.png")
			PlayMusic("music/defeat2.ogg")
		elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "goblin") then
			background = GetBackground("ui/backgrounds/yale.png")
			PlayMusic("music/defeat.ogg")
		elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "kobold") then
			background = GetBackground("ui/backgrounds/yale.png")
			PlayMusic("music/defeat.ogg")
		elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "germanic" or GetPlayerData(GetThisPlayer(), "RaceName") == "teuton") then
			background = GetBackground("ui/backgrounds/wyrm.png")
			PlayMusic("music/defeat.ogg")
		else
			background = GetBackground("ui/backgrounds/wyrm.png")
			PlayMusic("music/defeat.ogg")
		end
	elseif (GameResult == GameDraw) then
		result = "Draw!"
		if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
			background = ddefeat
		else
			background = ddefeat
		end
	else
		return -- quit to menu
	end

	local menu = WarMenu(nil, background)
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

--	local names_font = Fonts["small-title"]
	local names_font = Fonts["large"]
	local top_offset = 57
	local bottom_offset = 178
	local description_offset = 30

	local c = 0
	for i=0,7 do
		if (GetPlayerData(i, "TotalUnits") > 0 and Players[i].Type ~= PlayerRescuePassive and Players[i].Type ~= PlayerRescueActive) then
			c = c + 1
		end
	end

	local line_spacing = (432 - bottom_offset - description_offset) / c
	local player_name_spacing = 104 / c
	menu:addLabel("Outcome", offx + 106, offy + top_offset)
--	menu:addLabel(result, offx + 106, offy + top_offset + 21, Fonts["large-title"])
	menu:addLabel(result, offx + 106, offy + top_offset + 21, Fonts["large"])

	if (GrandStrategy and GrandStrategyEventMap == false) then
		menu:addLabel("Province", Video.Width - offx - 106, offy + top_offset)
--		menu:addLabel(GetProvinceName(AttackedProvince), Video.Width - offx - 106, offy + top_offset + 21, Fonts["large-title"])
		menu:addLabel(GetProvinceName(AttackedProvince), Video.Width - offx - 106, offy + top_offset + 21, Fonts["large"])
	end
	menu:addLabel("Units", offx + 50, offy + bottom_offset, Fonts["large"], true)
	menu:addLabel("Buildings", offx + 140, offy + bottom_offset, Fonts["large"], true)
	menu:addLabel("Gold", offx + 230, offy + bottom_offset, Fonts["large"], true)
	menu:addLabel("Lumber", offx + 320, offy + bottom_offset, Fonts["large"], true)
	menu:addLabel("Stone", offx + 410, offy + bottom_offset, Fonts["large"], true)
--	menu:addLabel("Oil", offx + 410, offy + bottom_offset, Fonts["large"], true)
	menu:addLabel("Kills", offx + 500, offy + bottom_offset, Fonts["large"], true)
	menu:addLabel("Razings", offx + 590, offy + bottom_offset, Fonts["large"], true)

	c = 0
	for i=0,7 do
		if (GetPlayerData(i, "TotalUnits") > 0 and Players[i].Type ~= PlayerRescuePassive and Players[i].Type ~= PlayerRescueActive) then
			local name = _(GetPlayerData(i, "Name"))
			if (ThisPlayer.Index == i) then
				name = name .. " - You"
			elseif (ThisPlayer:IsAllied(Players[i])) then
				name = name .. " - Ally"
			elseif (ThisPlayer:IsEnemy(Players[i])) then
				name = name .. " - Enemy"
			else
				name = name .. " - Neutral"
			end
			menu:addLabel(name, offx + 320,
				offy + bottom_offset + description_offset + player_name_spacing + line_spacing * c + 5,
				names_font, true)
			menu:addLabel(GetPlayerData(i, "TotalUnits"), offx + 10 + 40,
				offy + bottom_offset + description_offset + line_spacing * c + 5,
				Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalBuildings"), offx + 100 + 40,
				offy + bottom_offset + description_offset + line_spacing * c + 5,
				Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalResources", "gold"), offx + 190 + 40,
				offy + bottom_offset + description_offset + line_spacing * c + 5,
				Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalResources", "lumber"), offx + 280 + 40,
				offy + bottom_offset + description_offset + line_spacing * c + 5,
				Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalResources", "stone"), offx + 370 + 40,
				offy + bottom_offset + description_offset + line_spacing * c + 5,
				Fonts["large"], true)
--			menu:addLabel(GetPlayerData(i, "TotalResources", "oil"), offx + 370 + 40,
--				offy + bottom_offset + description_offset + line_spacing * c + 5,
--			  Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalKills"), offx + 460 + 40,
				offy + bottom_offset + description_offset + line_spacing * c + 5,
				Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalRazings"), offx + 550 + 40,
				offy + bottom_offset + description_offset + line_spacing * c + 5,
				Fonts["large"], true)

			c = c + 1
		end
	end

--	menu:addFullButton("~!Save Replay", "s", offx + 150, offy + 440,
--		function() RunSaveReplayMenu() end)

--	menu:addFullButton(_("~!Continue"), "c", offx + 400, offy + 440,
	menu:addFullButton(_("~!Continue"), "c", (Video.Width / 2) - 112, offy + 440,
		function() StopMusic(); menu:stop() end)

	menu:run()
end
