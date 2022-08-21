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
--      (c) Copyright 2014-2022 by Andrettin
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

DefineModifier("upgrade_faction_alamannia",
	{"HitPoints", 10},
	{"Points", 10},
	{"apply-to", "unit_suebi_swordsman"}, {"apply-to", "unit_suebi_veteran_swordsman"}, {"apply-to", "unit_suebi_chieftain"}
)

DefineModifier("upgrade_faction_buri_tribe",
	{"Speed", 1},
	{"Points", 10},
	{"apply-to", "unit_suebi_swordsman"}, {"apply-to", "unit_suebi_veteran_swordsman"}, {"apply-to", "unit_suebi_chieftain"}
)

DefineModifier("upgrade_faction_hermunduri_tribe",
	{"HitPoints", 5},
	{"BasicDamage", 1},
	{"Points", 10},
	{"apply-to", "unit_suebi_swordsman"}, {"apply-to", "unit_suebi_veteran_swordsman"}, {"apply-to", "unit_suebi_chieftain"}
)

DefineModifier("upgrade_faction_quadi_tribe",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit_suebi_swordsman"}, {"apply-to", "unit_suebi_veteran_swordsman"}, {"apply-to", "unit_suebi_chieftain"}
)

DefineModifier("upgrade-faction-galicia",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit_suebi_swordsman"}, {"apply-to", "unit_suebi_veteran_swordsman"}, {"apply-to", "unit_suebi_chieftain"}
)
