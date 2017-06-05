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

DefineButton( { Pos = 3, Level = 2, Icon = "icon-flag-cyan-lion-on-red",
	Action = "research", Value = "upgrade-faction-angle-tribe",
	Allowed = "check-single-research",
	Key = "a", Hint = "Found the ~!Angle Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Angle Tribe",
	ForUnit = {"unit-germanic-town-hall"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-flag-five-white-birds-on-red",
	Action = "research", Value = "upgrade-faction-avione-tribe",
	Allowed = "check-single-research",
	Key = "a", Hint = "Found the ~!Avione Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Avione Tribe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-flag-five-orange-birds-on-black",
	Action = "research", Value = "upgrade-faction-charude-tribe",
	Allowed = "check-single-research",
	Key = "c", Hint = "Found the ~!Charude Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Charude Tribe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 3, Level = 2, Icon = "icon-flag-five-purple-birds-on-green",
	Action = "research", Value = "upgrade-faction-jute-tribe",
	Allowed = "check-single-research",
	Key = "j", Hint = "Found the ~!Jute Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Jute Tribe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 4, Level = 2, Icon = "icon-flag-five-blue-birds-on-orange",
	Action = "research", Value = "upgrade-faction-bernice-tribe",
	Allowed = "check-single-research",
	Key = "b", Hint = "Found the ~!Bernice Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Bernice Tribe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 5, Level = 2, Icon = "icon-flag-five-red-birds-on-yellow",
	Action = "research", Value = "upgrade-faction-dere-tribe",
	Allowed = "check-single-research",
	Key = "d", Hint = "Found the ~!Dere Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Dere Tribe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 6, Level = 2, Icon = "icon-flag-five-black-birds-on-purple",
	Action = "research", Value = "upgrade-faction-gumeninga-tribe",
	Allowed = "check-single-research",
	Key = "g", Hint = "Found the ~!Gumeninga Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Gumeninga Tribe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 8, Level = 2, Icon = "icon-flag-five-blue-birds-on-orange",
	Action = "research", Value = "upgrade-faction-bernicia",
	Allowed = "check-single-research",
	Key = "b", Hint = "Found ~!Bernicia", Popup = "popup-research",
	Description = "Changes your faction to Bernicia",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 9, Level = 2, Icon = "icon-flag-five-red-birds-on-yellow",
	Action = "research", Value = "upgrade-faction-deira",
	Allowed = "check-single-research",
	Key = "d", Hint = "Found ~!Deira", Popup = "popup-research",
	Description = "Changes your faction to Deira",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 10, Level = 2, Icon = "icon-flag-five-orange-birds-on-black",
	Action = "research", Value = "upgrade-faction-east-anglia",
	Allowed = "check-single-research",
	Key = "e", Hint = "Found ~!East Anglia", Popup = "popup-research",
	Description = "Changes your faction to East Anglia",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 11, Level = 2, Icon = "icon-flag-five-purple-birds-on-green",
	Action = "research", Value = "upgrade-faction-middlesex",
	Allowed = "check-single-research",
	Key = "m", Hint = "Found ~!Middlesex", Popup = "popup-research",
	Description = "Changes your faction to Middlesex",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 12, Level = 2, Icon = "icon-flag-five-white-birds-on-red",
	Action = "research", Value = "upgrade-faction-essex",
	Allowed = "check-single-research",
	Key = "s", Hint = "Found E~!ssex", Popup = "popup-research",
	Description = "Changes your faction to Essex",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 12, Level = 2, Icon = "icon-flag-cyan-lion-on-red",
	Action = "research", Value = "upgrade-faction-jutland",
	Allowed = "check-single-research",
	Key = "j", Hint = "Found ~!Jutland", Popup = "popup-research",
	Description = "Changes your faction to Jutland",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 13, Level = 2, Icon = "icon-flag-old-austria",
	Action = "research", Value = "upgrade-faction-kent",
	Allowed = "check-single-research",
	Key = "k", Hint = "Found ~!Kent", Popup = "popup-research",
	Description = "Changes your faction to Kent",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 11, Level = 2, Icon = "icon-flag-five-blue-birds-on-orange",
	Action = "research", Value = "upgrade-faction-mercia",
	Allowed = "check-single-research",
	Key = "m", Hint = "Found ~!Mercia", Popup = "popup-research",
	Description = "Changes your faction to Mercia",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 12, Level = 2, Icon = "icon-flag-five-purple-birds-on-green",
	Action = "research", Value = "upgrade-faction-middle-anglia",
	Allowed = "check-single-research",
	Key = "i", Hint = "Found M~!iddle Anglia", Popup = "popup-research",
	Description = "Changes your faction to Middle Anglia",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 13, Level = 2, Icon = "icon-flag-five-orange-birds-on-black",
	Action = "research", Value = "upgrade-faction-northumbria",
	Allowed = "check-single-research",
	Key = "n", Hint = "Found ~!Northumbria", Popup = "popup-research",
	Description = "Changes your faction to Northumbria",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 13, Level = 2, Icon = "icon-flag-cyan-lion-on-red",
	Action = "research", Value = "upgrade-faction-wessex",
	Allowed = "check-single-research",
	Key = "w", Hint = "Found ~!Wessex", Popup = "popup-research",
	Description = "Changes your faction to Wessex",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 14, Level = 2, Icon = "icon-flag-cyan-lion-on-red",
	Action = "research", Value = "upgrade-faction-england",
	Allowed = "check-single-research",
	Key = "e", Hint = "Found ~!England", Popup = "popup-research",
	Description = "Changes your faction to England",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 15, Level = 2, Icon = "icon-flag-old-austria",
	Action = "research", Value = "upgrade-faction-scotland",
	Allowed = "check-single-research",
	Key = "c", Hint = "Found S~!cotland", Popup = "popup-research",
	Description = "Changes your faction to Scotland",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )
