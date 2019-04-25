function RunDiplomacyMenu()
	local menu = WarGameMenu(panel(5))
	menu:resize(352, 352)

	menu:addLabel(_("Diplomacy"), 176, 11)

	menu:addLabel(_("Allied"), 136, 30, Fonts["game"])
	menu:addLabel(_("Enemy"), 196, 30, Fonts["game"])
	menu:addLabel(_("Shared Vision"), 286, 30, Fonts["game"])

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
			menu:add(l, 16, (18 * j) + 26)

			-- FIXME: disable checkboxes in replays or if on the same team

			local alliedcb = {}
			local enemycb = {}
			local sharedvisioncb = {}

			alliedcb = menu:addImageCheckBox("", 126, (18 * j) + 23,
			function()
				if (alliedcb:isMarked() and enemycb:isMarked()) then
					enemycb:setMarked(false)
				end
			end)
			alliedcb:setMarked(GetPlayerData(GetThisPlayer(), "IsAllied", i))
			allied[j] = alliedcb
			allied[j].index = i

			enemycb = menu:addImageCheckBox("", 186, (18 * j) + 23,
			function()
				if (alliedcb:isMarked() and enemycb:isMarked()) then
					alliedcb:setMarked(false)
				end
			end)
			enemycb:setMarked(GetPlayerData(GetThisPlayer(), "IsEnemy", i))
			enemy[j] = enemycb

			sharedvisioncb = menu:addImageCheckBox("", 276, (18 * j) + 23,
			function() end)
			sharedvisioncb:setMarked(GetPlayerData(GetThisPlayer(), "IsSharedVision", i))
			sharedvision[j] = sharedvisioncb
		end
	end

	menu:addHalfButton(_("~!OK"), "o", 75, 352 - 40,
	function()
		for j=1,table.getn(allied) do
			local i = allied[j].index

			-- allies
			if (allied[j]:isMarked() and enemy[j]:isMarked() == false) then
				if (GetPlayerData(GetThisPlayer(), "IsAllied", i) == false or GetPlayerData(GetThisPlayer(), "IsEnemy", i)) then
					SetDiplomacy(GetThisPlayer(), "allied", i)
				end
			end

			-- enemies
			if (allied[j]:isMarked() == false and enemy[j]:isMarked()) then
				if (GetPlayerData(GetThisPlayer(), "IsAllied", i) or GetPlayerData(GetThisPlayer(), "IsEnemy", i) == false) then
					SetDiplomacy(GetThisPlayer(), "enemy", i)
					if (GetPlayerData(i, "Type") == PlayerComputer and GetPlayerData(i, "IsEnemy", GetThisPlayer()) == false) then
						SetDiplomacy(i, "enemy", GetThisPlayer()) -- Andrettin: this is added so that when the human player decides to attack computer players, computer players become enemies of the human player as well
						if (GetPlayerData(i, "Type") == PlayerComputer and GetPlayerData(i, "IsSharedVision", GetThisPlayer())) then
							SetSharedVision(i, false, GetThisPlayer())
						end
					end
				end
			end

			-- neutral
			if (allied[j]:isMarked() == false and enemy[j]:isMarked() == false) then
				if (GetPlayerData(GetThisPlayer(), "IsAllied", i) or GetPlayerData(GetThisPlayer(), "IsEnemy", i)) then
					SetDiplomacy(GetThisPlayer(), "neutral", i)
				end
			end

			-- crazy
			if (allied[j]:isMarked() and enemy[j]:isMarked()) then
				if (GetPlayerData(GetThisPlayer(), "IsAllied", i) == false or GetPlayerData(GetThisPlayer(), "IsEnemy", i) == false) then
					SetDiplomacy(GetThisPlayer(), "crazy", i)
				end
			end

			-- shared vision
			if (sharedvision[j]:isMarked()) then
				if (GetPlayerData(GetThisPlayer(), "IsSharedVision", i) == false) then
					SetSharedVision(GetThisPlayer(), true, i)
				end
			else
				if (GetPlayerData(GetThisPlayer(), "IsSharedVision", i)) then
					SetSharedVision(GetThisPlayer(), false, i)
				end
			end
		end
		menu:stop()
	end)
	menu:addHalfButton(_("~!Cancel"), "c", 195, 352 - 40, function() menu:stop() end)

	menu:run(false)
end

