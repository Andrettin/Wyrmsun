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

DefineButton( { Pos = 6, Level = 2, Icon = "icon-flag-old-austria",
	Action = "research", Value = "upgrade-faction-frank-tribe",
	Allowed = "check-single-research",
	Key = "f", Hint = "Found the ~!Frank Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Frank Tribe",
	ForUnit = {"unit-germanic-town-hall"}
} )

DefineButton( { Pos = 7, Level = 2, Icon = "icon-flag-old-austria",
	Action = "research", Value = "upgrade-faction-ampsivarii-tribe",
	Allowed = "check-single-research",
	Key = "a", Hint = "Found the ~!Ampsivarii Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Ampsivarii Tribe",
	ForUnit = {"unit-germanic-town-hall"}
} )

DefineButton( { Pos = 8, Level = 2, Icon = "icon-flag-old-austria",
	Action = "research", Value = "upgrade-faction-batavian-tribe",
	Allowed = "check-single-research",
	Key = "b", Hint = "Found the ~!Batavian Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Batavian Tribe",
	ForUnit = {"unit-germanic-town-hall"}
} )

DefineButton( { Pos = 9, Level = 2, Icon = "icon-flag-old-austria",
	Action = "research", Value = "upgrade-faction-chamavi-tribe",
	Allowed = "check-single-research",
	Key = "c", Hint = "Found the ~!Chamavi Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Chamavi Tribe",
	ForUnit = {"unit-germanic-town-hall"}
} )

DefineButton( { Pos = 10, Level = 2, Icon = "icon-flag-old-austria",
	Action = "research", Value = "upgrade-faction-chatti-tribe",
	Allowed = "check-single-research",
	Key = "t", Hint = "Found the Cha~!tti Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Chatti Tribe",
	ForUnit = {"unit-germanic-town-hall"}
} )

DefineButton( { Pos = 11, Level = 2, Icon = "icon-flag-old-austria",
	Action = "research", Value = "upgrade-faction-sugambri-tribe",
	Allowed = "check-single-research",
	Key = "s", Hint = "Found the ~!Sugambri Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Sugambri Tribe",
	ForUnit = {"unit-germanic-town-hall"}
} )

DefineButton( { Pos = 9, Level = 2, Icon = "icon-flag-old-austria",
	Action = "research", Value = "upgrade-faction-francia",
	Allowed = "check-single-research",
	Key = "f", Hint = "Found ~!Francia", Popup = "popup-research",
	Description = "Changes your faction to Francia",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 10, Level = 2, Icon = "icon-flag-old-austria",
	Action = "research", Value = "upgrade-faction-austrasia",
	Allowed = "check-single-research",
	Key = "a", Hint = "Found ~!Austrasia", Popup = "popup-research",
	Description = "Changes your faction to Austrasia",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 11, Level = 2, Icon = "icon-flag-old-austria",
	Action = "research", Value = "upgrade-faction-neustria",
	Allowed = "check-single-research",
	Key = "n", Hint = "Found ~!Neustria", Popup = "popup-research",
	Description = "Changes your faction to Neustria",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 12, Level = 2, Icon = "icon-flag-old-austria",
	Action = "research", Value = "upgrade-faction-burgundia",
	Allowed = "check-single-research",
	Key = "b", Hint = "Found ~!Burgundia", Popup = "popup-research",
	Description = "Changes your faction to Burgundia",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 13, Level = 2, Icon = "icon-flag-old-austria",
	Action = "research", Value = "upgrade-faction-salia",
	Allowed = "check-single-research",
	Key = "s", Hint = "Found ~!Salia", Popup = "popup-research",
	Description = "Changes your faction to Salia",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 14, Level = 2, Icon = "icon-flag-old-austria",
	Action = "research", Value = "upgrade-faction-east-francia",
	Allowed = "check-single-research",
	Key = "e", Hint = "Found ~!East Francia", Popup = "popup-research",
	Description = "Changes your faction to East Francia",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

