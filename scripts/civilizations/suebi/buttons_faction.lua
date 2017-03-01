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

DefineButton( { Pos = 5, Level = 2, Icon = "icon-flag-habsburg",
	Action = "research", Value = "upgrade-faction-suebi-tribe",
	Allowed = "check-single-research",
	Key = "s", Hint = "Found the ~!Suebi Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Suebi Tribe",
	ForUnit = {"unit-germanic-town-hall"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-flag-habsburg",
	Action = "research", Value = "upgrade-faction-semnone-tribe",
	Allowed = "check-single-research",
	Key = "s", Hint = "Found the ~!Semnone Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Semnone Tribe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-flag-habsburg",
	Action = "research", Value = "upgrade-faction-marcomanni-tribe",
	Allowed = "check-single-research",
	Key = "m", Hint = "Found the ~!Marcomanni Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Marcomanni Tribe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 3, Level = 2, Icon = "icon-flag-habsburg",
	Action = "research", Value = "upgrade-faction-quadi-tribe",
	Allowed = "check-single-research",
	Key = "q", Hint = "Found the ~!Quadi Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Quadi Tribe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 4, Level = 2, Icon = "icon-flag-habsburg",
	Action = "research", Value = "upgrade-faction-buri-tribe",
	Allowed = "check-single-research",
	Key = "b", Hint = "Found the ~!Buri Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Buri Tribe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 5, Level = 2, Icon = "icon-flag-habsburg",
	Action = "research", Value = "upgrade-faction-hermunduri-tribe",
	Allowed = "check-single-research",
	Key = "h", Hint = "Found the ~!Hermunduri Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Hermunduri Tribe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-flag-habsburg",
	Action = "research", Value = "upgrade-faction-thuringian-tribe",
	Allowed = "check-single-research",
	Key = "t", Hint = "Found the ~!Thuringian Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Thuringian Tribe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 6, Level = 2, Icon = "icon-flag-habsburg",
	Action = "research", Value = "upgrade-faction-alamanni-tribe",
	Allowed = "check-single-research",
	Key = "a", Hint = "Found the ~!Alamanni Tribe", Popup = "popup-research",
	Description = "Changes your faction to the Alamanni Tribe",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 9, Level = 2, Icon = "icon-flag-habsburg",
	Action = "research", Value = "upgrade-faction-galicia",
	Allowed = "check-single-research",
	Key = "g", Hint = "Found ~!Galicia", Popup = "popup-research",
	Description = "Changes your faction to Galicia",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

