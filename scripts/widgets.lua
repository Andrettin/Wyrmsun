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
--      widgets.lua - Define the widgets
--
--      (c) Copyright 2004 by Jimmy Salmon
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

DefineButtonStyle("main-dwarf", {
  Size = {128, 20},
  Font = "game",
  TextNormalColor = "yellow",
  TextReverseColor = "white",
  TextAlign = "Center",
  TextPos = {64, 4},
  Default = {
    File = "dwarf/ui/widgets/button-thin-medium-normal.png", Size = {128, 20}, Frame = 0,
  },
  Hover = {
    TextNormalColor = "white",
  },
  Clicked = {
    File = "dwarf/ui/widgets/button-thin-medium-pressed.png", Size = {128, 20}, Frame = 0,
    TextNormalColor = "white",
    TextPos = {66, 6},
  },
})

DefineButtonStyle("network-dwarf", {
  Size = {80, 20},
  Font = "game",
  TextNormalColor = "yellow",
  TextReverseColor = "white",
  TextAlign = "Center",
  TextPos = {40, 4},
  Default = {
    File = "dwarf/ui/widgets/button-thin-small-normal.png", Size = {80, 20}, Frame = 0,
  },
  Hover = {
    TextNormalColor = "white",
  },
  Clicked = {
    File = "dwarf/ui/widgets/button-thin-small-pressed.png", Size = {80, 20}, Frame = 0,
    TextNormalColor = "white",
    TextPos = {42, 6},
  },
})

DefineButtonStyle("main-germanic", {
  Size = {128, 20},
  Font = "game",
  TextNormalColor = "yellow",
  TextReverseColor = "white",
  TextAlign = "Center",
  TextPos = {64, 4},
  Default = {
    File = "germanic/ui/widgets/button-thin-medium-normal.png", Size = {128, 20}, Frame = 0,
  },
  Hover = {
    TextNormalColor = "white",
  },
  Clicked = {
    File = "germanic/ui/widgets/button-thin-medium-pressed.png", Size = {128, 20}, Frame = 0,
    TextNormalColor = "white",
    TextPos = {66, 6},
  },
})

DefineButtonStyle("network-germanic", {
  Size = {80, 20},
  Font = "game",
  TextNormalColor = "yellow",
  TextReverseColor = "white",
  TextAlign = "Center",
  TextPos = {40, 4},
  Default = {
    File = "germanic/ui/widgets/button-thin-small-normal.png", Size = {80, 20}, Frame = 0,
  },
  Hover = {
    TextNormalColor = "white",
  },
  Clicked = {
    File = "germanic/ui/widgets/button-thin-small-pressed.png", Size = {80, 20}, Frame = 0,
    TextNormalColor = "white",
    TextPos = {42, 6},
  },
})

DefineButtonStyle("main-gnome", {
  Size = {128, 20},
  Font = "game",
  TextNormalColor = "yellow",
  TextReverseColor = "white",
  TextAlign = "Center",
  TextPos = {64, 4},
  Default = {
    File = "gnome/ui/widgets/button-thin-medium-normal.png", Size = {128, 20}, Frame = 0,
  },
  Hover = {
    TextNormalColor = "white",
  },
  Clicked = {
    File = "gnome/ui/widgets/button-thin-medium-pressed.png", Size = {128, 20}, Frame = 0,
    TextNormalColor = "white",
    TextPos = {66, 6},
  },
})

DefineButtonStyle("network-gnome", {
  Size = {80, 20},
  Font = "game",
  TextNormalColor = "yellow",
  TextReverseColor = "white",
  TextAlign = "Center",
  TextPos = {40, 4},
  Default = {
    File = "gnome/ui/widgets/button-thin-small-normal.png", Size = {80, 20}, Frame = 0,
  },
  Hover = {
    TextNormalColor = "white",
  },
  Clicked = {
    File = "gnome/ui/widgets/button-thin-small-pressed.png", Size = {80, 20}, Frame = 0,
    TextNormalColor = "white",
    TextPos = {42, 6},
  },
})

DefineButtonStyle("icon", {
  Size = {46, 38},
  Font = "game",
  TextNormalColor = "yellow",
  TextReverseColor = "white",
  TextAlign = "Right",
  TextPos = {46, 26},
  Default = {
    Border = {
      Color = {0, 0, 0}, Size = 1,
    },
  },
  Hover = {
    TextNormalColor = "white",
    Border = {
      Color = {128, 128, 128}, Size = 0,
    },
  },
  Clicked = {
    TextNormalColor = "white",
    Border = {
      Color = {128, 128, 128}, Size = 0,
    },
  },
})
