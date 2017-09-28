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

DefineProvince("Argentina", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1700, "upgrade-college", true, -- College or seminary founded in Cordoba in 1700(?). Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
--		1795, "upgrade-college", false -- College or seminary abolished in Cordoba in 1795(?). Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
	},
	Regions = {"america", "south-america"}
})

DefineProvince("Bolivia", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	HistoricalModifiers = {
		1621, "upgrade-university", true -- University founded in Chuquisaca (Charcas) in 1621. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
	},
	Regions = {"america", "south-america"}
})

DefineProvince("Chile", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1738, "upgrade-university", true -- University founded in Santiago in 1738. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
	},
	Regions = {"america", "south-america"}
})

DefineProvince("Colombia", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1626, "upgrade-university", true, -- University Sto. Tomás founded in Bogota in 1626. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
		1704, "upgrade-university", false, -- University Sto. Tomás abolished in Bogota in 1704. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
		1774, "upgrade-university", true -- University founded in Popayan in 1774. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
	},
	Regions = {"america", "south-america"}
})

DefineProvince("Cuba", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1721, "upgrade-college", true -- College or seminary founded in Havana in 1721 or 1728. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
	},
	Regions = {"america", "caribbean"}
})

DefineProvince("Ecuador", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1769, "upgrade-university", true, -- University S. Gregorio founded in Quito in 1769. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
	},
	Regions = {"america", "south-america"}
})

DefineProvince("Guatemala", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1676, "upgrade-university", true -- University founded in Guatemala in 1676. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
	},
	Regions = {"america", "central-america"}
})

DefineProvince("Massachusetts", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1636, "upgrade-university", true -- Harvard university founded in 1636. Source: "Atlas de História Mundial", 2001, p. 23.
	},
	Regions = {"america", "north-america"}
})

DefineProvince("Mexico", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1551, "upgrade-university", true, -- University founded in Mexico City in 1551. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
--		1778, "upgrade-college", true, -- College or seminary founded in Merida in 1778. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
--		1791, "upgrade-college", true -- College or seminary founded in Guadalajara in 1791. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
	},
	Regions = {"america", "north-america"}
})

DefineProvince("Minas Gerais", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Hills",
	Claims = {
		"portuguese", "brazil"
	},
	HistoricalModifiers = {
		1750, "upgrade-college", true, -- Seminary founded in Mariana in 1750. Source: Keila Grinberg; Ricardo Salles, "O Brasil Imperial", vol. I, 2009, p. 296.
		1839, "upgrade-college", true, -- Escola de Farmácia de Ouro Preto founded in 1839. Source: Keila Grinberg; Ricardo Salles, "O Brasil Imperial", vol. I, 2009, p. 296.
		1876, "upgrade-college", true -- Escola de Minas de Ouro Preto founded in 1876. Source: Keila Grinberg; Ricardo Salles, "O Brasil Imperial", vol. I, 2009, pp. 292, 296.
	},
	Regions = {"america", "south-america"}
})

DefineProvince("Nicaragua", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1812, "upgrade-university", true -- University founded in Leon in 1812. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
	},
	Regions = {"america", "central-america"}
})

DefineProvince("Ontario", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Regions = {"america", "north-america"}
})

DefineProvince("Peru", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1551, "upgrade-university", true, -- University founded in Lima in 1551. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
--		1680, "upgrade-college", true, -- College or seminary founded in Huamanga in 1680. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
--		1692, "upgrade-college", true -- College or seminary founded in Cuzco in 1692. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
	},
	Regions = {"america", "south-america"}
})

DefineProvince("Rio de Janeiro", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"portuguese", "brazil"
	},
	HistoricalModifiers = {
		1865, "upgrade-tramway-network", true, -- the "Companhia Locomotora" (tramway company) was founded in 1865; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 12.
		1868, "upgrade-tramway-network", true, -- first part of the tramway line of the "Companhia do Caminho de Carris de Ferro do Jardim Botânico" (tramway company) was completed in 1868; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", pp. 7-9.
		1873, "upgrade-tramway-network", true, -- first part of the tramway lines of the "Companhia Ferro-Carril de Sao Cristovao" (tramway company) began operations in 1873; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", pp. 9-10.
		1873, "upgrade-tramway-network", true, -- first part of the tramway lines of the "Companhia Ferro Carril de Vila Isabel" (tramway company) began functioning in 1873; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 13.
		1874, "upgrade-tramway-network", true, -- in 1874 the "Companhia Ferro-Carril Fluminense" (tramway company) acquired a concession for a line in the city center; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 12.
		1884, "upgrade-tramway-network", true, -- in October 1884 the first part of tramway line of the "Companhia Ferro-Carril e Hotel Corcovado" began operations; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 18.
		1892, "upgrade-tramway-network", true, -- the "Companhia Ferro-Carril Carioca" (tramway company) built the terminal station for their lines in the Largo da Carioca in 1892; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", pp. 11-12.
		1905, "upgrade-tramway-network", true, -- the "The Rio de Janeiro Tramway, Light and Power Co. Ltd." (tramway and electricity generation company) received permission to function in Brazil on 30th May 1905; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 24.
	},
	Regions = {"america", "south-america"}
})

DefineProvince("Santo Domingo", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1538, "upgrade-university", true -- University C. Sto. Tomás founded in Santo Domingo in 1538. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
	},
	Regions = {"america", "caribbean"}
})

DefineProvince("Venezuela", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1721, "upgrade-university", true, -- University founded in Caracas in 1721. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
--		1807, "upgrade-college", true -- College or seminary founded in Mérida in 1807. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
	},
	Regions = {"america", "south-america"}
})
