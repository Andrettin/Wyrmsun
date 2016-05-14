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

DefineProvince("Argentina", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1700, "upgrade-college", true, -- College or seminary founded in Cordoba in 1700(?). Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
		1784, "upgrade-college", true, -- College or seminary founded in Buenos Aires in 1784. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
--		1795, "upgrade-college", false -- College or seminary abolished in Cordoba in 1795(?). Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
	},
	Regions = {"America", "South America"}
})

DefineProvince("Bolivia", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	HistoricalModifiers = {
		1621, "upgrade-university", true -- University founded in Chuquisaca (Charcas) in 1621. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
	},
	Regions = {"America", "South America"}
})

DefineProvince("Chile", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1738, "upgrade-university", true -- University founded in Santiago in 1738. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
	},
	Regions = {"America", "South America"}
})

DefineProvince("Colombia", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1626, "upgrade-university", true, -- University Sto. Tomás founded in Bogota in 1626. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
		1704, "upgrade-university", false, -- University Sto. Tomás abolished in Bogota in 1704. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
		1774, "upgrade-university", true -- University founded in Popayan in 1774. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
	},
	Regions = {"America", "South America"}
})

DefineProvince("Cuba", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1721, "upgrade-college", true -- College or seminary founded in Havana in 1721 or 1728. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
	},
	Regions = {"America", "Caribbean"}
})

DefineProvince("Ecuador", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1769, "upgrade-university", true, -- University S. Gregorio founded in Quito in 1769. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
	},
	Regions = {"America", "South America"}
})

DefineProvince("Guatemala", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1676, "upgrade-university", true -- University founded in Guatemala in 1676. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
	},
	Regions = {"America", "Central America"}
})

DefineProvince("Massachusetts", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1636, "upgrade-university", true -- Harvard university founded in 1636. Source: Atlas de História Mundial, 2001, p. 23.
	},
	Regions = {"America", "North America"}
})

DefineProvince("Mexico", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1551, "upgrade-university", true, -- University founded in Mexico City in 1551. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
--		1778, "upgrade-college", true, -- College or seminary founded in Merida in 1778. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
--		1791, "upgrade-college", true -- College or seminary founded in Guadalajara in 1791. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
	},
	Regions = {"America", "North America"}
})

DefineProvince("Minas Gerais", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Hills",
	Claims = {
		"latin", "Brazil"
	},
	HistoricalModifiers = {
		1750, "upgrade-college", true, -- Seminary founded in Mariana in 1750. Source: Keila Grinberg; Ricardo Salles, O Brasil Imperial, vol. I, 2009, p. 296.
		1839, "upgrade-college", true, -- Escola de Farmácia de Ouro Preto founded in 1839. Source: Keila Grinberg; Ricardo Salles, O Brasil Imperial, vol. I, 2009, p. 296.
		1876, "upgrade-college", true -- Escola de Minas de Ouro Preto founded in 1876. Source: Keila Grinberg; Ricardo Salles, O Brasil Imperial, vol. I, 2009, pp. 292, 296.
	},
	Regions = {"America", "South America"}
})

DefineProvince("Nicaragua", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1812, "upgrade-university", true -- University founded in Leon in 1812. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
	},
	Regions = {"America", "Central America"}
})

DefineProvince("Paraguay", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	HistoricalModifiers = {
		1776, "upgrade-college", true -- College or seminary founded in Asuncion in 1776. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
	},
	Regions = {"America", "South America"}
})

DefineProvince("Pernambuco", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"latin", "Brazil"
	},
	HistoricalModifiers = {
		1828, "upgrade-college", true -- Law college founded in Olinda in 1828. Source: Jeffrey D. Needell, “Party Formation and State-Making: The Conservative Party and the Reconstruction of the Brazilian State, 1831-1840”, Hispanic American Historical Review, vol. 81, 2001, p. 293.
	},
	Regions = {"America", "South America"}
})

DefineProvince("Peru", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1551, "upgrade-university", true, -- University founded in Lima in 1551. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
--		1680, "upgrade-college", true, -- College or seminary founded in Huamanga in 1680. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
--		1692, "upgrade-college", true -- College or seminary founded in Cuzco in 1692. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
	},
	Regions = {"America", "South America"}
})

DefineProvince("Rio de Janeiro", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"latin", "Brazil"
	},
	HistoricalPopulation = {
		-- In 1872, the population of the city of Rio de Janeiro was 274,972; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 4.
		-- In 1890, the population of the city of Rio de Janeiro was 522,651; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 4.
		-- In 1900, the population of the city of Rio de Janeiro was 691,565; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 4.
		-- In 1906, the population of the city of Rio de Janeiro was 811,444; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 4.
	},
	HistoricalModifiers = {
		1862, "upgrade-college", true, -- Instituto Politécnico Brasileiro founded in Rio de Janeiro in 1862. Source: Silvia Fernanda de Mendonça Figueirôa, "Ciência e tecnologia no Brasil Imperial: Guilherme Schüch, Barão de Capanema (1824-1908)", 2005, p. 446.
		1868, "upgrade-tramway", true -- Trams began operation in Rio de Janeiro in 1868; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 1.
	},
	Regions = {"America", "South America"}
})

DefineProvince("Santo Domingo", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1538, "upgrade-university", true -- University C. Sto. Tomás founded in Santo Domingo in 1538. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
	},
	Regions = {"America", "Caribbean"}
})

DefineProvince("Sao Paulo", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"latin", "Brazil"
	},
	HistoricalModifiers = {
		1827, "upgrade-college", true -- Law college existent in São Paulo in 1827. Source: Otávio Tarquínio de Sousa, Bernardo Pereira de Vasconcelos, p. 66.
	},
	Regions = {"America", "South America"}
})

DefineProvince("Venezuela", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1721, "upgrade-university", true, -- University founded in Caracas in 1721. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
--		1807, "upgrade-college", true -- College or seminary founded in Mérida in 1807. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
	},
	Regions = {"America", "South America"}
})
