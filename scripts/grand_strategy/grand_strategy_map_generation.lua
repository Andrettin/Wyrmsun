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
--      (c) Copyright 2015 by Andre Novellino Gouvêa
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
			if (GetWorldMapTile(RandomX, RandomY) ~= "Watr" and TileProvinces[RandomY+1][RandomX+1] == "" and (WorldMapProvinces[key].SettlementTerrain == nil or GetWorldMapTile(RandomX, RandomY) == WorldMapProvinces[key].SettlementTerrain)) then
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
					table.insert(WorldMapResources.Gold, {RandomX, RandomY})
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

function LoadFactions(world)
	Factions = nil
	Factions = {}

	local EarthFactions = {
		-- Germanic tribes
		AsaTribe = {
			Name = "Asa Tribe",
			Civilization = "germanic",
			Gold = 3000,
			Commodities = {
				Lumber = 1500 -- half of the gold value
			}
		},
		BavarianTribe = {
			Name = "Bavarian Tribe",
			Civilization = "germanic"
		},
		BurgundianTribe = {
			Name = "Burgundian Tribe",
			Civilization = "germanic"
		},
		DaneTribe = {
			Name = "Dane Tribe",
			Civilization = "germanic"
		},
		FrankTribe = {
			Name = "Frank Tribe",
			Civilization = "germanic"
		},
		FrisianTribe = {
			Name = "Frisian Tribe",
			Civilization = "germanic"
		},
		GothTribe = {
			Name = "Goth Tribe",
			Civilization = "germanic"
		},
		MarcomanniTribe = {
			Name = "Marcomanni Tribe",
			Civilization = "germanic"
		},
		OstrogothTribe = {
			Name = "Ostrogoth Tribe",
			Civilization = "germanic"
		},
		RugianTribe = {
			Name = "Rugian Tribe",
			Civilization = "germanic"
		},
		SaxonTribe = {
			Name = "Saxon Tribe",
			Civilization = "germanic"
		},
		SuebiTribe = {
			Name = "Suebi Tribe",
			Civilization = "germanic"
		},
		SwedeTribe = {
			Name = "Swede Tribe",
			Civilization = "germanic"
		},
		VandalTribe = {
			Name = "Vandal Tribe",
			Civilization = "germanic"
		},
		VisigothTribe = {
			Name = "Visigoth Tribe",
			Civilization = "germanic"
		},
		-- Germanic polities
		Austria = {
			Name = "Austria",
			Civilization = "germanic",
			Title = "Duchy" -- later Archduchy
		},
		Bavaria = {
			Name = "Bavaria",
			Civilization = "germanic",
			Title = "Duchy"
		},
		Brandenburg = {
			Name = "Brandenburg",
			Civilization = "germanic",
			Title = "Margravate"
		},
		Burgundy = {
			Name = "Burgundy",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Denmark = {
			Name = "Denmark",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		England = {
			Name = "England",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Francia = {
			Name = "Francia",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Galicia = { -- Suebi kingdom of Galicia
			Name = "Galicia",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Netherlands = {
			Name = "Netherlands",
			Civilization = "germanic",
			Title = "Republic"
		},
		Norway = {
			Name = "Norway",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Saxony = {
			Name = "Saxony",
			Civilization = "germanic",
			Title = "Duchy"
		},
		Scotland = {
			Name = "Scotland",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Sweden = {
			Name = "Sweden",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Switzerland = {
			Name = "Switzerland",
			Civilization = "germanic",
			Title = "Confederation"
		},
		TeutonicOrder = {
			Name = "Teutonic Order",
			Civilization = "germanic",
			Title = "Dominion"
		},
		Westphalia = {
			Name = "Westphalia",
			Civilization = "germanic",
			Title = "Duchy"
		},
		-- Non-Playable Tribes
		AeduiTribe = {
			Name = "Aedui Tribe",
			Civilization = "germanic"
		},
		ArverniTribe = {
			Name = "Arverni Tribe",
			Civilization = "germanic"
		},
		GylfingTribe = {
			Name = "Gylfing Tribe",
			Civilization = "germanic",
			Gold = 5000,
			Commodities = {
				Lumber = 2500 -- half of the gold value
			}
		},
		MenapiiTribe = {
			Name = "Menapii Tribe",
			Civilization = "germanic"
		},
		MinoanTribe = {
			Name = "Minoan Tribe",
			Civilization = "germanic"
		},
		SequaniTribe = {
			Name = "Sequani Tribe",
			Civilization = "germanic"
		},
		VanaTribe = {
			Name = "Vana Tribe",
			Civilization = "germanic",
			Gold = 5000,
			Commodities = {
				Lumber = 2500 -- half of the gold value
			}
		},
		-- Non-Playable Polities
		Crete = {
			Name = "Crete",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Crimea = {
			Name = "Crimea",
			Civilization = "germanic",
			Title = "Khanate"
		},
		France = {
			Name = "France",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Moldavia = {
			Name = "Moldavia",
			Civilization = "germanic",
			Title = "Principality"
		},
		Muscovy = {
			Name = "Muscovy",
			Civilization = "germanic",
			Title = "Dominion"
		},
		Poland = {
			Name = "Poland",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Portugal = {
			Name = "Portugal",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Rome = {
			Name = "Rome",
			Civilization = "germanic",
			Title = "Republic",
			Gold = 5000
		},
		Russia = {
			Name = "Russia",
			Civilization = "germanic",
			Title = "Empire"
		},
		Spain = {
			Name = "Spain",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Transylvania = {
			Name = "Transylvania",
			Civilization = "germanic",
			Title = "Principality"
		},
		Turkey = {
			Name = "Turkey",
			Civilization = "germanic",
			Title = "Empire"
		},
		Wallachia = {
			Name = "Wallachia",
			Civilization = "germanic",
			Title = "Principality"
		}
	}
	
	local NidavellirFactions = {
		Untersberg = {
			Name = "Untersberg",
			Civilization = "gnome",
			Title = "Kingdom",
			Gold = 7500,
			Commodities = {
				Lumber = 3750 -- half of the gold value
			}
		},
		-- Dwarven clans
		NorlundClan = {
			Name = "Norlund Clan",
			Civilization = "dwarf",
			Gold = 3000,
			Commodities = {
				Lumber = 1500 -- half of the gold value
			}
		},
		ShinsplitterClan = {
			Name = "Shinsplitter Clan",
			Civilization = "dwarf",
			Gold = 7500,
			Commodities = {
				Lumber = 3750 -- half of the gold value
			}
		},
		ShorbearClan = {
			Name = "Shorbear Clan",
			Civilization = "dwarf",
			Gold = 9000, -- 300 / 20 * 600 (base value divided by 20, the usual level 1 Wesnoth unit gold cost, and multiplied by 600, the basic military unit gold cost in Wyrmsun)
			Commodities = {
				Lumber = 4500 -- half of the gold value
			}
		},
		-- Dwarven polities
		KalKartha = {
			Name = "Kal Kartha",
			Civilization = "dwarf",
			Title = "Lordship"
		},
		Knalga = {
			Name = "Knalga",
			Civilization = "dwarf",
			Title = "Lordship"
		},
		Lyr = {
			Name = "Lyr",
			Civilization = "dwarf",
			Title = "Lordship"
		},
		-- Goblin tribes
		KhagTribe = {
			Name = "Khag Tribe",
			Civilization = "goblin",
			Gold = 750,
			Commodities = {
				Lumber = 375 -- half of the gold value
			}
		},
		LggiTribe = {
			Name = "Lggi Tribe",
			Civilization = "goblin",
			Gold = 2700,
			Commodities = {
				Lumber = 1350 -- half of the gold value
			}
		}
	}
	
	local function AddFactionTable(faction_table)
		for key, value in pairs(faction_table) do
			Factions[key] = {}
			Factions[key]["Name"] = faction_table[key].Name
			Factions[key]["Civilization"] = faction_table[key].Civilization
			if (faction_table[key].Title ~= nil) then
				Factions[key]["Title"] = faction_table[key].Title
			end
			if (faction_table[key].Gold ~= nil) then
				Factions[key]["Gold"] = faction_table[key].Gold
			end
			Factions[key]["Commodities"] = {}
			if (faction_table[key].Commodities ~= nil) then
				if (faction_table[key].Commodities.Lumber ~= nil) then
					Factions[key].Commodities["Lumber"] = faction_table[key].Commodities.Lumber
				end
			end
			Factions[key]["Technologies"] = {}
			Factions[key]["Diplomacy"] = {}
		end
	end
	
	if (world == "Earth") then
		AddFactionTable(EarthFactions)
	elseif (world == "Nidavellir") then
		AddFactionTable(NidavellirFactions)
	elseif (world == "Random") then
		AddFactionTable(NidavellirFactions)
		AddFactionTable(EarthFactions)
	end
end
