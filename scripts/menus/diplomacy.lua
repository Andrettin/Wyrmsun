function RunDiplomacyMenu()
	local menu = WarGameMenu(panel(5))
	menu:resize(352 * get_scale_factor(), 352 * get_scale_factor())

	menu:addLabel(_("Diplomacy"), 176 * get_scale_factor(), 11 * get_scale_factor())

	menu:addLabel(_("Allied"), 152 * get_scale_factor(), 30 * get_scale_factor(), Fonts["game"])
	menu:addLabel(_("Enemy"), 212 * get_scale_factor(), 30 * get_scale_factor(), Fonts["game"])
	menu:addLabel(_("Shared Vision"), 286 * get_scale_factor(), 30 * get_scale_factor(), Fonts["game"])

	local allied = {}
	local enemy = {}
	local sharedvision = {}
	local j = 0

	for i=0,(PlayerMax - 2) do
		if (GetPlayerData(i, "Type") ~= PlayerNobody and GetPlayerData(i, "RaceName") ~= "neutral" and GetThisPlayer() ~= i and GetPlayerData(GetThisPlayer(), "HasContactWith", i)) then
			j = j + 1

			local l = Label(_(GetPlayerData(i, "Name")))
			l:setFont(Fonts["game"])
			l:adjustSize()
			menu:add(l, 16 * get_scale_factor(), ((18 * j) + 32) * get_scale_factor())

			-- FIXME: disable checkboxes in replays or if on the same team

			local alliedcb = {}
			local enemycb = {}
			local sharedvisioncb = {}

			alliedcb = menu:addImageCheckBox("", 142 * get_scale_factor(), ((18 * j) + 32) * get_scale_factor(),
			function()
				if (alliedcb:isMarked() and enemycb:isMarked()) then
					enemycb:setMarked(false)
				end
			end)
			alliedcb:setMarked(GetPlayerData(GetThisPlayer(), "IsAllied", i))
			allied[j] = alliedcb
			allied[j].index = i

			enemycb = menu:addImageCheckBox("", 202 * get_scale_factor(), ((18 * j) + 32) * get_scale_factor(),
			function()
				if (alliedcb:isMarked() and enemycb:isMarked()) then
					alliedcb:setMarked(false)
				end
			end)
			enemycb:setMarked(GetPlayerData(GetThisPlayer(), "IsEnemy", i))
			enemy[j] = enemycb

			sharedvisioncb = menu:addImageCheckBox("", 276 * get_scale_factor(), ((18 * j) + 32) * get_scale_factor(),
			function() end)
			sharedvisioncb:setMarked(GetPlayerData(GetThisPlayer(), "HasSharedVisionWith", i))
			sharedvision[j] = sharedvisioncb
		end
	end

	menu:addHalfButton(_("~!OK"), "o", 75 * get_scale_factor(), (352 - 40) * get_scale_factor(),
	function()
		for j=1,table.getn(allied) do
			local i = allied[j].index

			-- allies
			if (allied[j]:isMarked() and enemy[j]:isMarked() == false) then
				if (GetPlayerData(GetThisPlayer(), "IsAllied", i) == false or
					GetPlayerData(GetThisPlayer(), "IsEnemy", i)) then
					SetDiplomacy(GetThisPlayer(), "allied", i)
				end
			end

			-- enemies
			if (allied[j]:isMarked() == false and enemy[j]:isMarked()) then
				if (GetPlayerData(GetThisPlayer(), "IsAllied", i) or GetPlayerData(GetThisPlayer(), "IsEnemy", i) == false) then
					SetDiplomacy(GetThisPlayer(), "enemy", i)
					if (GetPlayerData(i, "Type") == PlayerComputer and GetPlayerData(i, "IsEnemy", GetThisPlayer()) == false) then
						SetDiplomacy(i, "enemy", GetThisPlayer()) -- Andrettin: this is added so that when the human player decides to attack computer players, computer players become enemies of the human player as well
						if (GetPlayerData(i, "Type") == PlayerComputer and GetPlayerData(i, "HasSharedVisionWith", GetThisPlayer())) then
							SetSharedVision(i, false, GetThisPlayer())
						end
					end
				end
			end

			-- neutral
			if (allied[j]:isMarked() == false and enemy[j]:isMarked() == false) then
				if (GetPlayerData(GetThisPlayer(), "IsAllied", i) or
					GetPlayerData(GetThisPlayer(), "IsEnemy", i)) then
					SetDiplomacy(GetThisPlayer(), "neutral", i)
				end
			end

			-- crazy
			if (allied[j]:isMarked() and enemy[j]:isMarked()) then
				if (GetPlayerData(GetThisPlayer(), "IsAllied", i) == false or
					GetPlayerData(GetThisPlayer(), "IsEnemy", i) == false) then
					SetDiplomacy(GetThisPlayer(), "crazy", i)
				end
			end

			-- shared vision
			if (sharedvision[j]:isMarked()) then
				if (GetPlayerData(GetThisPlayer(), "HasSharedVisionWith", i) == false) then
					SetSharedVision(GetThisPlayer(), true, i)
				end
			else
				if (GetPlayerData(GetThisPlayer(), "HasSharedVisionWith", i)) then
					SetSharedVision(GetThisPlayer(), false, i)
				end
			end
		end
		menu:stop()
	end)
	menu:addHalfButton(_("~!Cancel"), "c", 195 * get_scale_factor(), (352 - 40) * get_scale_factor(), function() menu:stop() end)

	menu:run(false)
end

