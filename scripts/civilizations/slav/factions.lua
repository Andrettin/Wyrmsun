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
--      (c) Copyright 2015-2016 by Andrettin
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

DefineFaction("budini-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Budini Tribe",
	Civilization = "slav", -- accurate?
	Type = "tribe",
	Colors = {"blue"}
})

DefineFaction("venedae-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Venedae Tribe",
	Civilization = "slav",
	Type = "tribe",
	Colors = {"yellow"}
})

DefineFaction("bohemia", {
	Name = "Bohemia",
	Civilization = "slav",
	Type = "polity",
--	Language = "czech",
	Colors = {"red"},
	DefaultTier = "duchy",
	PersonalNames = { -- Czech names
		"female", "Agnes", -- Agnes Přemyslovna, youngest daughter of the Czech king Přemysl Otakar I; founded St. Agnes' Cloister (in Prague) in 1231, and became its mother superior; Source: Alena Ježková, "77 Prague Legends", 2006, p. 36.
		"female", "Judita", -- wife of Vladislav II; ordered Judita Bridge (across the Vltava river in Prague) built in 1158; Source: Alena Ježková, "77 Prague Legends", 2006, p. 45.
		"male", "Boleslav", -- Boleslav I of Bohemia; ruled over Bohemia in 929-967; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 615.
		"male", "Boleslav", -- Boleslav II of Bohemia; duke of Bohemia until 999, when he died; massacred House Slavnik in 995; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 616-617.
		"male", "Boleslav", -- Boleslav III of Bohemia; succeeded Boleslav II of Bohemia; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 616.
		"male", "Borivoj", -- "Bořivoj"; Bořivoj was duke of Bohemia in 874 when he recognized the overlordship of Svatopluk of Moravia; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
		"male", "Borivoj", -- "Bořivoj"; Bořivoj II of Bohemia until 1120, when he was driven out by his brother Vladislav; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 622.
		"male", "Bretislav", -- "Břetislav"; Duke Břetislav I of Bohemia in 1037-1055; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 618.
		"male", "Bretislav", -- "Břetislav"; Břetislav II of Bohemia in 1061-1092; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 621.
		"male", "Hanus", -- Master Hanuš of Růže, perfected Prague's Old Town Astronomical Clock in the 15th century; Source: Alena Ježková, "77 Prague Legends", 2006, p. 10.
		"male", "Jan", -- Jan Jesenius; physician and professor of Prague's Charles University; executed in the 21st of June 1621 for rebelling against Emperor Ferdinand II; only 10 years later it would be allowed to take his head from public display and be buried; Source: Alena Ježková, "77 Prague Legends", 2006, p. 13.
		"male", "Jaromir", -- "Jaromíř"; became duke of Bohemia in 1004; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 618.
		"male", "Krystof", -- Kryštof Harant of Polžice; traveller; executed in the 21st of June 1621 for rebelling against Emperor Ferdinand II; only 10 years later it would be allowed to take his head from public display and be buried; Source: Alena Ježková, "77 Prague Legends", 2006, p. 13.
		"male", "Mikulas", -- Mikulás of Kadaň; built Prague's Old Town Astronomical Clock before 1410; Source: Alena Ježková, "77 Prague Legends", 2006, p. 10.
		"male", "Mojmir", -- "Mojmír"; Moravian ruler between 830 and 846; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 606.
		"male", "Mydlar", -- "Mydlář"; executioner who killed the Czech lords that had rebelled against Emperor Ferdinand II; executed the Czech lords in 21st of June 1621; Source: Alena Ježková, "77 Prague Legends", 2006, p. 13.
		"male", "Oldrich", -- "Oldřich"; was duke of Bohemia until 1037; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 618.
		"male", "Otakar", -- King Otakar I of Bohemia in 1198-1230; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 628.
		"male", "Petr", -- the foundation stone of a new bridge to replace Judita Bridge was laid in the 9th of July 1357 by Emperor and King Charles IV; the construction of this new bridge was entrusted to Petr Parléř, who had built St Vitus' Cathedral; Source: Alena Ježková, "77 Prague Legends", 2006, p. 45.
		"male", "Ratislav", -- Ratislav succeeded Mojmír in Moravia in 846; Ratislav was captured and placed on a monastery by the Franks in 869; was a Christian; described as clear-headed and able; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 606-608.
		"male", "Slavitah", -- duke Slavitah of Bohemia was driven from his lands by the Franks two years after Lothar I's attack on Moravia in 855; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 606.
		"male", "Sobeslav", -- "Soběslav"; King Soběslav II of Bohemia in 1173-1179; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 628.
		"male", "Spytihnev", -- "Spytihněv"; duke of Bohemia; recognized German overlordship in 895; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 612-613.
		"male", "Spytihnev", -- "Spytihněv"; brother to Boleslav III of Bohemia; deposed his brother and took control of Bohemia; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 616.
		"male", "Spytihnev", -- "Spytihněv"; was Duke Spytihněv II of Bohemia in 1055-1061; son of Břetislav I of Bohemia and Judith von Babenberg; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 620.
		"male", "Svatopluk", -- Svatopluk was (apparently) duke of Moravia in 874 when peace was made with East Francia; Svatopluk raided the frontier of Bavaria in 869; died in 892; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 606-607.
		"male", "Vaclav", -- "Václav"; Václav succeeded his father Vratislav in 921 in Bohemia; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 613.
		"male", "Vaclav", -- "Václav"; King Václav I of Bohemia in 1230-1253; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 627.
		"male", "Vaclav", -- Vacláv Budovec of Budov; scholar and writer; executed in the 21st of June 1621 for his role in the rebellion against Emperor Ferdinand II; he was 74 years old when executed; only 10 years later it would be allowed to take his head from public display and be buried; Source: Alena Ježková, "77 Prague Legends", 2006, p. 13.
		"male", "Viztrach", -- duke of Bohemia; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 606.
		"male", "Vladislav", -- drove out his brother, Bořivoj II of Bohemia, in 1120, becoming Vladislav I of Bohemia; died in 1125; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 622.
		"male", "Vojtech", -- "Vojtěch Slavnik"; born in 956; known as St. Adalbert, in 983 became bishop of Prague; murdered on 23 April 997; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 617.
		"male", "Vratislav" -- succeeded his brother Spytihněv as duke of Bohemia, reigning until 921; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 612-613.
	},
	HistoricalTiers = {
		1086, "kingdom" -- Henry IV elevated Bohemia to a kingdom in 1086; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 621.
	},
	HistoricalDiplomacyStates = {
		1039, "hungary", "alliance" -- Duke Břetislav I of Bohemia made an alliance with King Peter of Hungaryin 1039; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 619.
	}
})

DefineFaction("croatia", {
	Name = "Croatia",
	Civilization = "slav",
	Type = "polity",
--	Language = "old-church-slavonic",
	Colors = {"blue", "red"},
	DefaultTier = "kingdom"
})

DefineFaction("moravia", {
	Name = "Moravia",
	Civilization = "slav",
	Type = "polity",
--	Language = "czech",
	Colors = {"brown"},
	DefaultTier = "duchy",
	HistoricalDiplomacyStates = {
		874, "bohemia", "sovereign", -- The Bohemian duke Bořivoj recognized the overlorship of Svatopluk of Moravia in 874; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
		895, "bohemia", "peace" -- The sons of Bořivoj, Spytihněv and Vratislav, recognized German overlordship over Bohemia in 895, abandoning Moravian suzerainty; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 612-613.
	}
})

DefineFaction("muscovy", {
	Name = "Muscovy",
	Civilization = "slav",
	Type = "polity",
	Language = "russian",
	Colors = {"red"},
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Principality"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "duchy", "Prince",
		"head-of-state", "female", "monarchy", "duchy", "Princess"
	}
})

DefineFaction("poland", {
	Name = "Poland",
	Civilization = "slav",
	Type = "polity",
	Colors = {"red", "white"},
	DefaultTier = "kingdom"
})

DefineFaction("russia", {
	Name = "Russia",
	Civilization = "slav",
	Type = "polity",
	Language = "russian",
	Colors = {"blue", "red"},
	DefaultTier = "empire"
})

DefineFaction("serbia", {
	Name = "Serbia",
	Civilization = "slav",
	Type = "polity",
--	Language = "old-church-slavonic",
	Colors = {"red"},
	DefaultTier = "kingdom"
})
