results_menu = nil

function RunResultsMenu()
	if (GameResult == GameVictory) then
	elseif (GameResult == GameDefeat) then
	elseif (GameResult == GameDraw) then
	else
		return -- quit to menu
	end

	local menu = WarMenu(nil, nil)
	results_menu = menu
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2

--	local names_font = Fonts["small-title"]
	local names_font = Fonts["large"]
	local top_offset = 57 * get_scale_factor()
	local bottom_offset = 178 * get_scale_factor()
	local description_offset = 30 * get_scale_factor()

	local c = 0
	for i=0,7 do
		if (GetPlayerData(i, "TotalUnits") > 0 and CPlayer:GetPlayer(i).Type ~= PlayerRescuePassive and CPlayer:GetPlayer(i).Type ~= PlayerRescueActive) then
			c = c + 1
		end
	end

	local line_spacing = (432 * get_scale_factor() - bottom_offset - description_offset) / c
	local player_name_spacing = 104 * get_scale_factor() / c

	menu:addLabel(_("Units"), offx + 50 * get_scale_factor(), offy + bottom_offset, Fonts["large"], true)
	menu:addLabel(_("Buildings"), offx + 140 * get_scale_factor(), offy + bottom_offset, Fonts["large"], true)
	menu:addLabel(_("Copper"), offx + 230 * get_scale_factor(), offy + bottom_offset, Fonts["large"], true)
	menu:addLabel(_("Lumber"), offx + 320 * get_scale_factor(), offy + bottom_offset, Fonts["large"], true)
	menu:addLabel(_("Stone"), offx + 410 * get_scale_factor(), offy + bottom_offset, Fonts["large"], true)
--	menu:addLabel("Oil", offx + 410, offy + bottom_offset, Fonts["large"], true)
	menu:addLabel(_("Kills"), offx + 500 * get_scale_factor(), offy + bottom_offset, Fonts["large"], true)
	menu:addLabel(_("Razings"), offx + 590 * get_scale_factor(), offy + bottom_offset, Fonts["large"], true)

	c = 0
	for i=0,(PlayerMax - 2) do
		if (GetPlayerData(i, "TotalUnits") > 0 and CPlayer:GetPlayer(i).Type ~= PlayerRescuePassive and CPlayer:GetPlayer(i).Type ~= PlayerRescueActive and GetPlayerData(CPlayer:GetThisPlayer().Index, "HasContactWith", i)) then
			local name = _(GetPlayerData(i, "Name"))
			if (CPlayer:GetThisPlayer().Index == i) then
				name = name .. " - " .. _("You")
			elseif (CPlayer:GetThisPlayer():IsAllied(CPlayer:GetPlayer(i))) then
				name = name .. " - " .. _("Ally")
			elseif (CPlayer:GetThisPlayer():IsEnemy(CPlayer:GetPlayer(i))) then
				name = name .. " - " .. _("Enemy")
			else
				name = name .. " - " .. _("Neutral")
			end
			menu:addLabel(name, offx + 320 * get_scale_factor(),
				offy + bottom_offset + description_offset + player_name_spacing + line_spacing * c + 5 * get_scale_factor(),
				names_font, true)
			menu:addLabel(GetPlayerData(i, "TotalUnits"), offx + (10 + 40) * get_scale_factor(),
				offy + bottom_offset + description_offset + line_spacing * c + 5 * get_scale_factor(),
				Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalBuildings"), offx + (100 + 40) * get_scale_factor(),
				offy + bottom_offset + description_offset + line_spacing * c + 5 * get_scale_factor(),
				Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalResources", "copper"), offx + (190 + 40) * get_scale_factor(),
				offy + bottom_offset + description_offset + line_spacing * c + 5 * get_scale_factor(),
				Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalResources", "lumber"), offx + (280 + 40) * get_scale_factor(),
				offy + bottom_offset + description_offset + line_spacing * c + 5 * get_scale_factor(),
				Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalResources", "stone"), offx + (370 + 40) * get_scale_factor(),
				offy + bottom_offset + description_offset + line_spacing * c + 5 * get_scale_factor(),
				Fonts["large"], true)
--			menu:addLabel(GetPlayerData(i, "TotalResources", "oil"), offx + 370 + 40,
--				offy + bottom_offset + description_offset + line_spacing * c + 5,
--			  Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalKills"), offx + (460 + 40) * get_scale_factor(),
				offy + bottom_offset + description_offset + line_spacing * c + 5 * get_scale_factor(),
				Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalRazings"), offx + (550 + 40) * get_scale_factor(),
				offy + bottom_offset + description_offset + line_spacing * c + 5 * get_scale_factor(),
				Fonts["large"], true)

			c = c + 1
			
			if (c >= 8) then
				break
			end
		end
	end
	
	menu:run()
end
