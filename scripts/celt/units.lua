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
--      units.ccl - Defines the celt unit-types.
--
--      (c) Copyright 2014 by Andre Novellino Gouvêa
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
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--

DefineUnitType("unit-celt-farm", { Name = _("Farm"),
	Class = "farm",
	Civilization = "celt",
	Description = _("Farms are essential for supporting a settlement's population."),
--	Background = _("The bronze age predecessors of the germanic peoples had a variety of plants and animals in their farms. Wheat, millet and peas figured among the crops planted, while the most common animals were sheep and pigs. The animals bred by them were generally smaller than their modern counterparts, but they were sturdier."),
	Image = {"file", "celt/buildings/farm.png", "size", {64, 64}},
	Animations = "animations-building", Icon = "icon-celt-farm",
	Costs = {"time", 100, "gold", 500, "lumber", 250},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-land-simple",
	Speed = 0,
	HitPoints = 334, -- 400 with masonry
	DrawLevel = 20,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 1,
	Armor = 15, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 20, AnnoyComputerFactor = 45,
	Points = 100,
	Supply = 4,
	Corpse = "unit-destroyed-2x2-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "farm-acknowledge",
--		"ready", "farm-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"} } )
