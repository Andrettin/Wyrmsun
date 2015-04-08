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
  Size = {99, 13},
  Font = "game",
  TextNormalColor = "white",
  TextReverseColor = "yellow",
  TextAlign = "Center",
  TextPos = {50, 0},
  Default = {
    File = "dwarf/ui/widgets/button-thinest-medium-normal.png", Size = {99, 13}, Frame = 0,
  },
  Hover = {
    TextNormalColor = "yellow",
  },
  Clicked = {
    File = "dwarf/ui/widgets/button-thinest-medium-pressed.png", Size = {99, 13}, Frame = 0,
    TextNormalColor = "yellow",
    TextPos = {51, 1},
  },
})

DefineButtonStyle("network-dwarf", {
  Size = {80, 20},
  Font = "game",
  TextNormalColor = "white",
  TextReverseColor = "yellow",
  TextAlign = "Center",
  TextPos = {40, 4},
  Default = {
    File = "dwarf/ui/widgets/button-thin-small-normal.png", Size = {80, 20}, Frame = 0,
  },
  Hover = {
    TextNormalColor = "yellow",
  },
  Clicked = {
    File = "dwarf/ui/widgets/button-thin-small-pressed.png", Size = {80, 20}, Frame = 0,
    TextNormalColor = "yellow",
    TextPos = {42, 6},
  },
})

DefineButtonStyle("main-germanic", {
  Size = {99, 13},
  Font = "game",
  TextNormalColor = "white",
  TextReverseColor = "yellow",
  TextAlign = "Center",
  TextPos = {50, 0},
  Default = {
    File = "germanic/ui/widgets/button-thinest-medium-normal.png", Size = {99, 13}, Frame = 0,
  },
  Hover = {
    TextNormalColor = "yellow",
  },
  Clicked = {
    File = "germanic/ui/widgets/button-thinest-medium-pressed.png", Size = {99, 13}, Frame = 0,
    TextNormalColor = "yellow",
    TextPos = {51, 1},
  },
})

DefineButtonStyle("network-germanic", {
  Size = {80, 20},
  Font = "game",
  TextNormalColor = "white",
  TextReverseColor = "yellow",
  TextAlign = "Center",
  TextPos = {40, 4},
  Default = {
    File = "germanic/ui/widgets/button-thin-small-normal.png", Size = {80, 20}, Frame = 0,
  },
  Hover = {
    TextNormalColor = "yellow",
  },
  Clicked = {
    File = "germanic/ui/widgets/button-thin-small-pressed.png", Size = {80, 20}, Frame = 0,
    TextNormalColor = "yellow",
    TextPos = {42, 6},
  },
})

DefineButtonStyle("main-gnome", {
  Size = {99, 13},
  Font = "game",
  TextNormalColor = "white",
  TextReverseColor = "yellow",
  TextAlign = "Center",
  TextPos = {50, 0},
  Default = {
    File = "dwarf/ui/widgets/button-thinest-medium-normal.png", Size = {99, 13}, Frame = 0,
  },
  Hover = {
    TextNormalColor = "yellow",
  },
  Clicked = {
    File = "dwarf/ui/widgets/button-thinest-medium-pressed.png", Size = {99, 13}, Frame = 0,
    TextNormalColor = "yellow",
    TextPos = {51, 1},
  },
})

DefineButtonStyle("network-gnome", {
  Size = {80, 20},
  Font = "game",
  TextNormalColor = "white",
  TextReverseColor = "yellow",
  TextAlign = "Center",
  TextPos = {40, 4},
  Default = {
    File = "gnome/ui/widgets/button-thin-small-normal.png", Size = {80, 20}, Frame = 0,
  },
  Hover = {
    TextNormalColor = "yellow",
  },
  Clicked = {
    File = "gnome/ui/widgets/button-thin-small-pressed.png", Size = {80, 20}, Frame = 0,
    TextNormalColor = "yellow",
    TextPos = {42, 6},
  },
})

DefineButtonStyle("icon", {
  Size = {46, 38},
  Font = "game",
  TextNormalColor = "yellow",
  TextReverseColor = "yellow",
  TextAlign = "Right",
  TextPos = {46, 26},
  Default = {
    Border = {
      Color = {0, 0, 0}, Size = 1,
    },
  },
  Hover = {
    TextNormalColor = "yellow",
    Border = {
      Color = {128, 128, 128}, Size = 0,
    },
  },
  Clicked = {
    TextNormalColor = "yellow",
    Border = {
      Color = {128, 128, 128}, Size = 0,
    },
  },
})
