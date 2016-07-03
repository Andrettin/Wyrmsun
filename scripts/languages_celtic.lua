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

DefineLanguage("proto-celtic", {
	Name = "Proto-Celtic",
	Family = "celtic",
	SkipNameTypeInheritance = true
})

DefineLanguage("old-gaulish", {
	Name = "Old Gaulish",
	Family = "celtic"
})

DefineLanguage("gaulish", {
	Name = "Gaulish",
	Family = "celtic"
})

DefineLanguage("armorican", {
	Name = "Armorican",
	Family = "celtic"
})

DefineLanguage("british", {
	Name = "British",
	Family = "celtic"
})

DefineLanguage("old-welsh", {
	Name = "Old Welsh",
	Family = "celtic"
})

DefineLanguage("welsh", {
	Name = "Welsh",
	Family = "celtic"
})

DefineLanguage("middle-welsh", {
	Name = "Middle Welsh",
	Family = "celtic",
	DialectOf = "welsh"
})

DefineLanguage("modern-welsh", {
	Name = "Modern Welsh",
	Family = "celtic",
	DialectOf = "welsh"
})

DefineLanguage("cornish", {
	Name = "Cornish",
	Family = "celtic"
})

DefineLanguage("old-irish", {
	Name = "Old Irish",
	Family = "celtic"
})

DefineLanguage("irish", {
	Name = "Irish",
	Family = "celtic"
})

DefineLanguage("middle-irish", {
	Name = "Middle Irish",
	Family = "celtic",
	DialectOf = "irish"
})

DefineLanguage("modern-irish", {
	Name = "Modern Irish",
	Family = "celtic",
	DialectOf = "irish"
})
