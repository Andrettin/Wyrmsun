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
--      spells.lua - The spells.
--
--      (c) Copyright 1998-2005 by Joris Dauphin and Jimmy Salmon.
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

-- For documentation see stratagus/doc/ccl/ccl.html

DefineBoolFlags("Capturable")

--
--  Speed     : just drawing
--  ShadowFly : Shadow of flying unit (0:big, 1:normal, 2:small)
--  Level     : Increase each time an upgrade is applyed to an unit.
--
DefineVariables("Mana", {Max = 255, Value = 84, Increase = 1, Enable = false}, "ShadowFly", {Max = 2})

--  Declare some unit types used in spells. This is quite accetable, the other
--  way would be to define can-cast-spell outside unit definitions, not much of an improvement.
DefineUnitType("unit-revealer", {})
DefineUnitType("unit-critter", {})

-- And declare upgrade for dependency...

DefineSpell("spell-herbal-cure",
	"showname", _("Herbal Cure"),
	"manacost", 1,
	"range", 1,
	"target", "unit",
	"action", {
		{"adjust-vitals", "hit-points", 1, "max-multi-cast", 4},
		{"spawn-missile", "missile", "missile-magic-effect", "start-point", {"base", "target"}}
	},
	"condition", {
		"organic", "only",
		"Building", "false",
		"HitPoints", {MaxValuePercent = 100}
	},
	"sound-when-cast", "foraging",
	"autocast", {"range", 6, "condition", {"alliance", "only", "HitPoints", {MaxValuePercent = 90}}},
	"ai-cast", {"range", 6, "condition", {"alliance", "only", "HitPoints", {MaxValuePercent = 90}}}
)

DefineSpell("spell-portent",
	"showname", _("Portent"),
	"manacost", 70,
	"range", "infinite",
	"target", "position",
	"action", {
		{"summon", "unit-type", "unit-revealer", "time-to-live", 50},
		{"spawn-missile", "missile", "missile-magic-effect", "start-point", {"base", "target"}}
	},
	"sound-when-cast", "magic-holy"
)

DefineSpell("spell-slow",
	"showname", _("slow"),
	"manacost", 50,
	"range", 10,
	"target", "unit",
	"action", {{"adjust-variable", {Slow = 1000, Haste = 0}},
		{"spawn-missile", "missile", "missile-magic-effect",
			"start-point", {"base", "target"}}},
	"condition", {
		"Building", "false",
		"Slow", {ExactValue = 0}},
--	"sound-when-cast", "slow",
	"autocast", {"range", 10, "condition", {"Coward", "false", "opponent", "only"}},
	"ai-cast", {"range", 10, "combat", "only", "condition", {"Coward", "false", "opponent", "only"}}
)

DefineSpell("spell-war-machine-spear-attack",
	"showname", _("war machine spear attack"),
	"manacost", 0,
	"range", 1,
	"target", "unit",
	"action", {
		{"demolish", "range", 1, "basic-damage", 9, "damage-self", false, "damage-friendly", false, "damage-terrain", false, "pierce-damage", true},
	},
	"condition", {
		"alliance", "false",
		"opponent", "only",
		"AirUnit", "false"
	},
	"autocast", {"range", 1, "condition", {"alliance", "false", "opponent", "only", "AirUnit", "false"}},
	"ai-cast", {"range", 1, "condition", {"alliance", "false", "opponent", "only", "AirUnit", "false"}}
)

DefineSpell("spell-axe-twirl",
	"showname", _("Axe Twirl"),
	"manacost", 0,
	"range", 0,
	"target", "self",
	"force-use-animation",
	"action", {
		{"demolish", "range", 1, "basic-damage", 9, "damage-self", false, "damage-friendly", false, "damage-terrain", false}
--		{"spawn-missile", "missile", "missile-axe-twirl", "start-point", {"base", "caster"}}
	},
--	"condition", {
--		"alliance", "false",
--		"opponent", "only",
--		"AirUnit", "false"
--	},
	"autocast", {"range", 1, "condition", {"alliance", "false", "opponent", "only", "AirUnit", "false"}},
	"ai-cast", {"range", 1, "condition", {"alliance", "false", "opponent", "only", "AirUnit", "false"}}
)

DefineSpell("spell-forgetfulness",
	"showname", _("Forgetfulness"),
	"manacost", 0,
	"range", 0,
	"target", "self",
	"action", {
		{"retrain"}
	},
	"sound-when-cast", "magic-holy"
)

