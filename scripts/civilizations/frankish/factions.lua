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
--      (c) Copyright 2015-2017 by Andrettin
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

DefineFaction("ampsivarii-tribe", {
	Name = "Ampsivarii Tribe",
	Civilization = "frankish", -- accurate?
	Type = "tribe",
	Colors = {"cyan"},
	FactionUpgrade = "upgrade-faction-ampsivarii-tribe",
	Icon = "icon-flag-five-purple-birds-on-green",
	DevelopsFrom = {"asa-tribe", "hersing-tribe", "istaevone-tribe", "jarling-tribe", "karling-tribe", "thralling-tribe"}
})

DefineFaction("batavian-tribe", {
	Name = "Batavian Tribe",
	Civilization = "frankish", -- accurate?
	Type = "tribe",
	Colors = {"orange"},
	FactionUpgrade = "upgrade-faction-batavian-tribe",
	Icon = "icon-flag-five-blue-birds-on-orange",
	DevelopsFrom = {"asa-tribe", "hersing-tribe", "istaevone-tribe", "jarling-tribe", "karling-tribe", "thralling-tribe"}
})

DefineFaction("chamavi-tribe", {
	Name = "Chamavi Tribe",
	Civilization = "frankish", -- accurate?
	Type = "tribe",
	Colors = {"pink"},
	FactionUpgrade = "upgrade-faction-chamavi-tribe",
	Icon = "icon-flag-five-orange-birds-on-black",
	DevelopsFrom = {"asa-tribe", "hersing-tribe", "istaevone-tribe", "jarling-tribe", "karling-tribe", "thralling-tribe"}
})

DefineFaction("chatti-tribe", {
	Name = "Chatti Tribe",
	Civilization = "frankish", -- accurate?
	Type = "tribe",
	Colors = {"yellow"},
	FactionUpgrade = "upgrade-faction-chatti-tribe",
	Icon = "icon-flag-five-red-birds-on-yellow",
	DevelopsFrom = {"asa-tribe", "hersing-tribe", "istaevone-tribe", "jarling-tribe", "karling-tribe", "thralling-tribe"}
})

DefineFaction("sugambri-tribe", {
	Name = "Sugambri Tribe",
	Civilization = "frankish", -- accurate?
	Type = "tribe",
	Colors = {"black"},
	FactionUpgrade = "upgrade-faction-sugambri-tribe",
	Icon = "icon-flag-five-black-birds-on-purple",
	DevelopsFrom = {"asa-tribe", "hersing-tribe", "istaevone-tribe", "jarling-tribe", "karling-tribe", "thralling-tribe"}
})

DefineFaction("ubii-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 227-228.
	Name = "Ubii Tribe",
	Civilization = "frankish",
	Type = "tribe",
	Colors = {"purple"},
	FactionUpgrade = "upgrade-faction-ubii-tribe",
	Icon = "icon-flag-habsburg",
	Description = "The Ubii were a West Germanic tribe who lived by the Rhine, north of the Main river. Due to their location in a central trading spot, they were more advanced than other Germanic tribes. Being allies of Rome, many of them eventually migrated west of the Rhine, dwelling around Colonia Agrippinenses (the modern Cologne). The ones who remained possibly became the Chatti.",
	DevelopsFrom = {"asa-tribe", "hersing-tribe", "istaevone-tribe", "jarling-tribe", "karling-tribe", "thralling-tribe"}
})

DefineFaction("frank-tribe", {
	Name = "Frank Tribe",
	Civilization = "frankish",
	Type = "tribe",
	Colors = {"green", "orange"},
	FactionUpgrade = "upgrade-faction-frank-tribe",
	Icon = "icon-flag-old-austria",
	Description = "The Franks are one of the most powerful Germanic tribes to have existed. From their humble beginnings in their dwellings along the Rhine, they eventually managed to conquer the entirety of Gaul and much of Central Europe.",
	DevelopsFrom = {"ampsivarii-tribe", "batavian-tribe", "chamavi-tribe", "chatti-tribe", "sugambri-tribe", "ubii-tribe"}
})

DefineFaction("francia", {
	Name = "Francia",
	Civilization = "frankish",
	ParentFaction = "frank-tribe",
	Type = "polity",
	Colors = {"green", "orange"},
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-francia",
	Icon = "icon-flag-old-austria",
	DevelopsFrom = {"frank-tribe"},
	MinisterTitles = {
		"head-of-government", "no-gender", "monarchy", "no-faction-tier", "Mayor of the Palace" -- Source: "Medieval Warfare V.2", 2013, p. 7.
	},
	-- In 481 AD the Franks had already established their kingdom; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
	HistoricalUpgrades = {
		0, "upgrade-teuton-writing", true, -- polities must have writing
		0, "upgrade-teuton-masonry", true,
		565, "upgrade-teuton-coinage", true -- Merovingian Francia began to issue gold solidi at some point between 565 and 578 AD; Source: F. Seebohm, "On the early currencies of the German Tribes", 1903, p. 176.
	},
	HistoricalCapitals = {
		768, "Lower Rhine" -- Aachen was Francia's capital during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	Conditions = function(s)
		for i=0,(PlayerMax - 2) do
			if (i ~= trigger_player and GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "RaceName") == "frankish") then
				return false
			end
		end
		return true
	end
})

DefineFaction("austrasia", {
	Name = "Austrasia",
	Civilization = "frankish",
	ParentFaction = "francia",
	Type = "polity",
	Colors = {"pink"},
	DefaultTier = "kingdom", -- correct?
	FactionUpgrade = "upgrade-faction-austrasia",
	Icon = "icon-flag-five-black-birds-on-purple",
	DefaultStartPos = {3930, 926}, -- Reims
	DevelopsFrom = {"ampsivarii-tribe", "batavian-tribe", "chamavi-tribe", "chatti-tribe", "frank-tribe", "sugambri-tribe"},
	DevelopsTo = {"francia"},
	MinisterTitles = {
		"head-of-government", "no-gender", "monarchy", "no-faction-tier", "Mayor of the Palace" -- Source: "Medieval Warfare V.2", 2013, p. 7.
	}
})

DefineFaction("east-francia", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
	Name = "East Francia",
	Civilization = "frankish",
	ParentFaction = "francia",
	Type = "polity",
	Colors = {"blue"},
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-east-francia",
	Icon = "icon-flag-five-white-birds-on-red",
	DevelopsFrom = {"ampsivarii-tribe", "batavian-tribe", "chamavi-tribe", "chatti-tribe", "frank-tribe", "sugambri-tribe"},
	DevelopsTo = {"francia"},
	-- East Francia existed in 869, when it conquered Moravia; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
	--[[
	HistoricalDiplomacyStates = {
		871, "moravia", "war", -- Moravia rose against East Frankish rule in 871; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
		874, "moravia", "overlord", -- Moravia submitted as a vassal (paying an annual tribute) to the East Franks in 874; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
		895, "bohemia", "overlord" -- The sons of Bořivoj, Spytihněv and Vratislav, recognized German overlordship over Bohemia in 895; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 612-613.
	}
	--]]
})

DefineFaction("neustria", {
	Name = "Neustria",
	Civilization = "frankish",
	ParentFaction = "francia",
	Type = "polity",
	Colors = {"orange"},
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-neustria",
	Icon = "icon-flag-five-orange-birds-on-black",
	DefaultStartPos = {3891, 937}, -- Paris
	DevelopsFrom = {"ampsivarii-tribe", "batavian-tribe", "chamavi-tribe", "chatti-tribe", "frank-tribe", "sugambri-tribe"},
	DevelopsTo = {"francia"},
	MinisterTitles = {
		"head-of-government", "no-gender", "monarchy", "no-faction-tier", "Mayor of the Palace" -- Source: "Medieval Warfare V.2", 2013, p. 7.
	}
})

DefineFaction("salia", {
	Name = "Salia",
	Civilization = "frankish",
	ParentFaction = "francia",
	Type = "polity",
	Colors = {"pink"},
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-salia",
	Icon = "icon-flag-five-red-birds-on-yellow",
	DefaultStartPos = {3915, 923}, -- Soissons
	DevelopsFrom = {"ampsivarii-tribe", "batavian-tribe", "chamavi-tribe", "chatti-tribe", "frank-tribe", "sugambri-tribe"},
	DevelopsTo = {"francia"}
})

DefineFaction("burgundia", { -- Frankish kingdom of Burgundy (not to be confused with the original Kingdom of the Burgundians - an East Germanic people - or the French region)
	Name = "Burgundia",
	Civilization = "frankish",
	ParentFaction = "francia",
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-burgundia",
	Icon = "icon-flag-five-purple-birds-on-green",
	DefaultStartPos = {3884, 961}, -- Orléans
	DevelopsFrom = {"ampsivarii-tribe", "batavian-tribe", "chamavi-tribe", "chatti-tribe", "frank-tribe", "sugambri-tribe"},
	DevelopsTo = {"francia"}
})
