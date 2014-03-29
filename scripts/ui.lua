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
--      ui.lua - Define the user interface
--
--      (c) Copyright 2000-2007 by Lutz Sammer and Jimmy Salmon
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

Load("scripts/widgets.lua")

--
--  Define Decorations.
--
if (CanAccessFile("ui/health2.png")) then
	DefineSprites({Name = "sprite-health", File = "ui/health2.png", Offset = {0, -4}, Size = {31, 4}})

	DefineDecorations({Index = "HitPoints", HideNeutral = true, CenterX = true, ShowOpponent=true,
		OffsetPercent = {50, 100}, Method = {"sprite", {"sprite-health"}}})
end

if (CanAccessFile("ui/mana2.png")) then
	DefineSprites({Name = "sprite-mana", File = "ui/mana2.png", Offset = {0, -1}, Size = {31, 4}})

	DefineDecorations({Index = "Mana", HideNeutral = true, CenterX = true,OffsetPercent = {50, 100},Method = {"sprite", {"sprite-mana"}}})
	DefineDecorations({Index = "Transport", HideNeutral = true, CenterX = true,OffsetPercent = {50, 100},Method = {"sprite", {"sprite-mana"}}})
	DefineDecorations({Index = "Research", HideNeutral = true, CenterX = true,OffsetPercent = {50, 100},Method = {"sprite", {"sprite-mana"}}})
	DefineDecorations({Index = "Training", HideNeutral = true, CenterX = true,OffsetPercent = {50, 100},Method = {"sprite", {"sprite-mana"}}})
	DefineDecorations({Index = "UpgradeTo", HideNeutral = true, CenterX = true,OffsetPercent = {50, 100},Method = {"sprite", {"sprite-mana"}}})
	DefineDecorations({Index = "GiveResource", HideNeutral = false, CenterX = true,OffsetPercent = {50, 100},Method = {"sprite", {"sprite-mana"}}})
	DefineDecorations({Index = "CarryResource", HideNeutral = false, CenterX = true,OffsetPercent = {50, 100},Method = {"sprite", {"sprite-mana"}}})
end
DefineSprites({Name = "sprite-shadow", File = "missiles/unit_shadow.png", Offset = {3, 42}, Size = {32, 32}})
DefineSprites({Name = "sprite-spell", File = "ui/bloodlust,haste,slow,invisible,shield.png", Offset = {1, 1}, Size = {16, 16}})
DefineSprites({Name = "sprite-level-up", File = "ui/level_up.png", Offset = {1, 1}, Size = {16, 16}})


DefineDecorations({Index = "Bloodlust", ShowOpponent = true,
  Offset = {0, 0}, Method = {"static-sprite", {"sprite-spell", 0}}})
DefineDecorations({Index = "Haste", ShowOpponent = true,
  Offset = {16, 0}, Method = {"static-sprite", {"sprite-spell", 1}}})
DefineDecorations({Index = "Slow", ShowOpponent = true,
  Offset = {16, 0}, Method = {"static-sprite", {"sprite-spell", 2}}})
DefineDecorations({Index = "Invisible", ShowOpponent = true,
  Offset = {32, 0}, Method = {"static-sprite", {"sprite-spell", 3}}})
DefineDecorations({Index = "UnholyArmor", ShowOpponent = true,
  Offset = {48, 0}, Method = {"static-sprite", {"sprite-spell", 4}}})
DefineDecorations({Index = "ShadowFly", ShowOpponent = true, ShowWhenMax = true, ShowWhenNull = true,
  Offset = {0, 0}, Method = {"sprite", {"sprite-shadow"}}})
DefineDecorations({Index = "LevelUp", ShowOpponent = false,
  Offset = {16, 0}, Method = {"static-sprite", {"sprite-level-up", 0}}})

--
--  Define Panels
--
local info_panel_x = 0
local info_panel_y = 160

local min_damage = Div(
	Add(
		ActiveUnitVar("PiercingDamage"),
		ActiveUnitVar("PiercingDamageBonus")
	),
	2
)
local max_damage = Sub(
	Add(
		Add(
			ActiveUnitVar("BasicDamage"),
			ActiveUnitVar("BasicDamageBonus")
		),
		Add(
			ActiveUnitVar("PiercingDamage"),
			ActiveUnitVar("PiercingDamageBonus")
		)
	),
	Sub(
		ActiveUnitVar("PiercingDamage", "Value", "Type"),
		ActiveUnitVar("PiercingDamage", "Value", "Initial")
	)
)
-- takes piercing damage bonuses into account for the "+X" damage bonus on the unit's panel
--local damage_bonus = Add(
--	Sub(
--		ActiveUnitVar("PiercingDamage", "Value", "Type"),
--		ActiveUnitVar("PiercingDamage", "Value", "Initial")
--	),
--	ActiveUnitVar("PiercingDamageBonus")
--);
local damage_bonus = Sub(
	ActiveUnitVar("PiercingDamage", "Value", "Type"),
	ActiveUnitVar("PiercingDamage", "Value", "Initial")
)

local armor = Sub(
	Add(
		ActiveUnitVar("Armor"),
		ActiveUnitVar("ArmorBonus")
	),
	Sub(
		ActiveUnitVar("Armor", "Value", "Type"),
		ActiveUnitVar("Armor", "Value", "Initial")
	)
)

local armor_bonus = Sub(
	ActiveUnitVar("Armor", "Value", "Type"),
	ActiveUnitVar("Armor", "Value", "Initial")
)

DefinePanelContents(
-- Default presentation. ------------------------
  {
  Ident = "panel-general-contents",
  Pos = {info_panel_x, info_panel_y}, DefaultFont = "game",
  Contents = {
	{ Pos = {10, 48}, Condition = {ShowOpponent = false, HideNeutral = true},
--		More = {"LifeBar", {Variable = "HitPoints", Height = 7, Width = 45}}
		More = {"LifeBar", {Variable = "HitPoints", Height = 9, Width = 45}}
	},
	{ Pos = {34, 49}, Condition = {ShowOpponent = false, HideNeutral = true},
		More = {"FormattedText2", {
			Font = "small", Variable = "HitPoints", Format = "%d/%d",
			Component1 = "Value", Component2 = "Max", Centered = true}}
	},

--	{ Pos = {114, 11}, More = {"Text", {Text =
--		If(Equal(ActiveUnitVar("CharacterName"), 1), DwarvenNames[1],
--		If(Equal(ActiveUnitVar("CharacterName"), 2), DwarvenNames[2],
--		If(Equal(ActiveUnitVar("CharacterName"), 3), DwarvenNames[3],
--		If(Equal(ActiveUnitVar("CharacterName"), 4), DwarvenNames[4],
--		If(Equal(ActiveUnitVar("CharacterName"), 5), DwarvenNames[5],
--		If(Equal(ActiveUnitVar("CharacterName"), 6), DwarvenNames[6],
--		If(Equal(ActiveUnitVar("CharacterName"), 7), DwarvenNames[7],
--		If(Equal(ActiveUnitVar("CharacterName"), 8), DwarvenNames[8],
--		If(Equal(ActiveUnitVar("CharacterName"), 9), DwarvenNames[9],
--		If(Equal(ActiveUnitVar("CharacterName"), 10), DwarvenNames[10],
--		If(Equal(ActiveUnitVar("CharacterName"), 11), DwarvenNames[11],
--		If(Equal(ActiveUnitVar("CharacterName"), 12), DwarvenNames[12],
--		If(Equal(ActiveUnitVar("CharacterName"), 13), DwarvenNames[13],
--		If(Equal(ActiveUnitVar("CharacterName"), 14), DwarvenNames[14],
--		If(Equal(ActiveUnitVar("CharacterName"), 15), DwarvenNames[15],
--		If(Equal(ActiveUnitVar("CharacterName"), 16), DwarvenNames[16],
--		If(Equal(ActiveUnitVar("CharacterName"), 17), DwarvenNames[17],
--		If(Equal(ActiveUnitVar("CharacterName"), 18), DwarvenNames[18],
--		If(Equal(ActiveUnitVar("CharacterName"), 19), DwarvenNames[19],
--		If(Equal(ActiveUnitVar("CharacterName"), 20), DwarvenNames[20],
--		If(Equal(ActiveUnitVar("CharacterName"), 21), DwarvenNames[21],
--		If(Equal(ActiveUnitVar("CharacterName"), 22), DwarvenNames[22],
--		If(Equal(ActiveUnitVar("CharacterName"), 23), DwarvenNames[23],
--		If(Equal(ActiveUnitVar("CharacterName"), 24), DwarvenNames[24],
--		If(Equal(ActiveUnitVar("CharacterName"), 25), DwarvenNames[25],
--		If(Equal(ActiveUnitVar("CharacterName"), 26), DwarvenNames[26],
--		If(Equal(ActiveUnitVar("CharacterName"), 27), DwarvenNames[27],
--		If(Equal(ActiveUnitVar("CharacterName"), 28), DwarvenNames[28],
--		If(Equal(ActiveUnitVar("CharacterName"), 29), DwarvenNames[29],
--		If(Equal(ActiveUnitVar("CharacterName"), 30), DwarvenNames[30],
--		If(Equal(ActiveUnitVar("CharacterName"), 31), DwarvenNames[31],
--		If(Equal(ActiveUnitVar("CharacterName"), 32), DwarvenNames[32],
--		If(Equal(ActiveUnitVar("CharacterName"), 33), DwarvenNames[33],
--		If(Equal(ActiveUnitVar("CharacterName"), 34), DwarvenNames[34],
--		If(Equal(ActiveUnitVar("CharacterName"), 35), DwarvenNames[35],
--		If(Equal(ActiveUnitVar("CharacterName"), 36), DwarvenNames[36],
--		If(Equal(ActiveUnitVar("CharacterName"), 37), DwarvenNames[37],
--		If(Equal(ActiveUnitVar("CharacterName"), 38), DwarvenNames[38],
--		If(Equal(ActiveUnitVar("CharacterName"), 39), DwarvenNames[39],
--		If(Equal(ActiveUnitVar("CharacterName"), 40), DwarvenNames[40],
--		If(Equal(ActiveUnitVar("CharacterName"), 41), DwarvenNames[41],
--		If(Equal(ActiveUnitVar("CharacterName"), 42), DwarvenNames[42],
--		If(Equal(ActiveUnitVar("CharacterName"), 43), DwarvenNames[43],
--		If(Equal(ActiveUnitVar("CharacterName"), 44), DwarvenNames[44],
--		If(Equal(ActiveUnitVar("CharacterName"), 45), DwarvenNames[45],
--		If(Equal(ActiveUnitVar("CharacterName"), 46), DwarvenNames[46],
--		If(Equal(ActiveUnitVar("CharacterName"), 47), DwarvenNames[47],
--		If(Equal(ActiveUnitVar("CharacterName"), 48), DwarvenNames[48],
--		If(Equal(ActiveUnitVar("CharacterName"), 49), DwarvenNames[49],
--		If(Equal(ActiveUnitVar("CharacterName"), 50), DwarvenNames[50],
--		If(Equal(ActiveUnitVar("CharacterName"), 51), DwarvenNames[51],
--		If(Equal(ActiveUnitVar("CharacterName"), 52), DwarvenNames[52],
--		If(Equal(ActiveUnitVar("CharacterName"), 53), DwarvenNames[53],
--		If(Equal(ActiveUnitVar("CharacterName"), 54), DwarvenNames[54],
--		If(Equal(ActiveUnitVar("CharacterName"), 55), DwarvenNames[55],
--		If(Equal(ActiveUnitVar("CharacterName"), 56), DwarvenNames[56],
--		If(Equal(ActiveUnitVar("CharacterName"), 57), DwarvenNames[57],
--		If(Equal(ActiveUnitVar("CharacterName"), 58), DwarvenNames[58],
--		If(Equal(ActiveUnitVar("CharacterName"), 59), DwarvenNames[59],
--		If(Equal(ActiveUnitVar("CharacterName"), 60), DwarvenNames[60],
--		If(Equal(ActiveUnitVar("CharacterName"), 61), DwarvenNames[61],
--		If(Equal(ActiveUnitVar("CharacterName"), 62), DwarvenNames[62],
--		If(Equal(ActiveUnitVar("CharacterName"), 63), DwarvenNames[63],
--		If(Equal(ActiveUnitVar("CharacterName"), 64), DwarvenNames[64],
--		If(Equal(ActiveUnitVar("CharacterName"), 65), DwarvenNames[65],
--		If(Equal(ActiveUnitVar("CharacterName"), 66), DwarvenNames[66],
--		If(Equal(ActiveUnitVar("CharacterName"), 67), DwarvenNames[67],
--		If(Equal(ActiveUnitVar("CharacterName"), 68), DwarvenNames[68],
--		If(Equal(ActiveUnitVar("CharacterName"), 69), DwarvenNames[69],
--		If(Equal(ActiveUnitVar("CharacterName"), 70), DwarvenNames[70],
--		If(Equal(ActiveUnitVar("CharacterName"), 71), DwarvenNames[71],
--		If(Equal(ActiveUnitVar("CharacterName"), 72), DwarvenNames[72],
--		If(Equal(ActiveUnitVar("CharacterName"), 73), DwarvenNames[73],
--		If(Equal(ActiveUnitVar("CharacterName"), 74), DwarvenNames[74],
--		If(Equal(ActiveUnitVar("CharacterName"), 75), DwarvenNames[75],
--		If(Equal(ActiveUnitVar("CharacterName"), 76), DwarvenNames[76],
--		If(Equal(ActiveUnitVar("CharacterName"), 77), DwarvenNames[77],
--		""
--		))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), Centered = true }}
--	},
	{ Pos = {114, 11}, More = {"Text", {Text = Line(1, UnitName("Active"), 110, "game"), Centered = true}} },
	{ Pos = {114, 25}, More = {"Text", {Text = Line(2, UnitName("Active"), 110, "game"), Centered = true}} },

-- Ressource Left
	{ Pos = {88, 86}, Condition = {ShowOpponent = false, GiveResource = "only"},
		More = {"FormattedText2", {Format = "%s Left: %d", Variable = "GiveResource",
					Component1 = "Name", Component2 = "Value", Centered = true}}
	},

-- Construction
	{ Pos = {12, 153}, Condition = {ShowOpponent = false, HideNeutral = true, Build = "only"},
		More = {"CompleteBar", {Variable = "Build", Width = 152, Height = 18}}
	},
	{ Pos = {50, 156}, Condition = {ShowOpponent = false, HideNeutral = true, Build = "only"},
		More = {"Text", "% Complete"}},
	{ Pos = {107, 78}, Condition = {ShowOpponent = false, HideNeutral = true, Build = "only"},
		More = {"Icon", {Unit = "Worker"}}}


  } },
-- Supply Building constructed.----------------
  {
  Ident = "panel-building-contents",
  Pos = {info_panel_x, info_panel_y}, DefaultFont = "game",
  Condition = {ShowOpponent = false, HideNeutral = true, Build = "false", Supply = "only", Training = "false", UpgradeTo = "false"},
-- FIXME more condition. not town hall.
  Contents = {
-- Food building
	{ Pos = {16, 71}, More = {"Text", "Usage"} },
	{ Pos = {58, 86}, More = {"Text", {Text = "Supply : ", Variable = "Supply", Component = "Max"}} },
	{ Pos = {51, 102}, More = { "Text", {Text = Concat("Demand : ",
									If(GreaterThan(ActiveUnitVar("Demand", "Max"), ActiveUnitVar("Supply", "Max")),
										InverseVideo(String(ActiveUnitVar("Demand", "Max"))),
										String(ActiveUnitVar("Demand", "Max")) ))}}
    }

  } },
-- All own unit -----------------
  {
  Ident = "panel-all-unit-contents",
  Pos = {info_panel_x, info_panel_y},
  DefaultFont = "game",
  Condition = {ShowOpponent = false, HideNeutral = true, Build = "false"},
  Contents = {
	{ Pos = {37, 86}, Condition = {PiercingDamage = "only"},
		More = {"Text", {Text = Concat("Damage: ", String(min_damage), "-", String(max_damage),
								If(Equal(0, damage_bonus), "",
									InverseVideo(Concat("+", String(damage_bonus)))) )}}

	},

	{ Pos = {47, 102}, Condition = {AttackRange = "only"},
		More = {"Text", {
					Text = "Range: ", Variable = "AttackRange" , Stat = true}}
	},
-- Research
	{ Pos = {12, 153}, Condition = {Research = "only"},
		More = {"CompleteBar", {Variable = "Research", Width = 152, Height = 18}}
	},
	{ Pos = {16, 86}, Condition = {Research = "only"}, More = {"Text", "Researching:"}},
	{ Pos = {50, 156}, Condition = {Research = "only"}, More = {"Text", "% Complete"}},
-- Training
	{ Pos = {12, 153}, Condition = {Training = "only"},
		More = {"CompleteBar", {Variable = "Training", Width = 152, Height = 18}}
	},
	{ Pos = {50, 156}, Condition = {Training = "only"}, More = {"Text", "% Complete"}},
-- Upgrading To
	{ Pos = {12, 153}, Condition = {UpgradeTo = "only"},
		More = {"CompleteBar", {Variable = "UpgradeTo", Width = 152, Height = 18}}
	},
	{ Pos = {37,  86}, More = {"Text", "Upgrading:"}, Condition = {UpgradeTo = "only"} },
	{ Pos = {50, 156}, More = {"Text", "% Complete"}, Condition = {UpgradeTo = "only"} },
-- Mana
	{ Pos = {16, 148}, Condition = {Mana = "only"},
		More = {"CompleteBar", {Variable = "Mana", Height = 16, Width = 140, Border = true}}
	},
	{ Pos = {86, 150}, More = {"Text", {Variable = "Mana"}}, Condition = {Mana = "only"} },
-- Resource Carry
	{ Pos = {61, 149}, Condition = {CarryResource = "only"},
		More = {"FormattedText2", {Format = "Carry: %d %s", Variable = "CarryResource",
				Component1 = "Value", Component2 = "Name"}}
	}

  } },
-- Attack Unit -----------------------------
  {
  Ident = "panel-attack-unit-contents",
  Pos = {info_panel_x, info_panel_y},
  DefaultFont = "game",
  Condition = {ShowOpponent = true, HideNeutral = true, Building = "false", Build = "false"},
  Contents = {
-- Unit caracteristics
	{ Pos = {54, 71}, Condition = {ShowOpponent = false},
		More = {"Text", {Text =
			If(GreaterThanOrEq(ActiveUnitVar("TraitResilient"), 1), "Trait: Resilient",
			If(GreaterThanOrEq(ActiveUnitVar("TraitStrong"), 1), "Trait: Strong",
			""
		))}}

	},
	{ Pos = {114, 41},
		More = {"FormattedText", {Centered = true, Variable = "Level", Format = "Level: ~<%d~>"}}
	},
	{ Pos = {114, 56},
		More = {"FormattedText2", {Centered = true,
			Variable1 = "Xp", Variable2 = "Kill", Format = "XP: ~<%d~> Kills: ~<%d~>"}}
	},
	{ Pos = {47, 71}, Condition = {Armor = "only"},
		More = {"Text", {Text = Concat("Armor: ", String(armor),
			If(Equal(0, armor_bonus), "",
			InverseVideo(Concat("+", String(armor_bonus)))) 
								)}}
--		More = {"Text", {
--					Text = "Armor: ", Variable = "Armor", Stat = true}}
	},
	{ Pos = {54, 118}, Condition = {SightRange = "only"},
		More = {"Text", {Text = "Sight: ", Variable = "SightRange", Stat = true}}
	},
	{ Pos = {53, 133}, Condition = {Speed = "only"},
		More = {"Text", {Text = "Speed: ", Variable = "Speed", Stat = true}}
	} } })

Load("scripts/dwarf/ui.lua")
Load("scripts/gnome/ui.lua")

wyrmsun.playlist = { "music/legends_of_the_north.ogg" }

UI.MessageFont = Fonts["game"]
UI.MessageScrollSpeed = 5

DefineCursor({
  Name = "cursor-glass",
  Race = "any",
  File = "ui/cursors/magnifying_glass.png",
  HotSpot = {11, 11},
  Size = {34, 35}})
DefineCursor({
  Name = "cursor-cross",
  Race = "any",
  File = "ui/cursors/small_green_cross.png",
  HotSpot = { 8,  8},
  Size = {18, 18}})
if (CanAccessFile("ui/cursors/cross.png")) then
  DefineCursor({
	Name = "cursor-scroll",
	Race = "any",
	File = "ui/cursors/cross.png",
	HotSpot = {15, 15},
	Size = {32, 32}})
end
DefineCursor({
  Name = "cursor-arrow-e",
  Race = "any",
  File = "ui/cursors/arrow_E.png",
  HotSpot = {22, 10},
  Size = {32, 24}})
DefineCursor({
  Name = "cursor-arrow-ne",
  Race = "any",
  File = "ui/cursors/arrow_NE.png",
  HotSpot = {20,  2},
  Size = {32, 24}})
DefineCursor({
  Name = "cursor-arrow-n",
  Race = "any",
  File = "ui/cursors/arrow_N.png",
  HotSpot = {12,  2},
  Size = {24, 32}})
DefineCursor({
  Name = "cursor-arrow-nw",
  Race = "any",
  File = "ui/cursors/arrow_NW.png",
  HotSpot = { 2,  2},
  Size = {24, 32}})
DefineCursor({
  Name = "cursor-arrow-w",
  Race = "any",
  File = "ui/cursors/arrow_W.png",
  HotSpot = { 4, 10},
  Size = {32, 24}})
DefineCursor({
  Name = "cursor-arrow-s",
  Race = "any",
  File = "ui/cursors/arrow_S.png",
  HotSpot = {12, 22},
  Size = {24, 32}})
DefineCursor({
  Name = "cursor-arrow-sw",
  Race = "any",
  File = "ui/cursors/arrow_SW.png",
  HotSpot = { 2, 18},
  Size = {32, 24}})
DefineCursor({
  Name = "cursor-arrow-se",
  Race = "any",
  File = "ui/cursors/arrow_SE.png",
  HotSpot = {20, 18},
  Size = {24, 32}})
