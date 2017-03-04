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
--      (c) Copyright 2017 by Andrettin
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

DefineButton( { Pos = 5, Level = 2, Icon = "icon-flag-holy-roman-empire",
	Action = "research", Value = "upgrade-faction-holy-rome",
	Allowed = "check-single-research",
	Key = "h", Hint = "Found the ~!Holy Roman Empire", Popup = "popup-research",
	Description = "Changes your faction to the Holy Roman Empire",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-flag-five-white-birds-on-red",
	Action = "research", Value = "upgrade-faction-bavarian-tribe",
	Allowed = "check-single-research",
	Key = "b", Hint = "Found the ~!Bavarian Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Bavarian Tribe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 14, Level = 2, Icon = "icon-flag-five-red-birds-on-yellow",
	Action = "research", Value = "upgrade-faction-teuton-tribe",
	Allowed = "check-single-research",
	Key = "t", Hint = "Found the ~!Teuton Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Teuton Tribe",
	ForUnit = {"unit-germanic-town-hall"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-flag-five-white-birds-on-red",
	Action = "research", Value = "upgrade-faction-bavaria",
	Allowed = "check-single-research",
	Key = "b", Hint = "Found ~!Bavaria", Popup = "popup-research",
	Description = "Changes your faction to Bavaria",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-flag-yellow-lion-on-cyan",
	Action = "research", Value = "upgrade-faction-thuringia",
	Allowed = "check-single-research",
	Key = "b", Hint = "Found ~!Thuringia", Popup = "popup-research",
	Description = "Changes your faction to Thuringia",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-flag-old-austria",
	Action = "research", Value = "upgrade-faction-austria",
	Allowed = "check-single-research",
	Key = "a", Hint = "Found ~!Austria", Popup = "popup-research",
	Description = "Changes your faction to Austria",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 3, Level = 2, Icon = "icon-flag-five-orange-birds-on-black",
	Action = "research", Value = "upgrade-faction-carinthia",
	Allowed = "check-single-research",
	Key = "c", Hint = "Found ~!Carinthia", Popup = "popup-research",
	Description = "Changes your faction to Carinthia",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 10, Level = 2, Icon = "icon-flag-blue-lion-on-yellow",
	Action = "research", Value = "upgrade-faction-swabia",
	Allowed = "check-single-research",
	Key = "s", Hint = "Found ~!Swabia", Popup = "popup-research",
	Description = "Changes your faction to Swabia",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 11, Level = 2, Icon = "icon-flag-habsburg",
	Action = "research", Value = "upgrade-faction-baden",
	Allowed = "check-single-research",
	Key = "b", Hint = "Found ~!Baden", Popup = "popup-research",
	Description = "Changes your faction to Baden",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 12, Level = 2, Icon = "icon-flag-cyan-lion-on-red",
	Action = "research", Value = "upgrade-faction-wurtemberg",
	Allowed = "check-single-research",
	Key = "w", Hint = "Found ~!Wurtemberg", Popup = "popup-research",
	Description = "Changes your faction to Wurtemberg",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 13, Level = 2, Icon = "icon-flag-red-lion-on-green",
	Action = "research", Value = "upgrade-faction-switzerland",
	Allowed = "check-single-research",
	Key = "i", Hint = "Found Sw~!itzerland", Popup = "popup-research",
	Description = "Changes your faction to Switzerland",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

-- Saxon Factions

DefineButton( { Pos = 4, Level = 2, Icon = "icon-flag-red-lion-on-green",
	Action = "research", Value = "upgrade-faction-saxon-tribe",
	Allowed = "check-single-research",
	Key = "x", Hint = "Found the Sa~!xon Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Saxon Tribe",
	ForUnit = {"unit-germanic-town-hall"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-flag-green-lion-on-purple",
	Action = "research", Value = "upgrade-faction-cherusci-tribe",
	Allowed = "check-single-research",
	Key = "c", Hint = "Found the ~!Cherusci Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Cherusci Tribe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-flag-green-lion-on-orange",
	Action = "research", Value = "upgrade-faction-varini-tribe",
	Allowed = "check-single-research",
	Key = "v", Hint = "Found the ~!Varini Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Varini Tribe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 3, Level = 2, Icon = "icon-flag-five-purple-birds-on-green",
	Action = "research", Value = "upgrade-faction-chauci-tribe",
	Allowed = "check-single-research",
	Key = "h", Hint = "Found the C~!hauci Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Chauci Tribe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 9, Level = 2, Icon = "icon-flag-red-lion-on-green",
	Action = "research", Value = "upgrade-faction-saxony",
	Allowed = "check-single-research",
	Key = "x", Hint = "Found Sa~!xony", Popup = "popup-research",
	Description = "Changes your faction to Saxony",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 10, Level = 2, Icon = "icon-flag-five-white-birds-on-red",
	Action = "research", Value = "upgrade-faction-bremen",
	Allowed = "check-single-research",
	Key = "b", Hint = "Found ~!Bremen", Popup = "popup-research",
	Description = "Changes your faction to Bremen",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 11, Level = 2, Icon = "icon-flag-five-red-birds-on-yellow",
	Action = "research", Value = "upgrade-faction-brandenburg",
	Allowed = "check-single-research",
	Key = "r", Hint = "Found B~!randenburg", Popup = "popup-research",
	Description = "Changes your faction to Brandenburg",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 12, Level = 2, Icon = "icon-flag-old-austria",
	Action = "research", Value = "upgrade-faction-brunswick",
	Allowed = "check-single-research",
	Key = "u", Hint = "Found Br~!unswick", Popup = "popup-research",
	Description = "Changes your faction to Brunswick",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

-- Frisian Factions

DefineButton( { Pos = 12, Level = 2, Icon = "icon-flag-green-lion-on-orange",
	Action = "research", Value = "upgrade-faction-frisian-tribe",
	Allowed = "check-single-research",
	Key = "f", Hint = "Found the ~!Frisian Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Frisian Tribe",
	ForUnit = {"unit-germanic-town-hall"}
} )

DefineButton( { Pos = 9, Level = 2, Icon = "icon-flag-green-lion-on-orange",
	Action = "research", Value = "upgrade-faction-friesland",
	Allowed = "check-single-research",
	Key = "f", Hint = "Found ~!Friesland", Popup = "popup-research",
	Description = "Changes your faction to Friesland",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

-- Franconian Factions

DefineButton( { Pos = 15, Level = 2, Icon = "icon-flag-five-purple-birds-on-green",
	Action = "research", Value = "upgrade-faction-franconia",
	Allowed = "check-single-research",
	Key = "f", Hint = "Found ~!Franconia", Popup = "popup-research",
	Description = "Changes your faction to Franconia",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 14, Level = 2, Icon = "icon-flag-five-black-birds-on-purple",
	Action = "research", Value = "upgrade-faction-cologne",
	Allowed = "check-single-research",
	Key = "c", Hint = "Found ~!Cologne", Popup = "popup-research",
	Description = "Changes your faction to Cologne",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 15, Level = 2, Icon = "icon-flag-cyan-lion-on-red",
	Action = "research", Value = "upgrade-faction-hesse",
	Allowed = "check-single-research",
	Key = "h", Hint = "Found ~!Hesse", Popup = "popup-research",
	Description = "Changes your faction to Hesse",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

-- Dutch Factions

DefineButton( { Pos = 1, Level = 2, Icon = "icon-flag-green-lion-on-orange",
	Action = "research", Value = "upgrade-faction-netherlands",
	Allowed = "check-single-research",
	Key = "n", Hint = "Found the ~!Netherlands", Popup = "popup-research",
	Description = "Changes your faction to the Netherlands",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-flag-yellow-lion-on-cyan",
	Action = "research", Value = "upgrade-faction-brabant",
	Allowed = "check-single-research",
	Key = "b", Hint = "Found ~!Brabant", Popup = "popup-research",
	Description = "Changes your faction to Brabant",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 3, Level = 2, Icon = "icon-flag-five-white-birds-on-red",
	Action = "research", Value = "upgrade-faction-drenthe",
	Allowed = "check-single-research",
	Key = "d", Hint = "Found ~!Drenthe", Popup = "popup-research",
	Description = "Changes your faction to Drenthe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 4, Level = 2, Icon = "icon-flag-habsburg",
	Action = "research", Value = "upgrade-faction-holland",
	Allowed = "check-single-research",
	Key = "h", Hint = "Found ~!Holland", Popup = "popup-research",
	Description = "Changes your faction to Holland",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 5, Level = 2, Icon = "icon-flag-five-red-birds-on-yellow",
	Action = "research", Value = "upgrade-faction-overijssel",
	Allowed = "check-single-research",
	Key = "o", Hint = "Found ~!Overijssel", Popup = "popup-research",
	Description = "Changes your faction to Overijssel",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

-- Lombardic Factions

DefineButton( { Pos = 13, Level = 2, Icon = "icon-flag-five-purple-birds-on-green",
	Action = "research", Value = "upgrade-faction-lombard-tribe",
	Allowed = "check-single-research",
	Key = "l", Hint = "Found the ~!Lombard Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Lombard Tribe",
	ForUnit = {"unit-germanic-town-hall"}
} )

DefineButton( { Pos = 9, Level = 2, Icon = "icon-flag-five-purple-birds-on-green",
	Action = "research", Value = "upgrade-faction-lombardy",
	Allowed = "check-single-research",
	Key = "l", Hint = "Found ~!Lombardy", Popup = "popup-research",
	Description = "Changes your faction to Lombardy",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )
