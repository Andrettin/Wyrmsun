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
--	DefineDecorations({Index = "GiveResource", HideNeutral = false, CenterX = true,OffsetPercent = {50, 100},Method = {"sprite", {"sprite-mana"}}})
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
DefineDecorations({Index = "LevelUp", ShowOpponent = false, HideAllied = true,
  Offset = {16, 0}, Method = {"static-sprite", {"sprite-level-up", 0}}})

--
--  Define Panels
--
local info_panel_x = 0
local info_panel_y = 160

local min_damage = Div(
	Sub(
		ActiveUnitVar("PiercingDamage"),
		Sub(
			ActiveUnitVar("PiercingDamage", "Value", "Type"),
			ActiveUnitVar("PiercingDamage", "Value", "Initial")
		)
	),
	2
)
local max_damage = Sub(
	Add(
		Add(
			ActiveUnitVar("BasicDamage"),
			ActiveUnitVar("BasicDamageBonus")
		),
		ActiveUnitVar("PiercingDamage")
	),
	Sub(
		ActiveUnitVar("PiercingDamage", "Value", "Type"),
		ActiveUnitVar("PiercingDamage", "Value", "Initial")
	)
)
-- takes piercing damage bonuses into account for the "+X" damage bonus on the unit's panel
local damage_bonus = Add(
	Sub(
		ActiveUnitVar("PiercingDamage", "Value", "Type"),
		ActiveUnitVar("PiercingDamage", "Value", "Initial")
	),
	ActiveUnitVar("PiercingDamageBonus")
);
--local damage_bonus = Sub(
--	ActiveUnitVar("PiercingDamage", "Value", "Type"),
--	ActiveUnitVar("PiercingDamage", "Value", "Initial")
--)

local armor = Sub(
	ActiveUnitVar("Armor"),
	Sub(
		ActiveUnitVar("Armor", "Value", "Type"),
		ActiveUnitVar("Armor", "Value", "Initial")
	)
)

local armor_bonus = Add(
	Sub(
		ActiveUnitVar("Armor", "Value", "Type"),
		ActiveUnitVar("Armor", "Value", "Initial")
	),
	ActiveUnitVar("ArmorBonus")
)

DefinePanelContents(
-- Default presentation. ------------------------
  {
  Ident = "panel-general-contents",
  Pos = {info_panel_x, info_panel_y}, DefaultFont = "game",
  Contents = {
	{ Pos = {8, 51}, Condition = {ShowOpponent = false, HideNeutral = true},
		More = {"LifeBar", {Variable = "HitPoints", Height = 7, Width = 50}}
	},
	{ Pos = {35, 61}, Condition = {ShowOpponent = false, HideNeutral = true},
		More = {"FormattedText2", {
			Font = "small", Variable = "HitPoints", Format = "%d/%d",
			Component1 = "Value", Component2 = "Max", Centered = true}}
	},

	{ Pos = {114, 11}, More = {"Text", {Text = Line(1, UnitName("Active"), 110, "game"), Centered = true}} },
	{ Pos = {114, 25}, More = {"Text", {Text = Line(2, UnitName("Active"), 110, "game"), Centered = true}} },

	-- unit type name, if the unit has a personal name
	{ Pos = {114, 27}, Condition = {ShowOpponent = true, Building = "false"}, More = {"Text", {Text = Line(1, UnitTypeName("Active"), 110, "game"), Centered = true}} },
	{ Pos = {114, 41}, Condition = {ShowOpponent = true, Building = "false"}, More = {"Text", {Text = Line(2, UnitTypeName("Active"), 110, "game"), Centered = true}} },

	{ Pos = {114, 41}, Condition = {ShowOpponent = true, Building = "only"}, More = {"Text", {Text = Line(1, UnitTypeName("Active"), 110, "game"), Centered = true}} },
	{ Pos = {114, 55}, Condition = {ShowOpponent = true, Building = "only"}, More = {"Text", {Text = Line(2, UnitTypeName("Active"), 110, "game"), Centered = true}} },
	
-- Ressource Left
	{ Pos = {88, 86}, Condition = {ShowOpponent = false, GiveResource = "only"},
		More = {"FormattedText2", {Format = "%s Left: %d", Variable = "GiveResource",
					Component1 = "Name", Component2 = "Value", Centered = true}}
	},

-- Construction
	{ Pos = {12, 152}, Condition = {ShowOpponent = false, HideNeutral = true, Build = "only"},
		More = {"CompleteBar", {Variable = "Build", Width = 152, Height = 14, Border = false}}
	},
	{ Pos = {50, 153}, Condition = {ShowOpponent = false, HideNeutral = true, Build = "only"},
		More = {"Text", "% Complete"}},
	{ Pos = {107, 78}, Condition = {ShowOpponent = false, HideNeutral = true, Build = "only"},
		More = {"Icon", {Unit = "Worker"}}}


  } },
-- Supply Building constructed.----------------
  {
  Ident = "panel-building-contents",
  Pos = {info_panel_x, info_panel_y}, DefaultFont = "game",
  Condition = {ShowOpponent = false, HideNeutral = true, Center = "false", Build = "false", Supply = "only", Training = "false", UpgradeTo = "false"},
  Contents = {
-- Food building
	{ Pos = {16, 71}, More = {"Text", "Usage"} },
	{ Pos = {58, 86}, More = {"Text", {Text = "Supply: ", Variable = "Supply", Component = "Max"}} },
	{ Pos = {51, 102}, More = { "Text", {Text = Concat("Demand: ",
									If(GreaterThan(ActiveUnitVar("Demand", "Max"), ActiveUnitVar("Supply", "Max")),
										InverseVideo(String(ActiveUnitVar("Demand", "Max"))),
										String(ActiveUnitVar("Demand", "Max")) ))}}
    }

  } },
  -- Center
  {
  Ident = "panel-center-contents",
  Pos = {info_panel_x, info_panel_y}, DefaultFont = "game",
  Condition = {ShowOpponent = false, HideNeutral = true, Center = "only", Build = "false", Supply = "only", Training = "false", UpgradeTo = "false"},
  Contents = {
	{ Pos = {16, 86}, More = {"Text", "Production"} },
	{ Pos = {32, 102}, More = { "Text", {Text = Concat("Gold: 100", 
									If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "gold"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "gold"), 100)))),
										"" ))}}
    },
	{ Pos = {32, 118}, Condition = {LumberImprove = "only"}, More = { "Text", {Text = Concat("Lumber: 100", 
									If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "lumber"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "lumber"), 100)))),
										"" ))}}
    },
	{ Pos = {84, 134}, Condition = {OilImprove = "only"}, More = { "Text", {Text = Concat("Oil: 100", 
									If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "oil"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "oil"), 100)))),
										"" ))}}
    },

  } },
  --res inmprovement
   {
  Ident = "panel-resimrove-contents",
  Pos = {info_panel_x, info_panel_y}, DefaultFont = "game",
  Condition = {ShowOpponent = false, HideNeutral = true, Center = "false", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
  Contents = {
	{ Pos = {16, 86}, Condition = {LumberImprove = "only"}, More = {"Text", "Production"} },
	{ Pos = {16, 86}, Condition = {OilImprove = "only"}, More = {"Text", "Production"} },
	{ Pos = {32, 102}, Condition = {LumberImprove = "only"}, More = { "Text", {Text = Concat("Lumber: 100", 
									If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "lumber"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "lumber"), 100)))),
										"" ))}}
    },
	{ Pos = {84, 102}, Condition = {OilImprove = "only"}, More = { "Text", {Text = Concat("Oil: 100", 
									If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "oil"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "oil"), 100)))),
										"" ))}}
    },

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
	{ Pos = {12, 152}, Condition = {Research = "only"},
		More = {"CompleteBar", {Variable = "Research", Width = 152, Height = 14, Border = false}}
	},
	{ Pos = {16, 86}, Condition = {Research = "only"}, More = {"Text", "Researching:"}},
	{ Pos = {50, 153}, Condition = {Research = "only"}, More = {"Text", "% Complete"}},
-- Training
	{ Pos = {12, 152}, Condition = {Training = "only"},
		More = {"CompleteBar", {Variable = "Training", Width = 152, Height = 14, Border = false}}
	},
	{ Pos = {50, 153}, Condition = {Training = "only"}, More = {"Text", "% Complete"}},
-- Upgrading To
	{ Pos = {12, 152}, Condition = {UpgradeTo = "only"},
		More = {"CompleteBar", {Variable = "UpgradeTo", Width = 152, Height = 14, Border = false}}
	},
	{ Pos = {23,  86}, More = {"Text", "Upgrading:"}, Condition = {UpgradeTo = "only"} },
	{ Pos = {50, 153}, More = {"Text", "% Complete"}, Condition = {UpgradeTo = "only"} },
-- Mana
	{ Pos = {16, 148}, Condition = {Mana = "only"},
		More = {"CompleteBar", {Variable = "Mana", Height = 16, Width = 140, Border = false, Color = "light-blue"}}
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
--	{ Pos = {114, 41},
--		More = {"FormattedText", {Centered = true, Variable = "Level", Format = "Level: ~<%d~>"}}
--	},
--	{ Pos = {114, 56},
--		More = {"FormattedText2", {Centered = true,
--			Variable1 = "Xp", Variable2 = "Kill", Format = "XP: ~<%d~> Kills: ~<%d~>"}}
--	},
	{ Pos = {114, 56}, Condition = {ShowOpponent = false, HideNeutral = true},
		More = {"FormattedText2", {Centered = true,
			Variable1 = "Level", Variable2 = "Xp", Format = "Lv.: ~<%d~> XP: ~<%d~>"}}
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
Load("scripts/germanic/ui.lua")
Load("scripts/gnome/ui.lua")
Load("scripts/goblin/ui.lua")
Load("scripts/kobold/ui.lua")

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
