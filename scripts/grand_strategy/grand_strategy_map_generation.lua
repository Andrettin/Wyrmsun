--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      grand_strategy_map_generation.lua - Defines the grand strategy map generation scripts.
--
--      (c) Copyright 2015 by Andrettin
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

function GenerateRandomWorldMap()
	WorldMapTiles = {}
	TileProvinces = {}
	
	local world_map_width = 128
	local world_map_height = 64
	
	for y=1,world_map_height do
		WorldMapTiles[y] = {}
		TileProvinces[y] = {}
		for x=1,world_map_width do
			WorldMapTiles[y][x] = ""
			TileProvinces[y][x] = ""
		end
	end
	
	-- set map water borders
	for y=0,(world_map_height - 1) do -- to make the map seem wrap around the horizontal edges
		SetWorldMapTile(0, y, "Watr")
		SetWorldMapTile((world_map_width - 1), y, "Watr")
	end

	local mountain_seeds = {}
	local hill_seeds = {}
	local plains_seeds = {}
	
	for i=1,5 do -- 5 mountain seeds
		for j=1,100 do -- 100 attempts to get a suitable location
			local RandomX = SyncRand(world_map_width)
			local RandomY = SyncRand(world_map_height)
			if (GetWorldMapTile(RandomX, RandomY) == "") then
				SetWorldMapTile(RandomX, RandomY, "Mntn")
				table.insert(mountain_seeds, {RandomX, RandomY})
				break
			end
		end
	end

	for i=1,50 do
		local new_mountain_seeds = {}
		for j=1,table.getn(mountain_seeds) do
			for x_offset=-1,1 do
				for y_offset=-1,1 do
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTile(mountain_seeds[j][1] + x_offset, mountain_seeds[j][2] + y_offset) == "") then
						local RandomNumber = SyncRand(100)
						if (RandomNumber < 50) then
							SetWorldMapTile(mountain_seeds[j][1] + x_offset, mountain_seeds[j][2] + y_offset, "Mntn")
							table.insert(new_mountain_seeds, {mountain_seeds[j][1] + x_offset, mountain_seeds[j][2] + y_offset})
						else
							SetWorldMapTile(mountain_seeds[j][1] + x_offset, mountain_seeds[j][2] + y_offset, "Hill")
							table.insert(hill_seeds, {mountain_seeds[j][1] + x_offset, mountain_seeds[j][2] + y_offset})
						end
					end
				end
			end
		end
		mountain_seeds = nil
		mountain_seeds = new_mountain_seeds
		if (table.getn(mountain_seeds) < 1) then
			break
		end
	end
	
	for i=1,50 do
		local new_hill_seeds = {}
		for j=1,table.getn(hill_seeds) do
			for x_offset=-1,1 do
				for y_offset=-1,1 do
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTile(hill_seeds[j][1] + x_offset, hill_seeds[j][2] + y_offset) == "") then
						local RandomNumber = SyncRand(100)
						if (RandomNumber < 50) then
							SetWorldMapTile(hill_seeds[j][1] + x_offset, hill_seeds[j][2] + y_offset, "Hill")
							table.insert(new_hill_seeds, {hill_seeds[j][1] + x_offset, hill_seeds[j][2] + y_offset})
						else
							SetWorldMapTile(hill_seeds[j][1] + x_offset, hill_seeds[j][2] + y_offset, "Plns")
							table.insert(plains_seeds, {hill_seeds[j][1] + x_offset, hill_seeds[j][2] + y_offset})
						end
					end
				end
			end
		end
		hill_seeds = nil
		hill_seeds = new_hill_seeds
		if (table.getn(hill_seeds) < 1) then
			break
		end
	end
	
	for i=1,100 do
		local new_plains_seeds = {}
		for j=1,table.getn(plains_seeds) do
			for x_offset=-1,1 do
				for y_offset=-1,1 do
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTile(plains_seeds[j][1] + x_offset, plains_seeds[j][2] + y_offset) == "") then
						local RandomNumber = SyncRand(100)
						if (RandomNumber < 50) then
							SetWorldMapTile(plains_seeds[j][1] + x_offset, plains_seeds[j][2] + y_offset, "Plns")
							table.insert(new_plains_seeds, {plains_seeds[j][1] + x_offset, plains_seeds[j][2] + y_offset})
						else
							SetWorldMapTile(plains_seeds[j][1] + x_offset, plains_seeds[j][2] + y_offset, "Watr")
						end
					end
				end
			end
		end
		plains_seeds = nil
		plains_seeds = new_plains_seeds
		if (table.getn(plains_seeds) < 1) then
			break
		end
	end
	
	for x=0,(world_map_width - 1) do
		for y=0,(world_map_height - 1) do
			if (GetWorldMapTile(x, y) == "") then
				SetWorldMapTile(x, y, "Watr")
			end
		end
	end
	
	for x=0,(world_map_width - 1) do
		for y=0,(world_map_height - 1) do
			if (GetWorldMapTile(x, y) == "Watr") then
				-- remove single water tiles
				if (GetWorldMapTile(x + 1, y) ~= "Watr" and GetWorldMapTile(x - 1, y) ~= "Watr" and GetWorldMapTile(x, y + 1) ~= "Watr" and GetWorldMapTile(x, y - 1) ~= "Watr") then
					SetWorldMapTile(x, y, "Plns")
				-- remove two-tile water lakes
				elseif (GetWorldMapTile(x + 1, y) == "Watr" and GetWorldMapTile(x - 1, y) ~= "Watr" and GetWorldMapTile(x, y + 1) ~= "Watr" and GetWorldMapTile(x, y - 1) ~= "Watr" and GetWorldMapTile(x + 2, y) ~= "Watr" and GetWorldMapTile(x + 1, y + 1) ~= "Watr" and GetWorldMapTile(x + 1, y - 1) ~= "Watr") then
					SetWorldMapTile(x, y, "Plns")
					SetWorldMapTile(x + 1, y, "Plns")
				elseif (GetWorldMapTile(x - 1, y) == "Watr" and GetWorldMapTile(x + 1, y) ~= "Watr" and GetWorldMapTile(x, y + 1) ~= "Watr" and GetWorldMapTile(x, y - 1) ~= "Watr" and GetWorldMapTile(x - 2, y) ~= "Watr" and GetWorldMapTile(x - 1, y + 1) ~= "Watr" and GetWorldMapTile(x - 1, y - 1) ~= "Watr") then
					SetWorldMapTile(x, y, "Plns")
					SetWorldMapTile(x - 1, y, "Plns")
				elseif (GetWorldMapTile(x, y + 1) == "Watr" and GetWorldMapTile(x + 1, y) ~= "Watr" and GetWorldMapTile(x - 1, y) ~= "Watr" and GetWorldMapTile(x, y - 1) ~= "Watr" and GetWorldMapTile(x, y + 2) ~= "Watr" and GetWorldMapTile(x - 1, y + 1) ~= "Watr" and GetWorldMapTile(x + 1, y + 1) ~= "Watr") then
					SetWorldMapTile(x, y, "Plns")
					SetWorldMapTile(x, y + 1, "Plns")
				elseif (GetWorldMapTile(x, y - 1) == "Watr" and GetWorldMapTile(x + 1, y) ~= "Watr" and GetWorldMapTile(x - 1, y) ~= "Watr" and GetWorldMapTile(x, y + 1) ~= "Watr" and GetWorldMapTile(x, y - 2) ~= "Watr" and GetWorldMapTile(x - 1, y - 1) ~= "Watr" and GetWorldMapTile(x + 1, y - 1) ~= "Watr") then
					SetWorldMapTile(x, y, "Plns")
					SetWorldMapTile(x, y - 1, "Plns")
				end
			end
		end
	end
	
	LoadProvinces("Random") -- load provinces here to load the water provinces, so that when the water tiles without provinces get transformed into plains they will be available for becoming forests later on
	
	local water_province_seeds = {}

	for key, value in pairs(WorldMapWaterProvinces) do
		WorldMapWaterProvinces[key].Tiles = nil
		WorldMapWaterProvinces[key].Tiles = {}
		if (string.find(WorldMapWaterProvinces[key].Name, "Lake") == nil) then
			for i=1,100 do
				local RandomX = SyncRand(world_map_width)
				local RandomY = SyncRand(world_map_height)
				if (GetWorldMapTile(RandomX, RandomY) == "Watr" and TileProvinces[RandomY+1][RandomX+1] == "") then
					TileProvinces[RandomY+1][RandomX+1] = key
					table.insert(WorldMapWaterProvinces[key].Tiles, {RandomX, RandomY})
					table.insert(water_province_seeds, {RandomX, RandomY})
					break
				end
			end
			if (WorldMapWaterProvinces[key].Tiles == {}) then -- if no suitable location for this province was found, then delete it from the list
				WorldMapWaterProvinces[key] = nil
			end
		else
			WorldMapWaterProvinces[key] = nil
		end
	end
	
	for i=1,100 do
		local new_water_province_seeds = {}
		for j=1,table.getn(water_province_seeds) do
			for x_offset=-1,1 do
				for y_offset=-1,1 do
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTile(water_province_seeds[j][1] + x_offset, water_province_seeds[j][2] + y_offset) == "Watr" and (water_province_seeds[j][1] + x_offset) >= 0 and water_province_seeds[j][1] + x_offset < table.getn(WorldMapTiles[1]) and water_province_seeds[j][2] + y_offset >= 0 and water_province_seeds[j][2] + y_offset < table.getn(WorldMapTiles) and TileProvinces[water_province_seeds[j][2] + y_offset + 1][water_province_seeds[j][1] + x_offset + 1] == "") then
						local RandomNumber = SyncRand(100)
						if (RandomNumber < 50) then
							TileProvinces[water_province_seeds[j][2] + y_offset + 1][water_province_seeds[j][1] + x_offset + 1] = TileProvinces[water_province_seeds[j][2] + 1][water_province_seeds[j][1] + 1]
							table.insert(WorldMapWaterProvinces[TileProvinces[water_province_seeds[j][2] + 1][water_province_seeds[j][1] + 1]].Tiles, {water_province_seeds[j][1] + x_offset, water_province_seeds[j][2] + y_offset})
							table.insert(new_water_province_seeds, {water_province_seeds[j][1] + x_offset, water_province_seeds[j][2] + y_offset})
						end
					end
				end
			end
			-- check to see if all neighboring tiles have been assigned provinces; if not, make this tile continue to be a "province seed"
			local unassigned_neighboring_tile = false
			for x_offset=-1,1 do
				for y_offset=-1,1 do
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTile(water_province_seeds[j][1] + x_offset, water_province_seeds[j][2] + y_offset) == "Watr" and (water_province_seeds[j][1] + x_offset) >= 0 and water_province_seeds[j][1] + x_offset < table.getn(WorldMapTiles[1]) and water_province_seeds[j][2] + y_offset >= 0 and water_province_seeds[j][2] + y_offset < table.getn(WorldMapTiles) and TileProvinces[water_province_seeds[j][2] + y_offset + 1][water_province_seeds[j][1] + x_offset + 1] == "") then
						unassigned_neighboring_tile = true
					end
				end
			end
			if (unassigned_neighboring_tile) then
				table.insert(new_water_province_seeds, {water_province_seeds[j][1], water_province_seeds[j][2]})
			end
		end
		water_province_seeds = nil
		water_province_seeds = new_water_province_seeds
		if (table.getn(water_province_seeds) < 1) then
			break
		end
	end
	
	-- make all water tiles which don't have a province assigned (usually very small inland lakes) into plains
	for x=0,(world_map_width - 1) do
		for y=0,(world_map_height - 1) do
			if (GetWorldMapTile(x, y) == "Watr" and TileProvinces[y+1][x+1] == "") then
				SetWorldMapTile(x, y, "Plns")
			end
		end
	end
	
	-- generate forests
	local forest_seeds = {}
	for i=1,(world_map_width * world_map_height / 256) do
		for j=1,100 do
			local RandomX = SyncRand(world_map_width)
			local RandomY = SyncRand(world_map_height)
			if (GetWorldMapTile(RandomX, RandomY) == "Plns") then
				if (TileProvinces[RandomY+1][RandomX+1] == "") then -- requires no tile province to be assigned to avoid being on a settlement spot
					if (RandomY >= (world_map_height / 4) and RandomY < (world_map_height - (world_map_height / 4))) then
						SetWorldMapTile(RandomX, RandomY, "ScFr") -- forests in plains above 45 degrees become conifer forests, and below that they become scrub forests
					else
						SetWorldMapTile(RandomX, RandomY, "CnFr")
					end
					table.insert(forest_seeds, {RandomX, RandomY})
					break
				end
			elseif (GetWorldMapTile(RandomX, RandomY) == "DkPl") then
				if (TileProvinces[RandomY+1][RandomX+1] == "") then -- requires no tile province to be assigned to avoid being on a settlement spot
					SetWorldMapTile(RandomX, RandomY, "ScFr")
					table.insert(forest_seeds, {RandomX, RandomY})
					break
				end
			end
		end
	end
	for i=1,100 do
		local new_forest_seeds = {}
		for j=1,table.getn(forest_seeds) do
			for x_offset=-1,1 do
				for y_offset=-1,1 do
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTile(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset) == "Plns" and TileProvinces[forest_seeds[j][2] + y_offset + 1][forest_seeds[j][1] + x_offset + 1] == "") then
						local RandomNumber = SyncRand(100)
						if (RandomNumber < 33) then
							if (forest_seeds[j][2] + y_offset >= (world_map_height / 4) and forest_seeds[j][2] + y_offset < (world_map_height - (world_map_height / 4))) then
								SetWorldMapTile(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset, "ScFr") -- forests in plains above 45 degrees become conifer forests, and below that they become scrub forests
							else
								SetWorldMapTile(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset, "CnFr")
							end
							table.insert(new_forest_seeds, {forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset})
						end
					elseif (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTile(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset) == "DkPl" and TileProvinces[forest_seeds[j][2] + y_offset + 1][forest_seeds[j][1] + x_offset + 1] == "") then
						local RandomNumber = SyncRand(100)
						if (RandomNumber < 33) then
							SetWorldMapTile(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset, "ScFr")
							table.insert(new_forest_seeds, {forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset})
						end
					end
				end
			end
		end
		forest_seeds = nil
		forest_seeds = new_forest_seeds
		if (table.getn(forest_seeds) < 1) then
			break
		end
	end
	
	WorldMapResources = {
		Gold = {
		},
		Lumber = { 
		},
		Stone = { 
		}
	}
	
	local province_seeds = {}

	for key, value in pairs(WorldMapProvinces) do -- insert the province seeds at this point, so that it will be known where the settlement locations will be when gold deposits and etc. are generated
		WorldMapProvinces[key].Tiles = nil
		WorldMapProvinces[key].Tiles = {}
		WorldMapProvinces[key].SettlementLocation = nil
		for i=1,1000 do
			local RandomX = SyncRand(world_map_width)
			local RandomY = SyncRand(world_map_height)
			if (
				GetWorldMapTile(RandomX, RandomY) ~= "Watr" and TileProvinces[RandomY+1][RandomX+1] == ""
				and (WorldMapProvinces[key].SettlementTerrain == nil or GetWorldMapTile(RandomX, RandomY) == WorldMapProvinces[key].SettlementTerrain)
				and (WorldMapProvinces[key].Coastal == nil or WorldMapProvinces[key].Coastal == false or GetWorldMapTile(RandomX - 1, RandomY) == "Water" or GetWorldMapTile(RandomX + 1, RandomY) == "Water" or GetWorldMapTile(RandomX, RandomY - 1) == "Water" or GetWorldMapTile(RandomX, RandomY + 1) == "Water")
			) then
				TileProvinces[RandomY+1][RandomX+1] = key
				table.insert(WorldMapProvinces[key].Tiles, {RandomX, RandomY})
				WorldMapProvinces[key].SettlementLocation = {RandomX, RandomY}
				table.insert(province_seeds, {RandomX, RandomY})
				break
			end
		end
		if (WorldMapProvinces[key].SettlementLocation == nil) then -- if the settlement location is nil, then no suitable location for this province was found: delete it from the list; this shouldn't be happening, as it breaks events and can cause instant game over if the province owned by the player's faction was deleted
			WorldMapProvinces[key] = nil
		end
	end

	-- generate gold deposits
	for i=1,(world_map_width * world_map_height / 128) do
		for j=1,100 do
			local RandomX = SyncRand(world_map_width)
			local RandomY = SyncRand(world_map_height)
			if (GetWorldMapTile(RandomX, RandomY) == "Hill" or GetWorldMapTile(RandomX, RandomY) == "Mntn") then
				if (GetArrayIncludes(WorldMapResources.Gold, {RandomX, RandomY}) == false and TileProvinces[RandomY+1][RandomX+1] == "") then -- requires no tile province to be assigned to avoid being on a settlement spot
					table.insert(WorldMapResources.Gold, {RandomX, RandomY, false})
					break
				end
			end
		end
	end

	for i=1,100 do
		local new_province_seeds = {}
		for j=1,table.getn(province_seeds) do
			for x_offset=-1,1 do
				for y_offset=-1,1 do
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTile(province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset) ~= "Watr" and (province_seeds[j][1] + x_offset) >= 0 and province_seeds[j][1] + x_offset < table.getn(WorldMapTiles[1]) and province_seeds[j][2] + y_offset >= 0 and province_seeds[j][2] + y_offset < table.getn(WorldMapTiles) and TileProvinces[province_seeds[j][2] + y_offset + 1][province_seeds[j][1] + x_offset + 1] == "") then
						local RandomNumber = SyncRand(100)
						if (RandomNumber < 50) then
							TileProvinces[province_seeds[j][2] + y_offset + 1][province_seeds[j][1] + x_offset + 1] = TileProvinces[province_seeds[j][2] + 1][province_seeds[j][1] + 1]
							table.insert(WorldMapProvinces[TileProvinces[province_seeds[j][2] + 1][province_seeds[j][1] + 1]].Tiles, {province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset})
							table.insert(new_province_seeds, {province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset})
						end
					end
				end
			end
			-- check to see if all neighboring tiles have been assigned provinces; if not, make this tile continue to be a "province seed"
			local unassigned_neighboring_tile = false
			for x_offset=-1,1 do
				for y_offset=-1,1 do
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTile(province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset) ~= "Watr" and (province_seeds[j][1] + x_offset) >= 0 and province_seeds[j][1] + x_offset < table.getn(WorldMapTiles[1]) and province_seeds[j][2] + y_offset >= 0 and province_seeds[j][2] + y_offset < table.getn(WorldMapTiles) and TileProvinces[province_seeds[j][2] + y_offset + 1][province_seeds[j][1] + x_offset + 1] == "") then
						unassigned_neighboring_tile = true
					end
				end
			end
			if (unassigned_neighboring_tile) then
				table.insert(new_province_seeds, {province_seeds[j][1], province_seeds[j][2]})
			end
		end
		province_seeds = nil
		province_seeds = new_province_seeds
		if (table.getn(province_seeds) < 1) then
			break
		end
	end
	
	LoadFactions("Random")
	
	MercenaryGroups = {
		unit_surghan_mercenary_steelclad = 4
	}
	
	LoadEvents("Random")
end
