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
--      (c) Copyright 2017-2019 by Andrettin
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

DefineUpgrade("upgrade-frankish-civilization", {
	Name = "Frankish Civilization"
})

DefineUpgrade("upgrade-frank-spatha", {
	Name = "Spatha",
	Parent = "upgrade-long-sword",
	Icon = "icon-frankish-spatha",
	Civilization = "frankish",
	RequirementsString = "Broad Sword",
	Description = "With the development of iron working, the forging of longer swords became a practical possibility.\n\nEffect: +2 Damage for swordwielders. Allows Spathas to be sold at the Market.",
	Background = "During the Migration Period, Germanic peoples - including West Germanics - used longswords such as these in combat.",
	Item = "unit-frankish-spatha"
})

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-germanic-town-hall"}, {"convert-to", "unit-teuton-town-hall"}
)
  
DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-germanic-farm"}, {"convert-to", "unit-teuton-farm"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-germanic-barracks"}, {"convert-to", "unit-teuton-barracks"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-germanic-carpenters-shop"}, {"convert-to", "unit-teuton-lumber-mill"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-germanic-smithy"}, {"convert-to", "unit-teuton-smithy"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-germanic-temple"}, {"convert-to", "unit-teuton-temple"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-germanic-market"}, {"convert-to", "unit-teuton-market"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-germanic-dock"}, {"convert-to", "unit-teuton-dock"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-germanic-worker"}, {"convert-to", "unit-teuton-worker"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-germanic-warrior"}, {"convert-to", "unit-frank-swordsman"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-teuton-swordsman"}, {"convert-to", "unit-frank-swordsman"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-germanic-veteran-warrior"}, {"convert-to", "unit-frank-veteran-swordsman"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-teuton-veteran-swordsman"}, {"convert-to", "unit-frank-veteran-swordsman"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-germanic-chieftain"}, {"convert-to", "unit-frank-heroic-swordsman"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-teuton-heroic-swordsman"}, {"convert-to", "unit-frank-heroic-swordsman"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-germanic-spearman"}, {"convert-to", "unit-frank-spearman"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-teuton-spearman"}, {"convert-to", "unit-frank-spearman"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-germanic-archer"}, {"convert-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-germanic-priest"}, {"convert-to", "unit-teuton-priest"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-teuton-ritter"}, {"convert-to", "unit-frank-horseman"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-teuton-knight-lord"}, {"convert-to", "unit-frank-knight-lord"}
)

DefineModifier("upgrade-frankish-civilization",
	{"apply-to", "unit-germanic-transport-ship"}, {"convert-to", "unit-teuton-kogge"}
)

DefineModifier("upgrade-frankish-civilization",
	{"remove-upgrade", "upgrade-deity-heimdall"}
)

DefineModifier("upgrade-frank-spatha",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-frank-swordsman"}, {"apply-to", "unit-frank-veteran-swordsman"}, {"apply-to", "unit-frank-heroic-swordsman"},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"}
)
