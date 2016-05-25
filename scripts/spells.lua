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
--      (c) Copyright 1998-2016 by Joris Dauphin, Jimmy Salmon and Andrettin.
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

--  Declare some unit types used in spells. This is quite accetable, the other
--  way would be to define can-cast-spell outside unit definitions, not much of an improvement.
DefineUnitType("unit-revealer", {})

-- And declare upgrade for dependency...
CUpgrade:New("upgrade-healing")
CUpgrade:New("upgrade-portent")
CUpgrade:New("upgrade-stun")
CUpgrade:New("upgrade-puncture")

DefineSpell("spell-healing",
	"showname", _("Healing"),
	"manacost", 2,
	"range", 6,
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
	"sound-when-cast", "magic-holy",
	"depend-upgrade", "upgrade-healing",
	"autocast", {"range", 6, "condition", {"alliance", "only", "HitPoints", {MaxValuePercent = 90}}},
	"ai-cast", {"range", 6, "condition", {"alliance", "only", "HitPoints", {MaxValuePercent = 90}}}
)

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
	"sound-when-cast", "magic-holy",
	"depend-upgrade", "upgrade-portent"
)

DefineSpell("spell-inspire",
	"showname", _("Inspire"),
	"manacost", 25,
	"range", 6,
	"target", "unit",
	"action", {
		{"adjust-variable", {Inspire = 1000}},
		{"spawn-missile", "missile", "missile-magic-effect", "start-point", {"base", "target"}}
	},
	"condition", {
		"organic", "only",
		"Inspire", {ExactValue = 0}
	},
	"sound-when-cast", "magic-holy",
	"autocast", {"range", 6, "attacker", "only", "condition", {"Coward", "false", "alliance", "only"}},
	"ai-cast", {"range", 6, "attacker", "only", "condition", {"Coward", "false", "alliance", "only"}}
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

DefineSpell("spell-terror",
	"showname", _("Terror"),
	"manacost", 50,
	"range", 6,
	"target", "unit",
	"action", {
		{"adjust-variable", {Terror = 1000}},
		{"spawn-missile", "missile", "missile-magic-effect", "start-point", {"base", "target"}}
	},
	"condition", {
		"organic", "only",
		"Terror", {ExactValue = 0}
	},
	"sound-when-cast", "magic-holy",
	"autocast", {"range", 6, "attacker", "only", "condition", {"Coward", "false", "opponent", "only"}},
	"ai-cast", {"range", 6, "attacker", "only", "condition", {"Coward", "false", "opponent", "only"}}
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
		{"spawn-missile", "missile", "missile-magic-effect", "start-point", {"base", "target"}},
		{"retrain"}
	},
	"sound-when-cast", "magic-holy"
)

DefineSpell("spell-stun",
	"showname", _("Stun"),
	"manacost", 50,
	"range", 1,
	"target", "unit",
	"action", {
		{"adjust-variable", {Stun = 200}},
		{"spawn-missile", "missile", "missile-magic-effect", "start-point", {"base", "target"}},
		{"spawn-missile", "missile", "missile-always-hits", "start-point", {"base", "target"}, "use-unit-var"}
	},
	"condition", {
		"organic", "only",
		"Building", "false"
	},
	"autocast", {"range", 6, "combat", "only", "condition", {"Coward", "false", "opponent", "only", "Stun", {ExactValue = 0}}},
	"ai-cast", {"range", 6, "combat", "only", "condition", {"Coward", "false", "opponent", "only", "Stun", {ExactValue = 0}}},
	"depend-upgrade", "upgrade-stun"
)

DefineSpell("spell-puncture",
	"showname", _("Puncture"),
	"manacost", 50,
	"range", 1,
	"target", "unit",
	"action", {
		{"adjust-variable", {Bleeding = 1000}},
		{"spawn-missile", "missile", "missile-magic-effect", "start-point", {"base", "target"}},
		{"spawn-missile", "missile", "missile-always-hits", "start-point", {"base", "target"}, "use-unit-var"}
	},
	"condition", {
		"organic", "only",
		"Building", "false",
		"thrusting-weapon", "only"
	},
	"autocast", {"range", 6, "combat", "only", "condition", {"Coward", "false", "opponent", "only", "Bleeding", {ExactValue = 0}}},
	"ai-cast", {"range", 6, "combat", "only", "condition", {"Coward", "false", "opponent", "only", "Bleeding", {ExactValue = 0}}},
	"depend-upgrade", "upgrade-puncture"
)

-- spells to change units to their faction equivalents
DefineSpell("spell-frank-allegiance",
	"showname", _("Frank Allegiance"),
	"manacost", 0,
	"range", 0,
	"target", "self",
	"condition", {
		"organic", "only",
		"Building", "false",
		"faction-equivalent", "teuton", "Frank Tribe"
	},
	"action", {
		{"spawn-missile", "missile", "missile-magic-effect", "start-point", {"base", "target"}},
		{"polymorph", "civilization", "teuton", "faction", "Frank Tribe"}
	},
	"item-spell", "scroll",
	"sound-when-cast", "magic-holy"
)

DefineSpell("spell-suebi-allegiance",
	"showname", _("Suebi Allegiance"),
	"manacost", 0,
	"range", 0,
	"target", "self",
	"condition", {
		"organic", "only",
		"Building", "false",
		"faction-equivalent", "teuton", "Suebi Tribe"
	},
	"action", {
		{"spawn-missile", "missile", "missile-magic-effect", "start-point", {"base", "target"}},
		{"polymorph", "civilization", "teuton", "faction", "Suebi Tribe"}
	},
	"item-spell", "scroll",
	"sound-when-cast", "magic-holy"
)

DefineSpell("spell-detachment",
	"showname", _("Detachment"),
	"manacost", 0,
	"range", 0,
	"target", "self",
	"condition", {
		"organic", "only",
		"Building", "false",
		"faction-unit", "only"
	},
	"action", {
		{"spawn-missile", "missile", "missile-magic-effect", "start-point", {"base", "target"}},
		{"polymorph", "detachment"}
	},
	"item-spell", "scroll",
	"sound-when-cast", "magic-holy"
)
