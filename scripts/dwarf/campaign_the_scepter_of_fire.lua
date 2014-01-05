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
--      campaign1.ccl - Define the dwarf campaign 1.
--
--      (c) Copyright 2002-2010 by Lutz Sammer, Jimmy Salmon and Pali Rohár
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

--=============================================================================
--	Define the campaign

campaign_steps = {
  CreateMapStep("campaigns/dwarf/level01d.smp"),
--  CreateMapStep("campaigns/dwarf/level02d.smp"),
--  CreateMapStep("campaigns/dwarf/level03d.smp"),
--  CreateMapStep("campaigns/dwarf/level04d.smp"),
--  CreateVictoryStep("graphics/ui/dwarf/introscreen1.png", "campaigns/dwarf/victory.txt", { })
}

campaign_menu = { 1, 2, 3, 4, 5, 6, 9, 10, 11, 14, 15, 16, 19, 20, 21, 22 }

