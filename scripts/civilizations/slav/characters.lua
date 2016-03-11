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

DefineCharacter("Judita", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 45.
	Name = "Judita", -- Wife of Vladislav II
	Gender = "female",
	Type = "unit-teuton-archer", -- should be something else
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1158, -- ordered Judita Bridge (across the Vltava river in Prague) built
	DeathYear = 1158 + 30 -- estimated
})

DefineCharacter("Agnes Přemyslid", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 36.
	Name = "Agnes", -- Agnes Přemyslovna, youngest daughter of the Czech king Přemysl Otakar I
	FamilyName = "Přemyslid",
	Gender = "female",
	Type = "unit-teuton-archer", -- should be something else
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1231, -- founded St. Agnes' Cloister (in Prague), and became its mother superior
	DeathYear = 1231 + 30 -- estimated
})

DefineCharacter("Petr Parléř", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 45.
	Name = "Petr",
	ExtraName = "Parléř",
	Gender = "male",
	Type = "unit-teuton-worker",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1357, -- The foundation stone of a new bridge to replace Judita Bridge was laid in the 9th of July 1357 by Emperor and King Charles IV; the construction of this new bridge was entrusted to Petr Parléř, who had built St Vitus' Cathedral
	DeathYear = 1357 + 30 -- estimated
})

DefineCharacter("Charles", { -- Source: Alena Ježková, "77 Prague Legends", 2006, pp. 45, 87.
	Name = "Charles", -- Emperor and king Charles IV
	Gender = "male",
	Type = "unit-teuton-ritter",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1357, -- The foundation stone of a new bridge to replace Judita Bridge was laid in the 9th of July 1357 by Emperor and King Charles IV
	DeathYear = 1378 -- Charles IV was on his deathbed in November 1378, in Prague Castle
})

DefineCharacter("Mikulás of Kadaň", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 10.
	Name = "Mikulás",
	ExtraName = "of Kadaň",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should probably be something else
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1410, -- Built Prague's Old Town Astronomical Clock before 1410
	DeathYear = 1410 + 30 -- estimated
})

DefineCharacter("Hanuš of Růže", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 10.
	Name = "Hanuš", -- Master Hanuš of Růže, perfected Prague's Old Town Astronomical Clock in the 15th century
	ExtraName = "of Růže",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should probably be something else
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
--	Year = ?, -- lived in the 15th century
--	DeathYear = ? -- lived in the 15th century
})

DefineCharacter("Vacláv Budovec of Budov", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 13.
	Name = "Vacláv", -- Scholar and writer who was executed for rebelling against Emperor Ferdinand II
	ExtraName = "Budovec of Budov",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be something else
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1547, -- born
	DeathYear = 1621 -- Executed in the 21st of June 1621 for his role in the rebellion against Emperor Ferdinand II; he was 74 years old when executed; only 10 years later it would be allowed to take his head from public display and be buried
})

DefineCharacter("Kryštof Harant of Polžice", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 13.
	Name = "Kryštof", -- Traveller who was executed for rebelling against Emperor Ferdinand II
	ExtranaName = "Harant of Polžice",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- perhaps should be something else
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1621 - 30, -- estimated
	DeathYear = 1621 -- Executed in the 21st of June 1621 for rebelling against Emperor Ferdinand II; only 10 years later it would be allowed to take his head from public display and be buried
})

DefineCharacter("Jan Jesenius", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 13.
	Name = "Jan", -- Physician and professor of Prague's Charles University who was executed for rebelling against Emperor Ferdinand II
	ExtranaName = "Jesenius",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be something else
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1621 - 30, -- estimated
	DeathYear = 1621 -- Executed in the 21st of June 1621 for rebelling against Emperor Ferdinand II; only 10 years later it would be allowed to take his head from public display and be buried
})

DefineCharacter("Mydlář", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 13.
	Name = "Mydlář", -- Executioner who killed the Czech lords that had rebelled against Emperor Ferdinand II
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1621, -- Executed the Czech lords in 21st of June 1621
	DeathYear = 1621 + 30 -- estimated
})

DefineCharacter("Humprecht Černín of Chudenice", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 94.
	Name = "Humprecht", -- Imperial envoy to Venice
	ExtraName = "Černín of Chudenice",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1669, -- Had the Černín Palace built in Prague for him in 1669
	DeathYear = 1669 + 30 -- estimated
})
