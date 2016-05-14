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
--      (c) Copyright 2016 by Andrettin
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

DefineGrandStrategyEvent("Companhia de Carris de Ferro da Cidade a Boavista", { -- Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 6.
	Description = "A new tram company has been founded in PROVINCE_SETTLEMENT_NAME, the \"Companhia de Carris de Ferro da Cidade a Boavista\"! The trams ran by this company link the old center of the city to the Tijuca district.",
	World = "Earth",
	Conditions = function(s)
		if (
			GetProvinceOwner("Rio de Janeiro") == EventFaction.Name
			and GetProvinceCivilization("Rio de Janeiro") == "latin" -- this should be changed to Portuguese or Brazilian when those cultures get added to the game
			-- add a railroad/tram technology as requirement
			and SyncRand(20) == 0
		) then
			EventProvince = WorldMapProvinces.RiodeJaneiro
			return true
		else
			return false
		end
	end,
	HistoricalYear = 1859, -- the concession was obtained in 1856, and the company's tramway began operations in 1859
	Options = {"~!OK"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", 100)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-tramway", true)
		end
	},
	OptionTooltips = {"+100 Gold\nA Tramway is built in PROVINCE_NAME"}
})

DefineGrandStrategyEvent("Companhia do Caminho de Carris de Ferro do Jardim Botanico", { -- Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", pp. 7-9.
	Description = "A new tram company has been founded in PROVINCE_SETTLEMENT_NAME, the \"Companhia do Caminho de Carris de Ferro do Jardim Botanico\"! The trams ran by this company link the city center to the district of Gavea, where the Jardim Botanico (the city's botanical garden) is located.",
	World = "Earth",
	Conditions = function(s)
		if (
			GetProvinceOwner("Rio de Janeiro") == EventFaction.Name
			and GetProvinceCivilization("Rio de Janeiro") == "latin" -- this should be changed to Portuguese or Brazilian when those cultures get added to the game
			-- add a railroad/tram technology as requirement
			and SyncRand(20) == 0
		) then
			EventProvince = WorldMapProvinces.RiodeJaneiro
			return true
		else
			return false
		end
	end,
	HistoricalYear = 1868, -- the concession was obtained in 1856, and was acquired by the Baron of Mauá in 1862; in November 1866 the American Charles B. Greenough acquired the concession (founding the "Botanical Garden Rail Road Company Ltd." in America to gather capital); authorization to begin operations in Brazil arrived only in April 1868; in June 1868 the works commenced; in September 1868 the first part of the line (linking the Rua do Ouvidor to the Largo do Machado) was completed
	Options = {"~!OK"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", 100)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-tramway", true)
		end
	},
	OptionTooltips = {"+100 Gold\nA Tramway is built in PROVINCE_NAME"}
})

DefineGrandStrategyEvent("Companhia Ferro-Carril de Sao Cristovao", { -- Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", pp. 9-10.
	Description = "A new tram company has been founded in PROVINCE_SETTLEMENT_NAME, the \"Companhia Ferro-Carril de Sao Cristovao\"! The trams ran by this company link the city center to the districts of Sao Cristovao, Caju, Rio Comprido and Saco do Alferes.",
	World = "Earth",
	Conditions = function(s)
		if (
			GetProvinceOwner("Rio de Janeiro") == EventFaction.Name
			and GetProvinceCivilization("Rio de Janeiro") == "latin" -- this should be changed to Portuguese or Brazilian when those cultures get added to the game
			-- add a railroad/tram technology as requirement
			and SyncRand(20) == 0
		) then
			EventProvince = WorldMapProvinces.RiodeJaneiro
			return true
		else
			return false
		end
	end,
	HistoricalYear = 1873, -- the concession was obtained in 1868; two North Americans acquired this concession and that of the "Companhia de Carris de Ferro da Cidade a Boavista" company, joining them in a larger company founded in New York called "The Rio de Janeiro Street Railway Co." and in 1869 they acquire the authorization to begin operations in Brazil; in 1873 the company was acquired by Brazilian investors, and received the name of "Companhia Ferro-Carril de Sao Cristovao"
	Options = {"~!OK"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", 100)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-tramway", true)
		end
	},
	OptionTooltips = {"+100 Gold\nA Tramway is built in PROVINCE_NAME"}
})
