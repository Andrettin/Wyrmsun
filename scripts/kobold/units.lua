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
	Parent = "unit-template-infantry",
	Civilization = "kobold",
	Image = {"file", "kobold/units/kobold_footpad.png", "size", {72, 72}},
	Description = _("Stealthy and fierce, kobold footpads are the warriors of their race. They roam the tunnels of Nidavellir, abhorring to fight in the open. They call their swords \"fangs\" in homage to the power of a wyrm's bite."),
	Animations = "animations-goblin-spearman", Icon = "icon-kobold-footpad",
	HitPoints = 50,
	Accuracy = 12,
	Evasion = 12,
	Gender = 0, -- 0 = Not Set, 1 = Male, 2 = Female (since Kobolds are reptilian creatures, their graphics can represent both genders)
	Corpse = "unit-kobold-dead-body",
	Sounds = {
		"selected", "click",
--		"selected", "basic-goblin-voices-selected-group",
--		"acknowledge", "basic-goblin-voices-acknowledge",
--		"ready", "goblin-impaler-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-kobold-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )
