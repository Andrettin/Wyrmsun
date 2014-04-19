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
--      icons.lua - Define the icons.
--
--      (c) Copyright 2001-2004 by Lutz Sammer and Jimmy Salmon
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

function DefineIcon(arg)
	local icon = CIcon:New(arg.Name)
	icon.G = CPlayerColorGraphic:New(arg.File, arg.Size[1], arg.Size[2])
	icon.Frame = arg.Frame
end

DefineIcon({
	Name = "icon-repair",
	Size = {46, 38},
	Frame = 0,
	File = "neutral/icons/repair.png"
})

DefineIcon({
	Name = "icon-harvest",
	Size = {46, 38},
	Frame = 0,
	File = "neutral/icons/harvest.png"
})

DefineIcon({
	Name = "icon-attack-ground",
	Size = {46, 38},
	Frame = 0,
	File = "neutral/icons/attack_ground.png"
})

DefineIcon({
	Name = "icon-dwarven-miner",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/miner.png"
})

DefineIcon({
	Name = "icon-dwarven-axefighter",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/dwarven_axefighter.png"
})

DefineIcon({
	Name = "icon-dwarven-steelclad",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/dwarven_steelclad.png"
})

DefineIcon({
	Name = "icon-dwarven-scout",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/dwarven_scout.png"
})

DefineIcon({
	Name = "icon-dwarven-town-hall",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/town_hall.png"
})

DefineIcon({
	Name = "icon-dwarven-mushroom-farm",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/mushroom_farm.png"
})

DefineIcon({
	Name = "icon-dwarven-barracks",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/barracks.png"
})

DefineIcon({
	Name = "icon-dwarven-blacksmith",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/blacksmith.png"
})

DefineIcon({
	Name = "icon-dwarven-axe-1",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/axe_1.png"
})

DefineIcon({
	Name = "icon-dwarven-axe-2",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/axe_2.png"
})

DefineIcon({
	Name = "icon-dwarven-axe-3",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/axe_3.png"
})

DefineIcon({
	Name = "icon-dwarven-shield-1",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/shield_1.png"
})

DefineIcon({
	Name = "icon-dwarven-shield-2",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/shield_2.png"
})

DefineIcon({
	Name = "icon-dwarven-shield-3",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/shield_3.png"
})

DefineIcon({
	Name = "icon-dwarven-throwing-axe-1",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/throwing_axe_1.png"
})

DefineIcon({
	Name = "icon-dwarven-throwing-axe-2",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/throwing_axe_2.png"
})

DefineIcon({
	Name = "icon-dwarven-throwing-axe-3",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/throwing_axe_3.png"
})

DefineIcon({
	Name = "icon-dwarven-boots",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/boots.png"
})

DefineIcon({
	Name = "icon-dwarven-patrol-land",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/patrol_land.png"
})

DefineIcon({
	Name = "icon-dwarven-stand-ground",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/stand_ground.png"
})

DefineIcon({
	Name = "icon-dwarven-return-goods",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/return_goods.png"
})

DefineIcon({
	Name = "icon-rugnur",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/rugnur.png"
})

DefineIcon({
	Name = "icon-rugnur-older",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/rugnur_older.png"
})

DefineIcon({
	Name = "icon-baglur",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/baglur.png"
})

DefineIcon({
	Name = "icon-thursagan",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/thursagan.png"
})

DefineIcon({
	Name = "icon-durstorn",
	Size = {46, 38},
	Frame = 0,
	File = "dwarf/icons/durstorn.png"
})

DefineIcon({
	Name = "icon-elven-swordsman",
	Size = {46, 38},
	Frame = 0,
	File = "elf/icons/elven_swordsman.png"
})

DefineIcon({
	Name = "icon-orc-spearman",
	Size = {46, 38},
	Frame = 0,
	File = "orc/icons/spearman.png"
})

DefineIcon({
	Name = "icon-gnomish-worker",
	Size = {46, 38},
	Frame = 0,
	File = "gnome/icons/gnomish_worker.png"
})

DefineIcon({
	Name = "icon-gnomish-recruit",
	Size = {46, 38},
	Frame = 0,
	File = "gnome/icons/gnomish_recruit.png"
})

DefineIcon({
	Name = "icon-goblin-spearman",
	Size = {46, 38},
	Frame = 0,
	File = "goblin/icons/goblin_spearman.png"
})

DefineIcon({
	Name = "icon-goblin-archer",
	Size = {46, 38},
	Frame = 0,
	File = "goblin/icons/goblin_archer.png"
})

DefineIcon({
	Name = "icon-goblin-swordsman",
	Size = {46, 38},
	Frame = 0,
	File = "goblin/icons/goblin_swordsman.png"
})

DefineIcon({
	Name = "icon-water-elemental",
	Size = {46, 38},
	Frame = 0,
	File = "neutral/icons/water_elemental.png"
})

DefineIcon({
	Name = "icon-cancel",
	Size = {46, 38},
	Frame = 0,
	File = "neutral/icons/cancel.png"
})

DefineIcon({
	Name = "icon-build-basic-structure",
	Size = {46, 38},
	Frame = 0,
	File = "neutral/icons/build_basic_structure.png"
})

DefineIcon({
	Name = "icon-gold-coins",
	Size = {46, 38},
	Frame = 0,
	File = "neutral/icons/gold_coins.png"
})

DefineIcon({
	Name = "icon-gold-sack",
	Size = {46, 38},
	Frame = 0,
	File = "neutral/icons/gold_sack.png"
})

DefineIcon({
	Name = "icon-chest",
	Size = {46, 38},
	Frame = 0,
	File = "neutral/icons/chest.png"
})

DefineIcon({
	Name = "icon-blue-potion",
	Size = {46, 38},
	Frame = 0,
	File = "neutral/icons/blue_potion.png"
})

DefineIcon({
	Name = "icon-green-potion",
	Size = {46, 38},
	Frame = 0,
	File = "neutral/icons/green_potion.png"
})

DefineIcon({
	Name = "icon-red-potion",
	Size = {46, 38},
	Frame = 0,
	File = "neutral/icons/red_potion.png"
})

DefineIcon({
	Name = "icon-cheese",
	Size = {46, 38},
	Frame = 0,
	File = "neutral/icons/cheese.png"
})

DefineIcon({
	Name = "icon-carrots",
	Size = {46, 38},
	Frame = 0,
	File = "neutral/icons/carrots.png"
})

-- tileset-dependent icons

if (wyrmsun.tileset == "swamp" or wyrmsun.tileset == "dungeon") then
	DefineIcon({
		Name = "icon-gold-mine",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/neutral/icons/gold_mine.png"
	})

	DefineIcon({
		Name = "icon-dwarven-ballista",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/dwarf/icons/dwarven_ballista.png"
	})

	DefineIcon({
		Name = "icon-dwarven-lumber-mill",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/dwarf/icons/lumber_mill.png"
	})

	DefineIcon({
		Name = "icon-dwarven-sentry-tower",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/dwarf/icons/sentry_tower.png"
	})

	DefineIcon({
		Name = "icon-dwarven-guard-tower",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/dwarf/icons/guard_tower.png"
	})

	DefineIcon({
		Name = "icon-gnomish-town-hall",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/gnome/icons/town_hall.png"
	})

	DefineIcon({
		Name = "icon-gnomish-farm",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/gnome/icons/farm.png"
	})

	DefineIcon({
		Name = "icon-gnomish-barracks",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/gnome/icons/barracks.png"
	})

	DefineIcon({
		Name = "icon-gnomish-caravan",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/gnome/icons/gnomish_caravan.png"
	})

	DefineIcon({
		Name = "icon-human-lumber-mill",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/human/icons/lumber_mill.png"
	})

	DefineIcon({
		Name = "icon-rat",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/neutral/icons/rat.png"
	})

	DefineIcon({
		Name = "icon-glyph",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/neutral/icons/glyph.png"
	})

	DefineIcon({
		Name = "icon-goblin-banner",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/goblin/icons/goblin_banner.png"
	})

	DefineIcon({
		Name = "icon-fern",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/neutral/icons/fern.png"
	})
	
	DefineIcon({
		Name = "icon-large-flower",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/neutral/icons/large_flower.png"
	})

	DefineIcon({
		Name = "icon-flowers",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/neutral/icons/flowers.png"
	})

	DefineIcon({
		Name = "icon-mushroom",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/neutral/icons/mushroom.png"
	})

	DefineIcon({
		Name = "icon-twigs",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/neutral/icons/twigs.png"
	})

	DefineIcon({
		Name = "icon-log",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/neutral/icons/log.png"
	})

	DefineIcon({
		Name = "icon-small-rocks",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/neutral/icons/small_rocks.png"
	})

	DefineIcon({
		Name = "icon-bones",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/neutral/icons/bones.png"
	})

	DefineIcon({
		Name = "icon-wyrm-skeleton",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/neutral/icons/wyrm_skeleton.png"
	})
elseif (wyrmsun.tileset == "forest") then
	DefineIcon({
		Name = "icon-gold-mine",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/gold_mine.png"
	})

	DefineIcon({
		Name = "icon-dwarven-ballista",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/dwarf/icons/dwarven_ballista.png"
	})

	DefineIcon({
		Name = "icon-dwarven-lumber-mill",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/dwarf/icons/lumber_mill.png"
	})

	DefineIcon({
		Name = "icon-dwarven-sentry-tower",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/dwarf/icons/sentry_tower.png"
	})

	DefineIcon({
		Name = "icon-dwarven-guard-tower",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/dwarf/icons/guard_tower.png"
	})

	DefineIcon({
		Name = "icon-gnomish-town-hall",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/gnome/icons/town_hall.png"
	})

	DefineIcon({
		Name = "icon-gnomish-farm",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/gnome/icons/farm.png"
	})

	DefineIcon({
		Name = "icon-gnomish-barracks",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/gnome/icons/barracks.png"
	})

	DefineIcon({
		Name = "icon-gnomish-caravan",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/gnome/icons/gnomish_caravan.png"
	})

	DefineIcon({
		Name = "icon-human-lumber-mill",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/human/icons/lumber_mill.png"
	})

	DefineIcon({
		Name = "icon-rat",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/rat.png"
	})

	DefineIcon({
		Name = "icon-glyph",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/glyph.png"
	})

	DefineIcon({
		Name = "icon-goblin-banner",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/goblin/icons/goblin_banner.png"
	})

	DefineIcon({
		Name = "icon-fern",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/fern.png"
	})
	
	DefineIcon({
		Name = "icon-large-flower",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/large_flower.png"
	})

	DefineIcon({
		Name = "icon-flowers",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/flowers.png"
	})

	DefineIcon({
		Name = "icon-mushroom",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/mushroom.png"
	})

	DefineIcon({
		Name = "icon-twigs",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/twigs.png"
	})

	DefineIcon({
		Name = "icon-log",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/log.png"
	})

	DefineIcon({
		Name = "icon-small-rocks",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/small_rocks.png"
	})

	DefineIcon({
		Name = "icon-bones",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/bones.png"
	})

	DefineIcon({
		Name = "icon-wyrm-skeleton",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/wyrm_skeleton.png"
	})
else	
	DefineIcon({
		Name = "icon-gold-mine",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/neutral/icons/gold_mine.png"
	})

	DefineIcon({
		Name = "icon-dwarven-ballista",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/dwarf/icons/dwarven_ballista.png"
	})

	DefineIcon({
		Name = "icon-dwarven-lumber-mill",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/dwarf/icons/lumber_mill.png"
	})

	DefineIcon({
		Name = "icon-dwarven-sentry-tower",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/dwarf/icons/sentry_tower.png"
	})

	DefineIcon({
		Name = "icon-dwarven-guard-tower",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/dwarf/icons/guard_tower.png"
	})

	DefineIcon({
		Name = "icon-gnomish-town-hall",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/gnome/icons/town_hall.png"
	})

	DefineIcon({
		Name = "icon-gnomish-farm",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/gnome/icons/farm.png"
	})

	DefineIcon({
		Name = "icon-gnomish-barracks",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/gnome/icons/barracks.png"
	})

	DefineIcon({
		Name = "icon-gnomish-caravan",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/gnome/icons/gnomish_caravan.png"
	})

	DefineIcon({
		Name = "icon-human-lumber-mill",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/human/icons/lumber_mill.png"
	})

	DefineIcon({
		Name = "icon-rat",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/rat.png"
	})

	DefineIcon({
		Name = "icon-glyph",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/neutral/icons/glyph.png"
	})

	DefineIcon({
		Name = "icon-goblin-banner",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/goblin/icons/goblin_banner.png"
	})

	DefineIcon({
		Name = "icon-fern",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/fern.png"
	})
	
	DefineIcon({
		Name = "icon-large-flower",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/large_flower.png"
	})

	DefineIcon({
		Name = "icon-flowers",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/flowers.png"
	})

	DefineIcon({
		Name = "icon-mushroom",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/neutral/icons/mushroom.png"
	})

	DefineIcon({
		Name = "icon-twigs",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/twigs.png"
	})

	DefineIcon({
		Name = "icon-log",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/log.png"
	})

	DefineIcon({
		Name = "icon-small-rocks",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/forest/neutral/icons/small_rocks.png"
	})

	DefineIcon({
		Name = "icon-bones",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/neutral/icons/bones.png"
	})

	DefineIcon({
		Name = "icon-wyrm-skeleton",
		Size = {46, 38},
		Frame = 0,
		File = "tilesets/swamp/neutral/icons/wyrm_skeleton.png"
	})
end
