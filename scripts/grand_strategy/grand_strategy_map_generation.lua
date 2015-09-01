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
	SetWorldMapSize(128, 64)
	local world_map_width = GetWorldMapWidth()
	local world_map_height = GetWorldMapHeight()
	
	for x=0,(world_map_width - 1) do
		for y=0,(world_map_height - 1) do
			SetWorldMapTileTerrain(x, y, -1)
		end
	end
	
	-- set map water borders
	for y=0,(world_map_height - 1) do -- to make the map seem wrap around the horizontal edges
		SetWorldMapTileTerrain(0, y, GetWorldMapTerrainTypeId("Water"))
		SetWorldMapTileTerrain((world_map_width - 1), y, GetWorldMapTerrainTypeId("Water"))
	end

	local mountain_seeds = {}
	local hill_seeds = {}
	local plains_seeds = {}
	
	for i=1,5 do -- 5 mountain seeds
		for j=1,100 do -- 100 attempts to get a suitable location
			local RandomX = SyncRand(world_map_width)
			local RandomY = SyncRand(world_map_height)
			if (GetWorldMapTileTerrain(RandomX, RandomY) == "") then
				SetWorldMapTileTerrain(RandomX, RandomY, GetWorldMapTerrainTypeId("Mountains"))
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
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTileTerrain(mountain_seeds[j][1] + x_offset, mountain_seeds[j][2] + y_offset) == "") then
						local RandomNumber = SyncRand(100)
						if (RandomNumber < 50) then
							SetWorldMapTileTerrain(mountain_seeds[j][1] + x_offset, mountain_seeds[j][2] + y_offset, GetWorldMapTerrainTypeId("Mountains"))
							table.insert(new_mountain_seeds, {mountain_seeds[j][1] + x_offset, mountain_seeds[j][2] + y_offset})
						else
							SetWorldMapTileTerrain(mountain_seeds[j][1] + x_offset, mountain_seeds[j][2] + y_offset, GetWorldMapTerrainTypeId("Hills"))
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
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTileTerrain(hill_seeds[j][1] + x_offset, hill_seeds[j][2] + y_offset) == "") then
						local RandomNumber = SyncRand(100)
						if (RandomNumber < 50) then
							SetWorldMapTileTerrain(hill_seeds[j][1] + x_offset, hill_seeds[j][2] + y_offset, GetWorldMapTerrainTypeId("Hills"))
							table.insert(new_hill_seeds, {hill_seeds[j][1] + x_offset, hill_seeds[j][2] + y_offset})
						else
							SetWorldMapTileTerrain(hill_seeds[j][1] + x_offset, hill_seeds[j][2] + y_offset, GetWorldMapTerrainTypeId("Plains"))
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
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTileTerrain(plains_seeds[j][1] + x_offset, plains_seeds[j][2] + y_offset) == "") then
						local RandomNumber = SyncRand(100)
						if (RandomNumber < 50) then
							SetWorldMapTileTerrain(plains_seeds[j][1] + x_offset, plains_seeds[j][2] + y_offset, GetWorldMapTerrainTypeId("Plains"))
							table.insert(new_plains_seeds, {plains_seeds[j][1] + x_offset, plains_seeds[j][2] + y_offset})
						else
							SetWorldMapTileTerrain(plains_seeds[j][1] + x_offset, plains_seeds[j][2] + y_offset, GetWorldMapTerrainTypeId("Water"))
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
			if (GetWorldMapTileTerrain(x, y) == "") then
				SetWorldMapTileTerrain(x, y, GetWorldMapTerrainTypeId("Water"))
			end
		end
	end
	
	for x=0,(world_map_width - 1) do
		for y=0,(world_map_height - 1) do
			if (GetWorldMapTileTerrain(x, y) == "Water") then
				-- remove single water tiles
				if (GetWorldMapTileTerrain(x + 1, y) ~= "Water" and GetWorldMapTileTerrain(x - 1, y) ~= "Water" and GetWorldMapTileTerrain(x, y + 1) ~= "Water" and GetWorldMapTileTerrain(x, y - 1) ~= "Water") then
					SetWorldMapTileTerrain(x, y, GetWorldMapTerrainTypeId("Plains"))
				-- remove two-tile water lakes
				elseif (GetWorldMapTileTerrain(x + 1, y) == "Water" and GetWorldMapTileTerrain(x - 1, y) ~= "Water" and GetWorldMapTileTerrain(x, y + 1) ~= "Water" and GetWorldMapTileTerrain(x, y - 1) ~= "Water" and GetWorldMapTileTerrain(x + 2, y) ~= "Water" and GetWorldMapTileTerrain(x + 1, y + 1) ~= "Water" and GetWorldMapTileTerrain(x + 1, y - 1) ~= "Water") then
					SetWorldMapTileTerrain(x, y, GetWorldMapTerrainTypeId("Plains"))
					SetWorldMapTileTerrain(x + 1, y, GetWorldMapTerrainTypeId("Plains"))
				elseif (GetWorldMapTileTerrain(x - 1, y) == "Water" and GetWorldMapTileTerrain(x + 1, y) ~= "Water" and GetWorldMapTileTerrain(x, y + 1) ~= "Water" and GetWorldMapTileTerrain(x, y - 1) ~= "Water" and GetWorldMapTileTerrain(x - 2, y) ~= "Water" and GetWorldMapTileTerrain(x - 1, y + 1) ~= "Water" and GetWorldMapTileTerrain(x - 1, y - 1) ~= "Water") then
					SetWorldMapTileTerrain(x, y, GetWorldMapTerrainTypeId("Plains"))
					SetWorldMapTileTerrain(x - 1, y, GetWorldMapTerrainTypeId("Plains"))
				elseif (GetWorldMapTileTerrain(x, y + 1) == "Water" and GetWorldMapTileTerrain(x + 1, y) ~= "Water" and GetWorldMapTileTerrain(x - 1, y) ~= "Water" and GetWorldMapTileTerrain(x, y - 1) ~= "Water" and GetWorldMapTileTerrain(x, y + 2) ~= "Water" and GetWorldMapTileTerrain(x - 1, y + 1) ~= "Water" and GetWorldMapTileTerrain(x + 1, y + 1) ~= "Water") then
					SetWorldMapTileTerrain(x, y, GetWorldMapTerrainTypeId("Plains"))
					SetWorldMapTileTerrain(x, y + 1, GetWorldMapTerrainTypeId("Plains"))
				elseif (GetWorldMapTileTerrain(x, y - 1) == "Water" and GetWorldMapTileTerrain(x + 1, y) ~= "Water" and GetWorldMapTileTerrain(x - 1, y) ~= "Water" and GetWorldMapTileTerrain(x, y + 1) ~= "Water" and GetWorldMapTileTerrain(x, y - 2) ~= "Water" and GetWorldMapTileTerrain(x - 1, y - 1) ~= "Water" and GetWorldMapTileTerrain(x + 1, y - 1) ~= "Water") then
					SetWorldMapTileTerrain(x, y, GetWorldMapTerrainTypeId("Plains"))
					SetWorldMapTileTerrain(x, y - 1, GetWorldMapTerrainTypeId("Plains"))
				end
			end
		end
	end
	
	LoadFactions("Random")
	
	LoadProvinces("Random") -- load provinces here to load the water provinces, so that when the water tiles without provinces get transformed into plains they will be available for becoming forests later on

	-- erase association of provinces with tiles
	for x=0,(1024 - 1) do
		for y=0,(512 - 1) do
			SetWorldMapTileProvince(x, y, "")
		end
	end
	
	local water_province_seeds = {}

	for key, value in pairs(WorldMapWaterProvinces) do
		WorldMapWaterProvinces[key].Tiles = nil
		WorldMapWaterProvinces[key].Tiles = {}
		if (string.find(WorldMapWaterProvinces[key].Name, "Lake") == nil) then
			for i=1,100 do
				local RandomX = SyncRand(world_map_width)
				local RandomY = SyncRand(world_map_height)
				if (GetWorldMapTileTerrain(RandomX, RandomY) == "Water" and GetWorldMapTileProvinceName(RandomX, RandomY) == "") then
					SetWorldMapTileProvince(RandomX, RandomY, WorldMapWaterProvinces[key].Name)
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
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTileTerrain(water_province_seeds[j][1] + x_offset, water_province_seeds[j][2] + y_offset) == "Water" and (water_province_seeds[j][1] + x_offset) >= 0 and water_province_seeds[j][1] + x_offset < GetWorldMapWidth() and water_province_seeds[j][2] + y_offset >= 0 and water_province_seeds[j][2] + y_offset < GetWorldMapHeight() and GetWorldMapTileProvinceName(water_province_seeds[j][1] + x_offset, water_province_seeds[j][2] + y_offset) == "") then
						local RandomNumber = SyncRand(100)
						if (RandomNumber < 50) then
							SetWorldMapTileProvince(water_province_seeds[j][1] + x_offset, water_province_seeds[j][2] + y_offset, GetWorldMapTileProvinceName(water_province_seeds[j][1], water_province_seeds[j][2]))
							table.insert(GetProvinceFromName(GetWorldMapTileProvinceName(water_province_seeds[j][1], water_province_seeds[j][2])).Tiles, {water_province_seeds[j][1] + x_offset, water_province_seeds[j][2] + y_offset})
							table.insert(new_water_province_seeds, {water_province_seeds[j][1] + x_offset, water_province_seeds[j][2] + y_offset})
						end
					end
				end
			end
			-- check to see if all neighboring tiles have been assigned provinces; if not, make this tile continue to be a "province seed"
			local unassigned_neighboring_tile = false
			for x_offset=-1,1 do
				for y_offset=-1,1 do
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTileTerrain(water_province_seeds[j][1] + x_offset, water_province_seeds[j][2] + y_offset) == "Water" and (water_province_seeds[j][1] + x_offset) >= 0 and water_province_seeds[j][1] + x_offset < GetWorldMapWidth() and water_province_seeds[j][2] + y_offset >= 0 and water_province_seeds[j][2] + y_offset < GetWorldMapHeight() and GetWorldMapTileProvinceName(water_province_seeds[j][1] + x_offset, water_province_seeds[j][2] + y_offset) == "") then
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
			if (GetWorldMapTileTerrain(x, y) == "Water" and GetWorldMapTileProvinceName(x, y) == "") then
				SetWorldMapTileTerrain(x, y, GetWorldMapTerrainTypeId("Plains"))
			end
		end
	end
	
	-- generate forests
	local forest_seeds = {}
	for i=1,(world_map_width * world_map_height / 256) do
		for j=1,100 do
			local RandomX = SyncRand(world_map_width)
			local RandomY = SyncRand(world_map_height)
			if (GetWorldMapTileTerrain(RandomX, RandomY) == "Plains") then
				if (GetWorldMapTileProvinceName(RandomX, RandomY) == "") then -- requires no tile province to be assigned to avoid being on a settlement spot
					if (RandomY >= (world_map_height / 4) and RandomY < (world_map_height - (world_map_height / 4))) then
						SetWorldMapTileTerrain(RandomX, RandomY, GetWorldMapTerrainTypeId("Scrub Forest")) -- forests in plains above 45 degrees become conifer forests, and below that they become scrub forests
					else
						SetWorldMapTileTerrain(RandomX, RandomY, GetWorldMapTerrainTypeId("Conifer Forest"))
					end
					table.insert(forest_seeds, {RandomX, RandomY})
					break
				end
			elseif (GetWorldMapTileTerrain(RandomX, RandomY) == "Dark Plains") then
				if (GetWorldMapTileProvinceName(RandomX, RandomY) == "") then -- requires no tile province to be assigned to avoid being on a settlement spot
					SetWorldMapTileTerrain(RandomX, RandomY, GetWorldMapTerrainTypeId("Scrub Forest"))
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
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTileTerrain(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset) == "Plains" and GetWorldMapTileProvinceName(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset) == "") then
						local RandomNumber = SyncRand(100)
						if (RandomNumber < 33) then
							if (forest_seeds[j][2] + y_offset >= (world_map_height / 4) and forest_seeds[j][2] + y_offset < (world_map_height - (world_map_height / 4))) then
								SetWorldMapTileTerrain(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset, GetWorldMapTerrainTypeId("Scrub Forest")) -- forests in plains above 45 degrees become conifer forests, and below that they become scrub forests
							else
								SetWorldMapTileTerrain(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset, GetWorldMapTerrainTypeId("Conifer Forest"))
							end
							table.insert(new_forest_seeds, {forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset})
						end
					elseif (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTileTerrain(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset) == "Dark Plains" and GetWorldMapTileProvinceName(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset) == "") then
						local RandomNumber = SyncRand(100)
						if (RandomNumber < 33) then
							SetWorldMapTileTerrain(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset, GetWorldMapTerrainTypeId("Scrub Forest"))
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
	
	local province_seeds = {}

	for key, value in pairs(WorldMapProvinces) do -- insert the province seeds at this point, so that it will be known where the settlement locations will be when gold deposits and etc. are generated
		WorldMapProvinces[key].Tiles = nil
		WorldMapProvinces[key].Tiles = {}
		WorldMapProvinces[key].SettlementLocation = nil
		for i=1,1000 do
			local RandomX = SyncRand(world_map_width)
			local RandomY = SyncRand(world_map_height)
			if (
				GetWorldMapTileTerrain(RandomX, RandomY) ~= "Water" and GetWorldMapTileProvinceName(RandomX, RandomY) == ""
				and (WorldMapProvinces[key].SettlementTerrain == nil or GetWorldMapTileTerrain(RandomX, RandomY) == WorldMapProvinces[key].SettlementTerrain)
				and (WorldMapProvinces[key].Coastal == nil or WorldMapProvinces[key].Coastal == false or GetWorldMapTileTerrain(RandomX - 1, RandomY) == "Water" or GetWorldMapTileTerrain(RandomX + 1, RandomY) == "Water" or GetWorldMapTileTerrain(RandomX, RandomY - 1) == "Water" or GetWorldMapTileTerrain(RandomX, RandomY + 1) == "Water")
			) then
				SetWorldMapTileProvince(RandomX, RandomY, WorldMapProvinces[key].Name)
				table.insert(WorldMapProvinces[key].Tiles, {RandomX, RandomY})
				WorldMapProvinces[key].SettlementLocation = {RandomX, RandomY}
				SetProvinceSettlementLocation(WorldMapProvinces[key].Name, RandomX, RandomY)
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
			if (GetWorldMapTileTerrain(RandomX, RandomY) == "Hills" or GetWorldMapTileTerrain(RandomX, RandomY) == "Mountains") then
				if (WorldMapTileHasResource(RandomX, RandomY, "any", true) == false and GetWorldMapTileProvinceName(RandomX, RandomY) == "") then -- requires no tile province to be assigned to avoid being on a settlement spot
					AddWorldMapResource("gold", RandomX, RandomY, false)
					break
				end
			end
		end
	end

	-- generate timber lodges
	for i=1,(world_map_width * world_map_height / 64) do
		for j=1,100 do
			local RandomX = SyncRand(world_map_width)
			local RandomY = SyncRand(world_map_height)
			if (GetWorldMapTileTerrain(RandomX, RandomY) == "Conifer Forest" or GetWorldMapTileTerrain(RandomX, RandomY) == "Scrub Forest") then
				if (WorldMapTileHasResource(RandomX, RandomY, "any", true) == false and GetWorldMapTileProvinceName(RandomX, RandomY) == "") then -- requires no tile province to be assigned to avoid being on a settlement spot
					AddWorldMapResource("lumber", RandomX, RandomY, true)
					break
				end
			end
		end
	end
	
	-- generate stone quarries
	for i=1,(world_map_width * world_map_height / 64) do
		for j=1,100 do
			local RandomX = SyncRand(world_map_width)
			local RandomY = SyncRand(world_map_height)
			if (GetWorldMapTileTerrain(RandomX, RandomY) == "Hills" or GetWorldMapTileTerrain(RandomX, RandomY) == "Mountains") then
				if (WorldMapTileHasResource(RandomX, RandomY, "any", true) == false and GetWorldMapTileProvinceName(RandomX, RandomY) == "") then -- requires no tile province to be assigned to avoid being on a settlement spot
					AddWorldMapResource("stone", RandomX, RandomY, true)
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
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTileTerrain(province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset) ~= "Water" and (province_seeds[j][1] + x_offset) >= 0 and province_seeds[j][1] + x_offset < GetWorldMapWidth() and province_seeds[j][2] + y_offset >= 0 and province_seeds[j][2] + y_offset < GetWorldMapHeight() and GetWorldMapTileProvinceName(province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset) == "") then
						local RandomNumber = SyncRand(100)
						if (RandomNumber < 50) then
							SetWorldMapTileProvince(province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset, GetWorldMapTileProvinceName(province_seeds[j][1], province_seeds[j][2]))
							table.insert(GetProvinceFromName(GetWorldMapTileProvinceName(province_seeds[j][1], province_seeds[j][2])).Tiles, {province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset})
							table.insert(new_province_seeds, {province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset})
						end
					end
				end
			end
			-- check to see if all neighboring tiles have been assigned provinces; if not, make this tile continue to be a "province seed"
			local unassigned_neighboring_tile = false
			for x_offset=-1,1 do
				for y_offset=-1,1 do
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTileTerrain(province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset) ~= "Water" and (province_seeds[j][1] + x_offset) >= 0 and province_seeds[j][1] + x_offset < GetWorldMapWidth() and province_seeds[j][2] + y_offset >= 0 and province_seeds[j][2] + y_offset < GetWorldMapHeight() and GetWorldMapTileProvinceName(province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset) == "") then
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
	
	MercenaryGroups = {
		unit_surghan_mercenary_steelclad = 4
	}
	
	LoadEvents("Random")
end

function GenerateProvince(arg)
	local maximum_size = 15
	if (arg.MaximumSize) then
		maximum_size = arg.MaximumSize
	end
	
	local potential_province_seed_tiles = {}
	for i=1,table.getn(arg.BorderProvinces) do
		for j=1,table.getn(GetProvinceFromName(arg.BorderProvinces[i]).Tiles) do
			local tile_x = GetProvinceFromName(arg.BorderProvinces[i]).Tiles[j][1]
			local tile_y = GetProvinceFromName(arg.BorderProvinces[i]).Tiles[j][2]
			for x_offset=-1,1 do
				for y_offset=-1,1 do
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTileTerrain(tile_x + x_offset, tile_y + y_offset) == "" and (tile_x + x_offset) >= 0 and tile_x + x_offset < GetWorldMapWidth() and tile_y + y_offset >= 0 and tile_y + y_offset < GetWorldMapHeight()) then
						local border_position_allowed = true
						for sub_x_offset=-1,1 do
							for sub_y_offset=-1,1 do
								if (math.abs(sub_x_offset) ~= math.abs(sub_y_offset) and (tile_x + x_offset + sub_x_offset) >= 0 and tile_x + x_offset + sub_x_offset < GetWorldMapWidth() and tile_y + y_offset + sub_y_offset >= 0 and tile_y + y_offset + sub_y_offset < GetWorldMapHeight()) then
									for k=1,table.getn(GetProvinceFromName(arg.BorderProvinces[i]).Tiles) do
										local sub_tile_x = GetProvinceFromName(arg.BorderProvinces[i]).Tiles[k][1]
										local sub_tile_y = GetProvinceFromName(arg.BorderProvinces[i]).Tiles[k][2]
										if (tile_x + x_offset + sub_x_offset == sub_tile_x and tile_y + y_offset + sub_y_offset == sub_tile_y) then
											if (
												(sub_x_offset == 1 and not arg.BorderProvinceWest)
												or (sub_x_offset == -1 and not arg.BorderProvinceEast)
												or (sub_y_offset == 1 and not arg.BorderProvinceNorth)
												or (sub_y_offset == -1 and not arg.BorderProvinceSouth)
											) then
												border_position_allowed = false
											end
										end
									end
								end
							end
						end
						if (border_position_allowed) then
							table.insert(potential_province_seed_tiles, {tile_x + x_offset, tile_y + y_offset})
						end
					end
				end
			end
		end
	end

	local province_seed_tile = potential_province_seed_tiles[SyncRand(table.getn(potential_province_seed_tiles)) + 1]

	local province_seeds = {}
	
	local base_tile_id = GetWorldMapTerrainTypeId("Plains")
	if (GrandStrategyWorld == "Nidavellir") then
		base_tile_id = GetWorldMapTerrainTypeId("Dark Plains")
	end
	if (arg.Water) then
		base_tile_id = GetWorldMapTerrainTypeId("Water")
	end

	SetWorldMapTileTerrain(province_seed_tile[1], province_seed_tile[2], base_tile_id)
	SetWorldMapTileProvince(province_seed_tile[1], province_seed_tile[2], arg.Province.Name)
	table.insert(arg.Province.Tiles, {province_seed_tile[1], province_seed_tile[2]})
	table.insert(province_seeds, {province_seed_tile[1], province_seed_tile[2]})

	for i=1,100 do
		local new_province_seeds = {}
		for j=1,table.getn(province_seeds) do
			for x_offset=-1,1 do
				for y_offset=-1,1 do
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTileTerrain(province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset) == "" and (province_seeds[j][1] + x_offset) >= 0 and province_seeds[j][1] + x_offset < GetWorldMapWidth() and province_seeds[j][2] + y_offset >= 0 and province_seeds[j][2] + y_offset < GetWorldMapHeight()) then
						local RandomNumber = SyncRand(100)
						if (RandomNumber < 50) then
							SetWorldMapTileTerrain(province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset, base_tile_id)
							SetWorldMapTileProvince(province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset, GetWorldMapTileProvinceName(province_seeds[j][1], province_seeds[j][2]))
							table.insert(GetProvinceFromName(GetWorldMapTileProvinceName(province_seeds[j][1], province_seeds[j][2])).Tiles, {province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset})
							table.insert(new_province_seeds, {province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset})
						end
					end
				end
			end
			-- check to see if all neighboring tiles have been assigned provinces; if not, make this tile continue to be a "province seed"
			local unassigned_neighboring_tile = false
			for x_offset=-1,1 do
				for y_offset=-1,1 do
					if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTileTerrain(province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset) ~= "Water" and (province_seeds[j][1] + x_offset) >= 0 and province_seeds[j][1] + x_offset < GetWorldMapWidth() and province_seeds[j][2] + y_offset >= 0 and province_seeds[j][2] + y_offset < GetWorldMapHeight() and GetWorldMapTileProvinceName(province_seeds[j][1] + x_offset, province_seeds[j][2] + y_offset) == "") then
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
		if (table.getn(arg.Province.Tiles) > maximum_size) then -- if the province is already big enough, stop giving it new tiles
			break
		end
	end
	
	-- check to see if there are no empty tiles surrounded on all sides by provinces; if there are, add that tile to this province
	for i=1,table.getn(arg.Province.Tiles) do
		local tile_x = arg.Province.Tiles[i][1]
		local tile_y = arg.Province.Tiles[i][2]
		for x_offset=-1,1 do
			for y_offset=-1,1 do
				if (math.abs(x_offset) ~= math.abs(y_offset) and GetWorldMapTileTerrain(tile_x + x_offset, tile_y + y_offset) == "" and (tile_x + x_offset) >= 0 and tile_x + x_offset < GetWorldMapWidth() and tile_y + y_offset >= 0 and tile_y + y_offset < GetWorldMapHeight()) then
					local second_tile_x = tile_x + x_offset
					local second_tile_y = tile_y + y_offset
					local empty_surrounded = true
					for second_x_offset=-1,1 do
						for second_y_offset=-1,1 do
							if (math.abs(second_x_offset) ~= math.abs(second_y_offset) and GetWorldMapTileTerrain(second_tile_x + second_x_offset, second_tile_y + second_y_offset) == "" and (second_tile_x + second_x_offset) >= 0 and second_tile_x + second_x_offset < GetWorldMapWidth() and second_tile_y + second_y_offset >= 0 and second_tile_y + second_y_offset < GetWorldMapHeight()) then
								empty_surrounded = false
							end
						end
					end
					if (empty_surrounded) then
						SetWorldMapTileTerrain(second_tile_x, second_tile_y, base_tile_id)
						SetWorldMapTileProvince(second_tile_x, second_tile_y, arg.Province.Name)
						table.insert(arg.Province.Tiles, {second_tile_x, second_tile_y})
					end
				end
			end
		end
	end
	
	if not (arg.Water) then
		-- set settlement location to one of the province's tiles randomly
		local settlement_location_id = SyncRand(table.getn(arg.Province.Tiles)) + 1
		arg.Province.SettlementLocation = {arg.Province.Tiles[settlement_location_id][1], arg.Province.Tiles[settlement_location_id][2]}
		SetProvinceSettlementLocation(arg.Province.Name, arg.Province.Tiles[settlement_location_id][1], arg.Province.Tiles[settlement_location_id][2])

		-- create some hill tiles in the province
		-- first generate the hill seeds
		local hill_seeds = {}
		for i=1,table.getn(arg.Province.Tiles) do
			local tile_x = arg.Province.Tiles[i][1]
			local tile_y = arg.Province.Tiles[i][2]
			if (SyncRand(8) == 0) then -- 12.5% chance to generate a hill seed on one of the province's tiles
				if (GetWorldMapTileTerrain(tile_x, tile_y) == "Plains" or GetWorldMapTileTerrain(tile_x, tile_y) == "Dark Plains") then
					SetWorldMapTileTerrain(tile_x, tile_y, GetWorldMapTerrainTypeId("Hills"))
					table.insert(hill_seeds, {tile_x, tile_y})
					break
				end
			end
		end
		
		-- now allow the hill seeds to expand
		for i=1,100 do
			local new_hill_seeds = {}
			for j=1,table.getn(hill_seeds) do
				for x_offset=-1,1 do
					for y_offset=-1,1 do
						if (GetWorldMapTileProvinceName(hill_seeds[j][1] + x_offset, hill_seeds[j][2] + y_offset) == arg.Province.Name and math.abs(x_offset) ~= math.abs(y_offset) and not (hill_seeds[j][1] + x_offset == arg.Province.SettlementLocation[1] and hill_seeds[j][2] + y_offset == arg.Province.SettlementLocation[2])) then
							if (GetWorldMapTileTerrain(hill_seeds[j][1] + x_offset, hill_seeds[j][2] + y_offset) == "Plains" or GetWorldMapTileTerrain(hill_seeds[j][1] + x_offset, hill_seeds[j][2] + y_offset) == "Dark Plains") then
								local RandomNumber = SyncRand(100)
								if (RandomNumber < 33) then
									SetWorldMapTileTerrain(hill_seeds[j][1] + x_offset, hill_seeds[j][2] + y_offset, GetWorldMapTerrainTypeId("Hills"))
									table.insert(new_hill_seeds, {hill_seeds[j][1] + x_offset, hill_seeds[j][2] + y_offset})
								end
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

		-- create some forest tiles in the province
		-- first generate the forest seeds
		local forest_seeds = {}
		for i=1,table.getn(arg.Province.Tiles) do
			local tile_x = arg.Province.Tiles[i][1]
			local tile_y = arg.Province.Tiles[i][2]
			if (SyncRand(8) == 0) then -- 12.5% chance to generate a forest seed on one of the province's tiles
				if (GetWorldMapTileTerrain(tile_x, tile_y) == "Plains") then
					if (arg.Province.Tiles[i] ~= arg.Province.SettlementLocation) then
						if (tile_y >= (GetWorldMapHeight() / 4) and tile_y < (GetWorldMapHeight() - (GetWorldMapHeight() / 4))) then
							SetWorldMapTileTerrain(tile_x, tile_y, GetWorldMapTerrainTypeId("Scrub Forest")) -- forests in plains above 45 degrees become conifer forests, and below that they become scrub forests
						else
							SetWorldMapTileTerrain(tile_x, tile_y, GetWorldMapTerrainTypeId("Conifer Forest"))
						end
						table.insert(forest_seeds, {tile_x, tile_y})
						break
					end
				elseif (GetWorldMapTileTerrain(tile_x, tile_y) == "Dark Plains") then
					if (arg.Province.Tiles[i] ~= arg.Province.SettlementLocation) then
						SetWorldMapTileTerrain(tile_x, tile_y, GetWorldMapTerrainTypeId("Scrub Forest"))
						table.insert(forest_seeds, {tile_x, tile_y})
						break
					end
				end
			end
		end
		
		-- now allow the forest seeds to expand
		for i=1,100 do
			local new_forest_seeds = {}
			for j=1,table.getn(forest_seeds) do
				for x_offset=-1,1 do
					for y_offset=-1,1 do
						if (GetWorldMapTileProvinceName(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset) == arg.Province.Name and math.abs(x_offset) ~= math.abs(y_offset) and not (forest_seeds[j][1] + x_offset == arg.Province.SettlementLocation[1] and forest_seeds[j][2] + y_offset == arg.Province.SettlementLocation[2])) then
							if (GetWorldMapTileTerrain(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset) == "Plains") then
								local RandomNumber = SyncRand(100)
								if (RandomNumber < 33) then
									if (forest_seeds[j][2] + y_offset >= (GetWorldMapHeight() / 4) and forest_seeds[j][2] + y_offset < (GetWorldMapHeight() - (GetWorldMapHeight() / 4))) then
										SetWorldMapTileTerrain(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset, GetWorldMapTerrainTypeId("Scrub Forest")) -- forests in plains above 45 degrees become conifer forests, and below that they become scrub forests
									else
										SetWorldMapTileTerrain(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset, GetWorldMapTerrainTypeId("Conifer Forest"))
									end
									table.insert(new_forest_seeds, {forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset})
								end
							elseif (GetWorldMapTileTerrain(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset) == "Dark Plains") then
								local RandomNumber = SyncRand(100)
								if (RandomNumber < 33) then
									SetWorldMapTileTerrain(forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset, GetWorldMapTerrainTypeId("Scrub Forest"))
									table.insert(new_forest_seeds, {forest_seeds[j][1] + x_offset, forest_seeds[j][2] + y_offset})
								end
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
		
		-- generate resources
		if (arg.Resources) then
			for key, value in pairs(arg.Resources) do
				AddProvinceResource(arg.Province, key, arg.Resources[key])
			end
		end
	end
end

function AddProvinceResource(province, resource, quantity)
	local WhileCount = 0
	while (quantity > 0) do
		local random_tile = province.Tiles[SyncRand(table.getn(province.Tiles)) + 1]
		local prospected = resource ~= "gold"
		if (
			(
				(resource == "gold" or resource == "stone")
				and (
					GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Hills"
					or GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Mountains"
					or (GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Plains" and WhileCount > 1000)
					or (GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Dark Plains" and WhileCount > 1000)
					or (GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Scrub Forest" and WhileCount > 1000)
					or (GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Conifer Forest" and WhileCount > 1000)
				)
			)
			or (
				(resource == "lumber")
				and (
					GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Conifer Forest"
					or GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Scrub Forest"
					or (GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Plains" and WhileCount > 1000)
					or (GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Dark Plains" and WhileCount > 1000)
					or (GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Hills" and WhileCount > 1000)
					or (GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Mountains" and WhileCount > 1000)
				)
			)
			or (
				(resource == "grain")
				and (
					GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Plains"
					or (GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Scrub Forest" and WhileCount > 1000)
					or (GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Conifer Forest" and WhileCount > 1000)
				)
			)
			or (
				(resource == "mushrooms")
				and (
					GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Hills"
					or GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Mountains"
					or GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Dark Plains"
					or (GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Scrub Forest" and WhileCount > 1000)
					or (GetWorldMapTileTerrain(random_tile[1], random_tile[2]) == "Conifer Forest" and WhileCount > 1000)
				)
			)
		) then
			if (WorldMapTileHasResource(random_tile[1], random_tile[2], "any", true) == false and not (random_tile[1] == province.SettlementLocation[1] and random_tile[2] == province.SettlementLocation[2])) then
				AddWorldMapResource(resource, random_tile[1], random_tile[2], prospected)
				quantity = quantity - 1
				WhileCount = 0
			end
		end
		WhileCount = WhileCount + 1
		if (WhileCount > 10000) then
			break
		end
	end
end