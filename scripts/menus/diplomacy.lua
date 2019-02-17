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
		if (CPlayer:GetPlayer(i).Type ~= PlayerNobody and GetPlayerData(i, "RaceName") ~= "neutral" and CPlayer:GetThisPlayer().Index ~= i and GetPlayerData(CPlayer:GetThisPlayer().Index, "HasContactWith", i)) then
			j = j + 1

			local l = Label(_(CPlayer:GetPlayer(i).Name))
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
			alliedcb:setMarked(CPlayer:GetThisPlayer():IsAllied(CPlayer:GetPlayer(i)))
			allied[j] = alliedcb
			allied[j].index = i

			enemycb = menu:addImageCheckBox("", 186, (18 * j) + 23,
			function()
				if (alliedcb:isMarked() and enemycb:isMarked()) then
					alliedcb:setMarked(false)
				end
			end)
			enemycb:setMarked(CPlayer:GetThisPlayer():IsEnemy(i))
			enemy[j] = enemycb

			sharedvisioncb = menu:addImageCheckBox("", 276, (18 * j) + 23,
			function() end)
			sharedvisioncb:setMarked(CPlayer:GetThisPlayer():IsSharedVision(CPlayer:GetPlayer(i)))
			sharedvision[j] = sharedvisioncb
		end
	end

	menu:addHalfButton(_("~!OK"), "o", 75, 352 - 40,
	function()
		for j=1,table.getn(allied) do
			local i = allied[j].index

			-- allies
			if (allied[j]:isMarked() and enemy[j]:isMarked() == false) then
				if (CPlayer:GetThisPlayer():IsAllied(CPlayer:GetPlayer(i)) == false or
					CPlayer:GetThisPlayer():IsEnemy(i)) then
					SetDiplomacy(CPlayer:GetThisPlayer().Index, "allied", i)
				end
			end

			-- enemies
			if (allied[j]:isMarked() == false and enemy[j]:isMarked()) then
				if (CPlayer:GetThisPlayer():IsAllied(CPlayer:GetPlayer(i)) or
					CPlayer:GetThisPlayer():IsEnemy(i) == false) then
					SetDiplomacy(CPlayer:GetThisPlayer().Index, "enemy", i)
					if (CPlayer:GetPlayer(i).Type == PlayerComputer and CPlayer:GetPlayer(i):IsEnemy(GetThisPlayer()) == false) then
						SetDiplomacy(i, "enemy", CPlayer:GetThisPlayer().Index) -- Andrettin: this is added so that when the human player decides to attack computer players, computer players become enemies of the human player as well
						if (CPlayer:GetPlayer(i).Type == PlayerComputer and CPlayer:GetPlayer(i):IsSharedVision(CPlayer:GetThisPlayer())) then
							SetSharedVision(i, false, CPlayer:GetThisPlayer().Index)
						end
					end
				end
			end

			-- neutral
			if (allied[j]:isMarked() == false and enemy[j]:isMarked() == false) then
				if (CPlayer:GetThisPlayer():IsAllied(CPlayer:GetPlayer(i)) or
					CPlayer:GetThisPlayer():IsEnemy(i)) then
					SetDiplomacy(CPlayer:GetThisPlayer().Index, "neutral", i)
				end
			end

			-- crazy
			if (allied[j]:isMarked() and enemy[j]:isMarked()) then
				if (CPlayer:GetThisPlayer():IsAllied(CPlayer:GetPlayer(i)) == false or
					CPlayer:GetThisPlayer():IsEnemy(i) == false) then
					SetDiplomacy(CPlayer:GetThisPlayer().Index, "crazy", i)
				end
			end

			-- shared vision
			if (sharedvision[j]:isMarked()) then
				if (CPlayer:GetThisPlayer():IsSharedVision(CPlayer:GetPlayer(i)) == false) then
					SetSharedVision(CPlayer:GetThisPlayer().Index, true, i)
				end
			else
				if (CPlayer:GetThisPlayer():IsSharedVision(CPlayer:GetPlayer(i))) then
					SetSharedVision(CPlayer:GetThisPlayer().Index, false, i)
				end
			end
		end
		menu:stop()
	end)
	menu:addHalfButton(_("~!Cancel"), "c", 195, 352 - 40, function() menu:stop() end)

	menu:run(false)
end

