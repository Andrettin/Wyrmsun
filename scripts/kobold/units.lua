--			 _________ __								 __
--			/	 _____//	|_____________ _/	|______		 ____	__ __	______
--			\_____	\\	 __\_	__ \__	\\	 __\__	\	 / ___\|	|	\/	___/
--			/				\|	|	|	| \// __ \|	|	/ __ \_/ /_/	>	|	/\___ \
--		 /_______	/|__|	|__|	(____	/__| (____	/\___	/|____//____	>
--						 \/									\/					\//_____/						\/
--	______________________													 ______________________
--												T H E	 W A R	 B E G I N S
--				 Stratagus - A free fantasy real time strategy game engine
--
--			units.ccl - Defines the kobold unit-types.
--
--			(c) Copyright 2014 by Andrettin
--
--			This program is free software; you can redistribute it and/or modify
--			it under the terms of the GNU General Public License as published by
--			the Free Software Foundation; either version 2 of the License, or
--			(at your option) any later version.
--
--			This program is distributed in the hope that it will be useful,
--			but WITHOUT ANY WARRANTY; without even the implied warranty of
--			MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the
--			GNU General Public License for more details.
--
--			You should have received a copy of the GNU General Public License
--			along with this program; if not, write to the Free Software
--			Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA	02111-1307	USA
--

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--

DefineUnitType("unit-kobold-footpad", { Name = _("Footpad"),
	Class = "infantry",
	Civilization = "kobold",
	Image = {"file", "kobold/units/kobold_footpad.png", "size", {72, 72}},
	Description = _("Stealthy and fierce, kobold footpads are the warriors of their race. They roam the tunnels of Nidavellir, abhorring to fight in the open. They call their swords \"fangs\" in homage to the power of a wyrm's bite."),
	Animations = "animations-goblin-spearman", Icon = "icon-kobold-footpad",
	Costs = {"time", 60, "gold", 600},
	Speed = 10,
	HitPoints = 50,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4, ComputerReactionRange = 6, PersonReactionRange = 4,
	Armor = 2, BasicDamage = 3, PiercingDamage = 6, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 60,
	BasePoints = 50,
	Demand = 1,
	Corpse = "unit-kobold-dead-body",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	LandUnit = true,
	organic = true,
	SelectableByRectangle = true,
	Sounds = {
		"selected", "click",
--		"selected", "basic-goblin-voices-selected-group",
--		"acknowledge", "basic-goblin-voices-acknowledge",
--		"ready", "goblin-impaler-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-kobold-voices-dead"} } )
