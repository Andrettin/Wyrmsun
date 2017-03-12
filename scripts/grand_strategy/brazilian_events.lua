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
--      (c) Copyright 2016-2017 by Andrettin
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
	Description = "A new tram company has been founded in PROVINCE_SETTLEMENT_NAME, the \"Companhia de Carris de Ferro da Cidade a Boavista\"! The trams run by this company link the old center of the city to the Tijuca district.",
	World = "Earth",
	Conditions = function(s)
		if (
			GetProvinceOwner("Rio de Janeiro") == EventFaction.Name
			and GetProvinceCivilization("Rio de Janeiro") == "portuguese"
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
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 100)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-tramway-network", true)
		end
	},
	OptionTooltips = {"+100 Copper\nA Tramway Network is built in PROVINCE_NAME"}
})

DefineGrandStrategyEvent("Companhia do Caminho de Carris de Ferro do Jardim Botanico", { -- Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", pp. 7-9, 19.
	Description = "A new tram company has been founded in PROVINCE_SETTLEMENT_NAME, the \"Companhia do Caminho de Carris de Ferro do Jardim Botanico\"! The trams run by this company link the city center to the district of Gavea, where the Jardim Botanico (the city's botanical garden) is located.",
	World = "Earth",
	Conditions = function(s)
		if (
			GetProvinceOwner("Rio de Janeiro") == EventFaction.Name
			and GetProvinceCivilization("Rio de Janeiro") == "portuguese"
			-- add a railroad/tram technology as requirement
			and SyncRand(20) == 0
		) then
			EventProvince = WorldMapProvinces.RiodeJaneiro
			return true
		else
			return false
		end
	end,
	HistoricalYear = 1868, -- the concession was obtained in 1856, and was acquired by the Baron of Mauá in 1862; in November 1866 the American Charles B. Greenough acquired the concession (founding the "Botanical Garden Rail Road Company Ltd." in America to gather capital); authorization to begin operations in Brazil arrived only in April 1868; in June 1868 the works commenced; in September 1868 the first part of the line (linking the Rua do Ouvidor to the Largo do Machado) was completed; in 1892 the company electrified its vehicles
	Options = {"~!OK"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 100)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-tramway-network", true)
		end
	},
	OptionTooltips = {"+100 Copper\nA Tramway Network is built in PROVINCE_NAME"}
})

DefineGrandStrategyEvent("Companhia Ferro-Carril de Sao Cristovao", { -- Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", pp. 9-10.
	Description = "A new tram company has been founded in PROVINCE_SETTLEMENT_NAME, the \"Companhia Ferro-Carril de Sao Cristovao\"! The trams run by this company link the city center to the districts of Sao Cristovao, Caju, Rio Comprido and Saco do Alferes.",
	World = "Earth",
	Conditions = function(s)
		if (
			GetProvinceOwner("Rio de Janeiro") == EventFaction.Name
			and GetProvinceCivilization("Rio de Janeiro") == "portuguese"
			-- add a railroad/tram technology as requirement
			and SyncRand(20) == 0
		) then
			EventProvince = WorldMapProvinces.RiodeJaneiro
			return true
		else
			return false
		end
	end,
	HistoricalYear = 1873, -- the concession was obtained in 1868; two North Americans acquired this concession and that of the "Companhia de Carris de Ferro da Cidade a Boavista" company, joining them in a larger company founded in New York called "The Rio de Janeiro Street Railway Co." and in 1869 they acquire the authorization to begin operations in Brazil; in 1873 the company was acquired by Brazilian investors, and received the name of "Companhia Ferro-Carril de Sao Cristovao" and in the same year the first part of its tramways began operations
	Options = {"~!OK"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 100)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-tramway-network", true)
		end
	},
	OptionTooltips = {"+100 Copper\nA Tramway Network is built in PROVINCE_NAME"}
})

DefineGrandStrategyEvent("Companhia Ferro-Carril Carioca", { -- Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", pp. 11-12.
	Description = "A new tram company has been founded in PROVINCE_SETTLEMENT_NAME, the \"Companhia Ferro-Carril Carioca\"! The trams run by this company link the hills of Santa Teresa and Paula Mattos to the Santo Antonio hill in the city center, building their terminal station at its foot, in the Largo da Carioca.",
	World = "Earth",
	Conditions = function(s)
		if (
			GetProvinceOwner("Rio de Janeiro") == EventFaction.Name
			and GetProvinceCivilization("Rio de Janeiro") == "portuguese"
			-- add a railroad/tram technology as requirement
			and SyncRand(20) == 0
		) then
			EventProvince = WorldMapProvinces.RiodeJaneiro
			return true
		else
			return false
		end
	end,
	HistoricalYear = 1892, -- the "Empresa Ferro-Carril de Santa Teresa" acquired the concession for a line from the city center to the hills of Santa Teresa and Paula Mattos in 1872; in 1885 the company changed its name to "Empresa do Plano Inclinado de Santa Teresa"; in 1891, the "Companhia Ferro-Carril Carioca" was founded and acquired the concession of the "Empresa do Plano Inclinado de Santa Teresa"; and in 1892, the company obtained authorization to extend its lines to the Santo Antônio hill in the city center, where they built their terminal station in the Largo da Carioca; in 1896 the company electrified its vehicles
	Options = {"~!OK"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 100)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-tramway-network", true)
		end
	},
	OptionTooltips = {"+100 Copper\nA Tramway Network is built in PROVINCE_NAME"}
})

DefineGrandStrategyEvent("Companhia Locomotora", { -- Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 12.
	Description = "A new tram company has been founded in PROVINCE_SETTLEMENT_NAME, the \"Companhia Locomotora\"! The trams run by this company transport cargo through the city center.",
	World = "Earth",
	Conditions = function(s)
		if (
			GetProvinceOwner("Rio de Janeiro") == EventFaction.Name
			and GetProvinceCivilization("Rio de Janeiro") == "portuguese"
			-- add a railroad/tram technology as requirement
			and SyncRand(20) == 0
		) then
			EventProvince = WorldMapProvinces.RiodeJaneiro
			return true
		else
			return false
		end
	end,
	HistoricalYear = 1865, -- the "Companhia Locomotora" was founded in 1865
	Options = {"~!OK"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 100)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-tramway-network", true)
		end
	},
	OptionTooltips = {"+100 Copper\nA Tramway Network is built in PROVINCE_NAME"}
})

DefineGrandStrategyEvent("Companhia Ferro-Carril Fluminense", { -- Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 12.
	Description = "A new tram company has been founded in PROVINCE_SETTLEMENT_NAME, the \"Companhia Ferro-Carril Fluminense\"! The trams run by this company function in the city's center, transporting both passagengers and cargo.",
	World = "Earth",
	Conditions = function(s)
		if (
			GetProvinceOwner("Rio de Janeiro") == EventFaction.Name
			and GetProvinceCivilization("Rio de Janeiro") == "portuguese"
			-- add a railroad/tram technology as requirement
			and SyncRand(20) == 0
		) then
			EventProvince = WorldMapProvinces.RiodeJaneiro
			return true
		else
			return false
		end
	end,
	HistoricalYear = 1874, -- in 1874 the "Companhia Ferro-Carril Fluminense" acquired a concession for a line in the city center
	Options = {"~!OK"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 100)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-tramway-network", true)
		end
	},
	OptionTooltips = {"+100 Copper\nA Tramway Network is built in PROVINCE_NAME"}
})

DefineGrandStrategyEvent("Companhia de Carris Urbanos", { -- Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 12.
	Description = "A number of tram companies located in PROVINCE_SETTLEMENT_NAME have been amalgamated into a new enterprise, the \"Companhia de Carris Urbanos\"! The trams run by this company link the city center to ferry and railway terminals, specializing in the transport of cargo.",
	World = "Earth",
	Conditions = function(s)
		if (
			GetProvinceOwner("Rio de Janeiro") == EventFaction.Name
			and GetProvinceCivilization("Rio de Janeiro") == "portuguese"
			-- add a railroad/tram technology as requirement
			and GetGrandStrategyProvinceData("Rio de Janeiro", "Modifier", "upgrade-tramway-network") -- since the company is an amalgamation of previously-existing tram companies in Rio de Janeiro, this event should only happen if a tramway network modifier is already present
			and SyncRand(20) == 0
		) then
			EventProvince = WorldMapProvinces.RiodeJaneiro
			return true
		else
			return false
		end
	end,
	HistoricalYear = 1878, -- in 1878 the the tram companies "Locomotora", "Fluminense", "Carioca & Riachuelo" and "Santa Teresa" were amalgamated into the "Companhia de Carris Urbanos"
	Options = {"~!OK"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 100)
		end
	},
	OptionTooltips = {"+100 Copper"}
})

DefineGrandStrategyEvent("Companhia Ferro Carril de Vila Isabel", { -- Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 13.
	Description = "A new tram company has been founded in PROVINCE_SETTLEMENT_NAME, the \"Companhia Ferro Carril de Vila Isabel\"! The trams run by this company link the city center to the districts of Engenho Novo and Andarai Grande. The company also engaged in the real estate business, buying and selling land in the area served by their tramways, as the new transport linkages increased the value of such land.",
	World = "Earth",
	Conditions = function(s)
		if (
			GetProvinceOwner("Rio de Janeiro") == EventFaction.Name
			and GetProvinceCivilization("Rio de Janeiro") == "portuguese"
			-- add a railroad/tram technology as requirement
			and SyncRand(20) == 0
		) then
			EventProvince = WorldMapProvinces.RiodeJaneiro
			return true
		else
			return false
		end
	end,
	HistoricalYear = 1875, -- in 1872 the "Companhia Ferro Carril de Vila Isabel" bought the farm of Macacos (which was in the area which would be linked to by their tramways) and founded the "Companhia Arquitetônica" to handle the real estate aspect of their business (selling the land where the farm had been and which had become more valuable with the tramways); in 1873 the first line of the company, from the city center to the farm of Macacos, began functioning; in 1875 the rest of the company's lines began operations; in 1886 the company acquired the "Empresa Ferro-Carril Vila Guarani"; in 1889 the company was bought by British investors; in 1899 the company acquired the "Companhia Ferro-Carril de Cachambi" and was itself acquired by the German company "Brasilianische Electricitäts Gesellschaft"
	Options = {"~!OK"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 100)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-tramway-network", true)
		end
	},
	OptionTooltips = {"+100 Copper\nA Tramway Network is built in PROVINCE_NAME"}
})

DefineGrandStrategyEvent("Companhia Ferro-Carril e Hotel Corcovado", { -- Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 18.
	Description = "A new tram company has been founded in PROVINCE_SETTLEMENT_NAME, the \"Companhia Ferro-Carril e Hotel Corcovado\"! The trams run by this company link Cosme Velho to Corcovado. The company also possesses a hotel in front of one of their stations.",
	World = "Earth",
	Conditions = function(s)
		if (
			GetProvinceOwner("Rio de Janeiro") == EventFaction.Name
			and GetProvinceCivilization("Rio de Janeiro") == "portuguese"
			-- add a railroad/tram technology as requirement
			-- this was a steam tram company, maybe it should require a more advanced railroad/tram technology?
			and SyncRand(20) == 0
		) then
			EventProvince = WorldMapProvinces.RiodeJaneiro
			return true
		else
			return false
		end
	end,
	HistoricalYear = 1884, -- in October 1884 the first part of tramway line of the "Companhia Ferro-Carril e Hotel Corcovado" began operations
	Options = {"~!OK"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 100)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-tramway-network", true)
		end
	},
	OptionTooltips = {"+100 Copper\nA Tramway Network is built in PROVINCE_NAME"}
})

DefineGrandStrategyEvent("Exposicao dos Caminhos de Ferro Brasileiros", { -- Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 18.
	Description = "The \"Exposicao dos Caminhos de Ferro Brasileiros\" fair has taken place in Rio de Janeiro, exhibiting various sorts of rail machinery. A gleam of progress!",
	World = "Earth",
	Conditions = function(s)
		if (
			GetProvinceOwner("Rio de Janeiro") == EventFaction.Name
			and GetProvinceCivilization("Rio de Janeiro") == "portuguese"
			-- add a railroad technology as requirement
			and SyncRand(20) == 0
		) then
			EventProvince = WorldMapProvinces.RiodeJaneiro
			return true
		else
			return false
		end
	end,
	HistoricalYear = 1887, -- the fair occurred in 1887
	Options = {"~!OK"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
		end
	},
	OptionTooltips = {"+1 Prestige"}
})

DefineGrandStrategyEvent("Sao Paulo Tramway Light and Power Co. Ltd.", { -- Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", pp. 20-21.
	Description = "A new tram company has been founded in PROVINCE_SETTLEMENT_NAME, the \"Sao Paulo Tramway Light and Power Co. Ltd.\"! The company was founded with Canadian capital, and was heavily invested in the electricity business as well.",
	World = "Earth",
	Conditions = function(s)
		if (
			GetProvinceOwner("Sao Paulo") == EventFaction.Name
			and GetProvinceCivilization("Sao Paulo") == "portuguese"
			and GetProvinceCivilization("Ontario") == "anglo-saxon" -- this should be changed to English when that culture gets added to the game
			-- add a railroad/tram technology as requirement
			and SyncRand(20) == 0
		) then
			EventProvince = WorldMapProvinces.SaoPaulo
			return true
		else
			return false
		end
	end,
	HistoricalYear = 1904, -- the company already existed in 1904
	Options = {"~!OK"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 100)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-tramway-network", true)
		end
	},
	OptionTooltips = {"+100 Copper\nA Tramway Network is built in PROVINCE_NAME"}
})

DefineGrandStrategyEvent("The Rio de Janeiro Tramway, Light and Power Co. Ltd.", { -- Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 24.
	Description = "A new tram company has been founded in PROVINCE_SETTLEMENT_NAME, the \"The Rio de Janeiro Tramway, Light and Power Co. Ltd.\"! The company was founded with Canadian capital, and was heavily invested in the electricity business as well.",
	World = "Earth",
	Conditions = function(s)
		if (
			GetProvinceOwner("Rio de Janeiro") == EventFaction.Name
			and GetProvinceCivilization("Rio de Janeiro") == "portuguese"
			and GetProvinceCivilization("Ontario") == "anglo-saxon" -- this should be changed to English when that culture gets added to the game
			-- add a railroad/tram technology as requirement
			and SyncRand(20) == 0
		) then
			EventProvince = WorldMapProvinces.RiodeJaneiro
			return true
		else
			return false
		end
	end,
	HistoricalYear = 1905, -- the company received permission to function in Brazil on 30th May 1905
	Options = {"~!OK"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 100)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-tramway-network", true)
		end
	},
	OptionTooltips = {"+100 Copper\nA Tramway Network is built in PROVINCE_NAME"}
})
