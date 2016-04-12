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

DefineRegion("British Isles", {
	HistoricalPopulation = {
		-4000, (2750 + 5500 / 2) -- The British Isles had between 2,750 and 5,500 people at the end of the Mesolithic; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 148.
	}
})

DefineRegion("Cisleithania", {
	HistoricalPopulation = {
		1851, 17534948, -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 33.
		1910, 27963872 -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 33.
	}
})

DefineRegion("Czechoslovakia", {
	HistoricalPopulation = {
		1600, 2000000 -- 2 million people lived in Czechoslovakia around 1600; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
	}
})

DefineRegion("England", {
	HistoricalPopulation = {
		1401, 4000000, -- 4 million people lived in England during the 14th century; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
		1600, 5000000 -- 5 million people lived in England around 1600; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
	}
})

DefineRegion("Eurasia", {
	HistoricalPopulation = {
		-10000, 200000, -- CIS had a population of around 0.2 millions in 10,000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-9000, 200000, -- CIS had a population of around 0.2 millions in 9000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-8000, 400000, -- CIS had a population of around 0.4 millions in 8000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-7000, 500000, -- CIS had a population of around 0.5 millions in 7000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-6000, 800000, -- CIS had a population of around 0.8 millions in 6000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-5000, 1200000, -- CIS had a population of around 1.2 millions in 5000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-4000, 1800000, -- CIS had a population of around 1.8 millions in 4000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-3000, 2700000, -- CIS had a population of around 2.7 millions in 3000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-2000, 4100000, -- CIS had a population of around 4.1 millions in 2000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-1000, 6100000, -- CIS had a population of around 6.1 millions in 1000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html	
		0, 9200000, -- CIS had a population of around 9.2 millions in 0 AD; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html	
		100, 8600000, -- CIS had a population of around 8.6 millions in 100 AD; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html	
		200, 8100000, -- CIS had a population of around 8.1 millions in 200 AD; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html	
		300, 7700000, -- CIS had a population of around 7.7 millions in 300 AD; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html	
		400, 7400000, -- CIS had a population of around 7.4 millions in 400 AD; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html	
		500, 6900000 -- CIS had a population of around 6.9 millions in 500 AD; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
	}
})

DefineRegion("Europe", {
})

DefineRegion("France", {
	HistoricalPopulation = {
		1401, 21000000, -- 21 million people lived in France during the 14th century; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
		1600, 17000000 -- 17 million people lived in France around 1600; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
	}
})

DefineRegion("Gaul", {
	HistoricalPopulation = {
		-27, 5000000 -- 5 million people lived in France at the "Time of Augustus"; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
	}
})

DefineRegion("Germany-Netherlands", {
	HistoricalPopulation = {
		1401, 15000000, -- 15 million people lived in Germany-Netherlands during the 14th century; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
		1600, 20000000 -- 20 million people lived in Germany-Netherlands around 1600; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
	}
})

DefineRegion("Greece", {
	HistoricalPopulation = {
		-27, 3000000 -- 3 million people lived in Greece at the "Time of Augustus"; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
	}
})

DefineRegion("Iberia", {
	HistoricalPopulation = {
		-27, 6000000, -- 6 million people lived in Spain-Portugal at the "Time of Augustus"; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
		1401, 6000000, -- 6 million people lived in Spain-Portugal during the 14th century; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
		1600, 10000000 -- 10 million people lived in Spain-Portugal around 1600; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
	}
})

DefineRegion("Italy", {
	HistoricalPopulation = {
		-27, 14000000, -- 14 million people lived in Italy at the "Time of Augustus"; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
		1401, 11000000, -- 11 million people lived in Italy during the 14th century; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
		1600, 13000000 -- 13 million people lived in Italy around 1600; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
	}
})

DefineRegion("Northwest Europe", {
	HistoricalPopulation = {
		-7000, 100000 -- At the height of the Mesolithic the population in northwestern Europe was no larger than 100,000; since the Mesolithic in Northwestern Europe began around 10,000 BC and ended about 4000 BC, its height would have been in the middle, or 7000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, pp. 144, 148.
	}
})

DefineRegion("Poland", {
	HistoricalPopulation = {
		1600, 3000000 -- 3 million people lived in Poland around 1600; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
	}
})

DefineRegion("Roman Danube", {
	HistoricalPopulation = {
		-27, 2000000 -- 2 million people lived in the (Roman) Danube at the "Time of Augustus"; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
	}
})

DefineRegion("Scandinavia", {
	HistoricalPopulation = {
		1401, 2000000, -- 2 million people lived in Scandinavia during the 14th century; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
		1600, 2000000 -- 2 million people lived in Scandinavia around 1600; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
	}
})

DefineRegion("West and Central Europe", {
	HistoricalPopulation = {
		-10000, 500000, -- Non-CIS Europe had a population of around 0.5 millions in 10,000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-9000, 800000, -- Non-CIS Europe had a population of around 0.8 millions in 9000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-8000, 1100000, -- Non-CIS Europe had a population of around 1.1 millions in 8000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-7000, 1500000, -- Non-CIS Europe had a population of around 1.5 millions in 7000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-6000, 2100000, -- Non-CIS Europe had a population of around 2.1 millions in 6000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-5000, 3100000, -- Non-CIS Europe had a population of around 3.1 millions in 5000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-4000, 4400000, -- Non-CIS Europe had a population of around 4.4 millions in 4000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-3000, 6600000, -- Non-CIS Europe had a population of around 6.6 millions in 3000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-2000, 10300000, -- Non-CIS Europe had a population of around 10.3 millions in 2000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		-1000, 16700000, -- Non-CIS Europe had a population of around 16.7 millions in 1000 BC; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		0, 29300000, -- Non-CIS Europe had a population of around 29.3 millions in 0 AD; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		100, 31000000, -- Non-CIS Europe had a population of around 31 millions in 100 AD; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		200, 32600000, -- Non-CIS Europe had a population of around 32.6 millions in 200 AD; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		300, 31200000, -- Non-CIS Europe had a population of around 31.2 millions in 300 AD; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		400, 29700000, -- Non-CIS Europe had a population of around 29.7 millions in 400 AD; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
		500, 25900000 -- Non-CIS Europe had a population of around 25.9 millions in 500 AD; Source: http://themasites.pbl.nl/tridion/en/themasites/hyde/basicdrivingfactors/population/index-2.html
	}
})
