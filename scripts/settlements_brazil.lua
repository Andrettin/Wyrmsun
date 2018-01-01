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
--      (c) Copyright 2017-2018 by Andrettin
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

DefineSettlement("florianopolis", {
	Name = "Florianopolis",
	MapTemplate = "earth",
	Position = {2732, 2674}, -- is actually in the island of Santa Catharina, but there's not enough space there for a settlement
	Major = true,
	CulturalNames = {
		"portuguese", "Florianopolis" -- Florianopolis/Desterro
	},
	Cores = {
		"brazil"
	},
	HistoricalOwners = {
	},
	HistoricalBuildings = {
	},
	Regions = {"america", "south-america"}
})

DefineSettlement("laguna", {
	Name = "Laguna",
	MapTemplate = "earth",
	Position = {2664, 2756},
	Major = true,
	CulturalNames = {
		"portuguese", "Laguna"
	},
	Cores = {
		"brazil"
	},
	HistoricalOwners = {
		1654, "portugal", -- Laguna was founded in 1654; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1822, "brazil" -- Brazil became independent in 1822; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1654, 0, "town-hall"
	},
	Regions = {"america", "south-america"}
})

DefineSettlement("porto-alegre", {
	Name = "Porto Alegre",
	MapTemplate = "earth",
	Position = {2675, 2733},
	Major = true,
	CulturalNames = {
		"portuguese", "Porto Alegre"
	},
	Cores = {
		"brazil"
	},
	HistoricalOwners = {
		1740, "portugal", -- Porto Alegre was founded in 1740; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1822, "brazil" -- Brazil became independent in 1822; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1740, 0, "town-hall"
	},
	Regions = {"america", "south-america"}
})

DefineSettlement("recife", {
	Name = "Recife",
	MapTemplate = "earth",
	Position = {3046, 2224},
	Major = true,
	CulturalNames = {
--		"dutch", "Mauritsstad", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 128.
		"portuguese", "Recife"
	},
	Cores = {
		"brazil"
	},
	HistoricalOwners = {
		1536, "portugal", -- Recife was founded in 1536/1561; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1630, "netherlands", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 128.
		1655, "portugal", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 128.
		1822, "brazil" -- Brazil became independent in 1822; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1536, 0, "town-hall",
		1828, 0, "university" -- Law college founded in Olinda in 1828. Source: Jeffrey D. Needell, "Party Formation and State-Making: The Conservative Party and the Reconstruction of the Brazilian State, 1831-1840", Hispanic American Historical Review, vol. 81, 2001, p. 293.
	},
	Regions = {"america", "south-america"}
})

DefineSettlement("rio-grande", {
	Name = "Rio Grande",
	MapTemplate = "earth",
	Position = {2652, 2779},
	Major = true,
	CulturalNames = {
		"portuguese", "Rio Grande"
	},
	Cores = {
		"brazil"
	},
	HistoricalOwners = {
		1736, "portugal", -- Rio Grande/S. Pedro was founded in 1736; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1822, "brazil" -- Brazil became independent in 1822; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1736, 0, "town-hall"
	},
	Regions = {"america", "south-america"}
})

DefineSettlement("rio-de-janeiro", {
	Name = "Rio de Janeiro",
	MapTemplate = "earth",
	Position = {2856, 2569},
	Major = true,
	CulturalNames = {
		"french", "Henriville",
		"portuguese", "Rio de Janeiro"
	},
	Cores = {
		"brazil"
	},
	HistoricalOwners = {
		1567, "portugal", -- Rio de Janeiro was founded by the Portuguese in 1516/1567; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 107-110.
		1822, "brazil" -- Brazil became independent in 1822; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1567, 0, "town-hall",
		1810, 0, "barracks", -- Academia Real Militar founded in Rio de Janeiro in 1810. Source: Silvia Fernanda de Mendonça Figueirôa, "Ciência e tecnologia no Brasil Imperial: Guilherme Schüch, Barão de Capanema (1824-1908)", 2005, p. 440.
		1859, 0, "railroad", -- the "Companhia de Carris de Ferro da Cidade a Boavista" tramway company obtained its concession in Rio de Janeiro in 1856, and began operations in 1859; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 6.
		1862, 0, "university" -- Instituto Politécnico Brasileiro founded in Rio de Janeiro in 1862. Source: Silvia Fernanda de Mendonça Figueirôa, "Ciência e tecnologia no Brasil Imperial: Guilherme Schüch, Barão de Capanema (1824-1908)", 2005, p. 446.
	},
	HistoricalPopulation = {
		1872, 274972, -- in 1872, the population of the city of Rio de Janeiro was 274,972; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 4.
		1890, 522651, -- in 1890, the population of the city of Rio de Janeiro was 522,651; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 4.
		1900, 691565, -- in 1900, the population of the city of Rio de Janeiro was 691,565; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 4.
		1906, 811444 -- in 1906, the population of the city of Rio de Janeiro was 811,444; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 4.
	},
	Regions = {"america", "south-america"}
})

DefineSettlement("salvador", {
	Name = "Salvador",
	MapTemplate = "earth",
	Position = {2964, 2343},
	Major = true,
	CulturalNames = {
		"portuguese", "Salvador"
	},
	Cores = {
		"brazil"
	},
	HistoricalOwners = {
		1549, "portugal", -- Salvador was founded by the Portuguese in 1549; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 107-110, 214-215.
		1822, "brazil" -- Brazil became independent in 1822; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1549, 0, "town-hall"
	},
	Regions = {"america", "south-america"}
})

DefineSettlement("sao-paulo", {
	Name = "Sao Paulo",
	MapTemplate = "earth",
	Position = {2752, 2583},
	Major = true,
	CulturalNames = {
		"portuguese", "Sao Paulo" -- "São Paulo"
	},
	Cores = {
		"brazil"
	},
	HistoricalOwners = {
		1532, "portugal", -- São Paulo was founded in 1532/1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1822, "brazil" -- Brazil became independent in 1822; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1532, 0, "town-hall",
		1827, 0, "university", -- Law college existent in São Paulo in 1827. Source: Otávio Tarquínio de Sousa, "Bernardo Pereira de Vasconcelos", p. 66.
		1904, 0, "railroad" -- the "Sao Paulo Tramway Light and Power Co. Ltd." (tramway and electricity generation company) already existed by 1904; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", pp. 20-21.
	},
	Regions = {"america", "south-america"}
})
