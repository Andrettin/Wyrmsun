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
	icon.Frame = 0
end

DefineIcon({
	Name = "icon-repair",
	Size = {46, 38},
	File = "neutral/icons/repair.png"
})

DefineIcon({
	Name = "icon-harvest",
	Size = {46, 38},
	File = "neutral/icons/harvest.png"
})

DefineIcon({
	Name = "icon-attack-ground",
	Size = {46, 38},
	File = "neutral/icons/attack_ground.png"
})

DefineIcon({
	Name = "icon-level-up",
	Size = {46, 38},
	File = "neutral/icons/level_up.png"
})

DefineIcon({
	Name = "icon-axe-mastery",
	Size = {46, 38},
	File = "neutral/icons/axe_mastery.png"
})

DefineIcon({
	Name = "icon-critical-strike",
	Size = {46, 38},
	File = "neutral/icons/critical_strike.png"
})

DefineIcon({
	Name = "icon-germanic-worker",
	Size = {46, 38},
	File = "germanic/icons/worker.png"
})

DefineIcon({
	Name = "icon-germanic-town-hall",
	Size = {46, 38},
	File = "germanic/icons/town_hall.png"
})

DefineIcon({
	Name = "icon-germanic-farm",
	Size = {46, 38},
	File = "germanic/icons/farm.png"
})

DefineIcon({
	Name = "icon-germanic-barracks",
	Size = {46, 38},
	File = "germanic/icons/barracks.png"
})

DefineIcon({
	Name = "icon-germanic-carpenters-shop",
	Size = {46, 38},
	File = "germanic/icons/carpenters_shop.png"
})

DefineIcon({
	Name = "icon-germanic-short-sword",
	Size = {46, 38},
	File = "germanic/icons/short_sword.png"
})

DefineIcon({
	Name = "icon-germanic-broad-sword",
	Size = {46, 38},
	File = "germanic/icons/broad_sword.png"
})

DefineIcon({
	Name = "icon-germanic-wooden-oblong-shield",
	Size = {46, 38},
	File = "germanic/icons/wooden_oblong_shield.png"
})

DefineIcon({
	Name = "icon-germanic-bronze-shield",
	Size = {46, 38},
	File = "germanic/icons/bronze_shield.png"
})

DefineIcon({
	Name = "icon-germanic-arrow",
	Size = {46, 38},
	File = "germanic/icons/arrow.png"
})

DefineIcon({
	Name = "icon-germanic-barbed-arrow",
	Size = {46, 38},
	File = "germanic/icons/barbed_arrow.png"
})

DefineIcon({
	Name = "icon-germanic-stand-ground",
	Size = {46, 38},
	File = "germanic/icons/stand_ground.png"
})

DefineIcon({
	Name = "icon-dwarven-miner",
	Size = {46, 38},
	File = "dwarf/icons/miner.png"
})

DefineIcon({
	Name = "icon-dwarven-axefighter",
	Size = {46, 38},
	File = "dwarf/icons/dwarven_axefighter.png"
})

DefineIcon({
	Name = "icon-dwarven-axefighter-black-hair",
	Size = {46, 38},
	File = "dwarf/icons/dwarven_axefighter_black_hair.png"
})

DefineIcon({
	Name = "icon-dwarven-axefighter-blond-hair",
	Size = {46, 38},
	File = "dwarf/icons/dwarven_axefighter_blond_hair.png"
})

DefineIcon({
	Name = "icon-dwarven-axefighter-brown-hair",
	Size = {46, 38},
	File = "dwarf/icons/dwarven_axefighter_brown_hair.png"
})

DefineIcon({
	Name = "icon-dwarven-axefighter-gray-hair",
	Size = {46, 38},
	File = "dwarf/icons/dwarven_axefighter_gray_hair.png"
})

DefineIcon({
	Name = "icon-dwarven-steelclad",
	Size = {46, 38},
	File = "dwarf/icons/dwarven_steelclad.png"
})

DefineIcon({
	Name = "icon-dwarven-steelclad-black-hair",
	Size = {46, 38},
	File = "dwarf/icons/dwarven_steelclad_black_hair.png"
})

DefineIcon({
	Name = "icon-dwarven-steelclad-blond-hair",
	Size = {46, 38},
	File = "dwarf/icons/dwarven_steelclad_blond_hair.png"
})

DefineIcon({
	Name = "icon-dwarven-steelclad-brown-hair",
	Size = {46, 38},
	File = "dwarf/icons/dwarven_steelclad_brown_hair.png"
})

DefineIcon({
	Name = "icon-dwarven-steelclad-gray-hair",
	Size = {46, 38},
	File = "dwarf/icons/dwarven_steelclad_gray_hair.png"
})

DefineIcon({
	Name = "icon-dwarven-thane",
	Size = {46, 38},
	File = "dwarf/icons/thane.png"
})

DefineIcon({
	Name = "icon-dwarven-thane-black-hair",
	Size = {46, 38},
	File = "dwarf/icons/thane_black_hair.png"
})

DefineIcon({
	Name = "icon-dwarven-thane-blond-hair",
	Size = {46, 38},
	File = "dwarf/icons/thane_blond_hair.png"
})

DefineIcon({
	Name = "icon-dwarven-thane-brown-hair",
	Size = {46, 38},
	File = "dwarf/icons/thane_brown_hair.png"
})

DefineIcon({
	Name = "icon-dwarven-thane-gray-hair",
	Size = {46, 38},
	File = "dwarf/icons/thane_gray_hair.png"
})

DefineIcon({
	Name = "icon-dwarven-scout",
	Size = {46, 38},
	File = "dwarf/icons/dwarven_scout.png"
})

DefineIcon({
	Name = "icon-dwarven-scout-braided-beard",
	Size = {46, 38},
	File = "dwarf/icons/dwarven_scout_braided_beard.png"
})

DefineIcon({
	Name = "icon-dwarven-scout-blond-hair",
	Size = {46, 38},
	File = "dwarf/icons/dwarven_scout_blond_hair.png"
})

DefineIcon({
	Name = "icon-dwarven-scout-blond-hair-braided-beard",
	Size = {46, 38},
	File = "dwarf/icons/dwarven_scout_blond_hair_braided_beard.png"
})

DefineIcon({
	Name = "icon-dwarven-scout-gray-hair",
	Size = {46, 38},
	File = "dwarf/icons/dwarven_scout_gray_hair.png"
})

DefineIcon({
	Name = "icon-dwarven-scout-gray-hair-braided-beard",
	Size = {46, 38},
	File = "dwarf/icons/dwarven_scout_gray_hair_braided_beard.png"
})

DefineIcon({
	Name = "icon-dwarven-gryphon-rider",
	Size = {46, 38},
	File = "dwarf/icons/gryphon_rider.png"
})

DefineIcon({
	Name = "icon-dwarven-gryphon-rider-brown-hair",
	Size = {46, 38},
	File = "dwarf/icons/gryphon_rider_brown_hair.png"
})

DefineIcon({
	Name = "icon-dwarven-gryphon-rider-red-hair",
	Size = {46, 38},
	File = "dwarf/icons/gryphon_rider_red_hair.png"
})

DefineIcon({
	Name = "icon-dwarven-town-hall",
	Size = {46, 38},
	File = "dwarf/icons/town_hall.png"
})

DefineIcon({
	Name = "icon-dwarven-mushroom-farm",
	Size = {46, 38},
	File = "dwarf/icons/mushroom_farm.png"
})

DefineIcon({
	Name = "icon-dwarven-barracks",
	Size = {46, 38},
	File = "dwarf/icons/barracks.png"
})

DefineIcon({
	Name = "icon-dwarven-smith",
	Size = {46, 38},
	File = "dwarf/icons/smith.png"
})

DefineIcon({
	Name = "icon-dwarven-axe-1",
	Size = {46, 38},
	File = "dwarf/icons/axe_1.png"
})

DefineIcon({
	Name = "icon-dwarven-axe-2",
	Size = {46, 38},
	File = "dwarf/icons/axe_2.png"
})

DefineIcon({
	Name = "icon-dwarven-axe-3",
	Size = {46, 38},
	File = "dwarf/icons/axe_3.png"
})

DefineIcon({
	Name = "icon-dwarven-shield-1",
	Size = {46, 38},
	File = "dwarf/icons/shield_1.png"
})

DefineIcon({
	Name = "icon-dwarven-shield-2",
	Size = {46, 38},
	File = "dwarf/icons/shield_2.png"
})

DefineIcon({
	Name = "icon-dwarven-shield-3",
	Size = {46, 38},
	File = "dwarf/icons/shield_3.png"
})

DefineIcon({
	Name = "icon-dwarven-throwing-axe-1",
	Size = {46, 38},
	File = "dwarf/icons/throwing_axe_1.png"
})

DefineIcon({
	Name = "icon-dwarven-throwing-axe-2",
	Size = {46, 38},
	File = "dwarf/icons/throwing_axe_2.png"
})

DefineIcon({
	Name = "icon-dwarven-throwing-axe-3",
	Size = {46, 38},
	File = "dwarf/icons/throwing_axe_3.png"
})

DefineIcon({
	Name = "icon-dwarven-ballista-bolt-1",
	Size = {46, 38},
	File = "dwarf/icons/ballista_bolt_1.png"
})

DefineIcon({
	Name = "icon-dwarven-ballista-bolt-2",
	Size = {46, 38},
	File = "dwarf/icons/ballista_bolt_2.png"
})

DefineIcon({
	Name = "icon-dwarven-ballista-bolt-3",
	Size = {46, 38},
	File = "dwarf/icons/ballista_bolt_3.png"
})

DefineIcon({
	Name = "icon-dwarven-boots",
	Size = {46, 38},
	File = "dwarf/icons/boots.png"
})

DefineIcon({
	Name = "icon-dwarven-patrol-land",
	Size = {46, 38},
	File = "dwarf/icons/patrol_land.png"
})

DefineIcon({
	Name = "icon-dwarven-stand-ground",
	Size = {46, 38},
	File = "dwarf/icons/stand_ground.png"
})

DefineIcon({
	Name = "icon-dwarven-return-goods",
	Size = {46, 38},
	File = "dwarf/icons/return_goods.png"
})

DefineIcon({
	Name = "icon-surghan-mercenary-steelclad",
	Size = {46, 38},
	File = "dwarf/icons/surghan_mercenary_steelclad.png"
})

DefineIcon({
	Name = "icon-surghan-mercenary-thane",
	Size = {46, 38},
	File = "dwarf/icons/surghan_mercenary_thane.png"
})

DefineIcon({
	Name = "icon-rugnur",
	Size = {46, 38},
	File = "dwarf/icons/rugnur.png"
})

DefineIcon({
	Name = "icon-rugnur-older",
	Size = {46, 38},
	File = "dwarf/icons/rugnur_older.png"
})

DefineIcon({
	Name = "icon-baglur",
	Size = {46, 38},
	File = "dwarf/icons/baglur.png"
})

DefineIcon({
	Name = "icon-thursagan",
	Size = {46, 38},
	File = "dwarf/icons/thursagan.png"
})

DefineIcon({
	Name = "icon-durstorn",
	Size = {46, 38},
	File = "dwarf/icons/durstorn.png"
})

DefineIcon({
	Name = "icon-elven-swordsman",
	Size = {46, 38},
	File = "elf/icons/elven_swordsman.png"
})

DefineIcon({
	Name = "icon-orc-spearthrower",
	Size = {46, 38},
	File = "orc/icons/spearthrower.png"
})

DefineIcon({
	Name = "icon-orc-sea-orc",
	Size = {46, 38},
	File = "orc/icons/sea_orc.png"
})

DefineIcon({
	Name = "icon-orc-shaman",
	Size = {46, 38},
	File = "orc/icons/shaman.png"
})

DefineIcon({
	Name = "icon-gnomish-worker",
	Size = {46, 38},
	File = "gnome/icons/gnomish_worker.png"
})

DefineIcon({
	Name = "icon-gnomish-worker-gray-hair",
	Size = {46, 38},
	File = "gnome/icons/gnomish_worker_gray_hair.png"
})

DefineIcon({
	Name = "icon-gnomish-recruit",
	Size = {46, 38},
	File = "gnome/icons/gnomish_recruit.png"
})

DefineIcon({
	Name = "icon-gnomish-thrusting-sword-1",
	Size = {46, 38},
	File = "gnome/icons/thrusting_sword_1.png"
})

DefineIcon({
	Name = "icon-gnomish-boots",
	Size = {46, 38},
	File = "gnome/icons/boots.png"
})

DefineIcon({
	Name = "icon-gnomish-patrol-land",
	Size = {46, 38},
	File = "gnome/icons/patrol_land.png"
})

DefineIcon({
	Name = "icon-goblin-town-hall",
	Size = {46, 38},
	File = "goblin/icons/town_hall.png"
})

DefineIcon({
	Name = "icon-goblin-mess-hall",
	Size = {46, 38},
	File = "goblin/icons/mess_hall.png"
})

DefineIcon({
	Name = "icon-goblin-farm",
	Size = {46, 38},
	File = "goblin/icons/farm.png"
})

DefineIcon({
	Name = "icon-goblin-lumber-mill",
	Size = {46, 38},
	File = "goblin/icons/lumber_mill.png"
})

DefineIcon({
	Name = "icon-goblin-smith",
	Size = {46, 38},
	File = "goblin/icons/smith.png"
})

DefineIcon({
	Name = "icon-goblin-worker",
	Size = {46, 38},
	File = "goblin/icons/goblin_worker.png"
})

DefineIcon({
	Name = "icon-goblin-spearman",
	Size = {46, 38},
	File = "goblin/icons/goblin_spearman.png"
})

DefineIcon({
	Name = "icon-goblin-archer",
	Size = {46, 38},
	File = "goblin/icons/goblin_archer.png"
})

DefineIcon({
	Name = "icon-goblin-war-machine",
	Size = {46, 38},
	File = "goblin/icons/goblin_war_machine.png"
})

DefineIcon({
	Name = "icon-goblin-glider",
	Size = {46, 38},
	File = "goblin/icons/glider.png"
})

DefineIcon({
	Name = "icon-greebo",
	Size = {46, 38},
	File = "goblin/icons/greebo.png"
})

DefineIcon({
	Name = "icon-kobold-footpad",
	Size = {46, 38},
	File = "kobold/icons/kobold_footpad.png"
})

DefineIcon({
	Name = "icon-water-elemental",
	Size = {46, 38},
	File = "neutral/icons/water_elemental.png"
})

DefineIcon({
	Name = "icon-cancel",
	Size = {46, 38},
	File = "neutral/icons/cancel.png"
})

DefineIcon({
	Name = "icon-build-basic-structure",
	Size = {46, 38},
	File = "neutral/icons/build_basic_structure.png"
})

DefineIcon({
	Name = "icon-slime",
	Size = {46, 38},
	File = "neutral/icons/slime.png"
})

DefineIcon({
	Name = "icon-slime-blue",
	Size = {46, 38},
	File = "neutral/icons/slime_blue.png"
})

DefineIcon({
	Name = "icon-slime-brown",
	Size = {46, 38},
	File = "neutral/icons/slime_brown.png"
})

DefineIcon({
	Name = "icon-slime-red",
	Size = {46, 38},
	File = "neutral/icons/slime_red.png"
})

DefineIcon({
	Name = "icon-slime-teal",
	Size = {46, 38},
	File = "neutral/icons/slime_teal.png"
})

DefineIcon({
	Name = "icon-gryphon",
	Size = {46, 38},
	File = "neutral/icons/gryphon.png"
})

DefineIcon({
	Name = "icon-gryphon-blue-feathers",
	Size = {46, 38},
	File = "neutral/icons/gryphon_blue_feathers.png"
})

DefineIcon({
	Name = "icon-gryphon-gray-feathers",
	Size = {46, 38},
	File = "neutral/icons/gryphon_gray_feathers.png"
})

DefineIcon({
	Name = "icon-wyrm",
	Size = {46, 38},
	File = "neutral/icons/wyrm.png"
})

DefineIcon({
	Name = "icon-wyrm-vicious",
	Size = {46, 38},
	File = "neutral/icons/wyrm_vicious.png"
})

DefineIcon({
	Name = "icon-wyrm-vicious-light-green-scales",
	Size = {46, 38},
	File = "neutral/icons/wyrm_vicious_light_green_scales.png"
})

DefineIcon({
	Name = "icon-wyrm-blue-scales",
	Size = {46, 38},
	File = "neutral/icons/wyrm_blue_scales.png"
})

DefineIcon({
	Name = "icon-wyrm-cyan-scales",
	Size = {46, 38},
	File = "neutral/icons/wyrm_cyan_scales.png"
})

DefineIcon({
	Name = "icon-wyrm-purple-scales",
	Size = {46, 38},
	File = "neutral/icons/wyrm_purple_scales.png"
})

DefineIcon({
	Name = "icon-wyrm-red-scales",
	Size = {46, 38},
	File = "neutral/icons/wyrm_red_scales.png"
})

DefineIcon({
	Name = "icon-wyrm-yellow-scales",
	Size = {46, 38},
	File = "neutral/icons/wyrm_yellow_scales.png"
})

DefineIcon({
	Name = "icon-stairs",
	Size = {46, 38},
	File = "neutral/icons/stairs.png"
})

DefineIcon({
	Name = "icon-scepter",
	Size = {46, 38},
	File = "neutral/icons/scepter.png"
})

DefineIcon({
	Name = "icon-gold-coins",
	Size = {46, 38},
	File = "neutral/icons/gold_coins.png"
})

DefineIcon({
	Name = "icon-gold-sack",
	Size = {46, 38},
	File = "neutral/icons/gold_sack.png"
})

DefineIcon({
	Name = "icon-chest",
	Size = {46, 38},
	File = "neutral/icons/chest.png"
})

DefineIcon({
	Name = "icon-barrel",
	Size = {46, 38},
	File = "neutral/icons/barrel.png"
})

DefineIcon({
	Name = "icon-alchemy-bench",
	Size = {46, 38},
	File = "neutral/icons/alchemy_bench.png"
})

DefineIcon({
	Name = "icon-blue-potion",
	Size = {46, 38},
	File = "neutral/icons/blue_potion.png"
})

DefineIcon({
	Name = "icon-green-potion",
	Size = {46, 38},
	File = "neutral/icons/green_potion.png"
})

DefineIcon({
	Name = "icon-red-potion",
	Size = {46, 38},
	File = "neutral/icons/red_potion.png"
})

DefineIcon({
	Name = "icon-cheese",
	Size = {46, 38},
	File = "neutral/icons/cheese.png"
})

DefineIcon({
	Name = "icon-carrots",
	Size = {46, 38},
	File = "neutral/icons/carrots.png"
})

DefineIcon({
	Name = "icon-gryphon-feather",
	Size = {46, 38},
	File = "neutral/icons/gryphon_feather.png"
})

DefineIcon({
	Name = "icon-coal-mine",
	Size = {46, 38},
	File = "neutral/icons/coal_mine.png"
})

DefineIcon({
	Name = "icon-mercenary-camp",
	Size = {46, 38},
	File = "neutral/icons/mercenary_camp.png"
})

DefineIcon({
	Name = "icon-wood-pile",
	Size = {46, 38},
	File = "neutral/icons/wood_pile.png"
})

DefineIcon({
	Name = "icon-stalagmites",
	Size = {46, 38},
	File = "neutral/icons/stalagmites.png"
})

DefineIcon({
	Name = "icon-volcanic-crater",
	Size = {46, 38},
	File = "neutral/icons/volcanic_crater.png"
})

DefineIcon({
	Name = "icon-inner-wall-decoration",
	Size = {46, 38},
	File = "neutral/icons/inner_wall_decoration.png"
})

DefineIcon({
	Name = "icon-outer-wall-decoration",
	Size = {46, 38},
	File = "neutral/icons/outer_wall_decoration.png"
})

DefineIcon({
	Name = "icon-floor-decoration",
	Size = {46, 38},
	File = "neutral/icons/floor_decoration.png"
})

-- tileset-dependent icons

if (wyrmsun.tileset == "swamp" or wyrmsun.tileset == "dungeon") then
	DefineIcon({
		Name = "icon-gold-mine",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/gold_mine.png"
	})

	DefineIcon({
		Name = "icon-dwarven-ballista",
		Size = {46, 38},
		File = "tilesets/swamp/dwarf/icons/dwarven_ballista.png"
	})

	DefineIcon({
		Name = "icon-dwarven-lumber-mill",
		Size = {46, 38},
		File = "tilesets/swamp/dwarf/icons/lumber_mill.png"
	})

	DefineIcon({
		Name = "icon-dwarven-sentry-tower",
		Size = {46, 38},
		File = "tilesets/swamp/dwarf/icons/sentry_tower.png"
	})

	DefineIcon({
		Name = "icon-dwarven-guard-tower",
		Size = {46, 38},
		File = "tilesets/swamp/dwarf/icons/guard_tower.png"
	})

	DefineIcon({
		Name = "icon-gnomish-town-hall",
		Size = {46, 38},
		File = "tilesets/swamp/gnome/icons/town_hall.png"
	})

	DefineIcon({
		Name = "icon-gnomish-farm",
		Size = {46, 38},
		File = "tilesets/swamp/gnome/icons/farm.png"
	})

	DefineIcon({
		Name = "icon-gnomish-barracks",
		Size = {46, 38},
		File = "tilesets/swamp/gnome/icons/barracks.png"
	})

	DefineIcon({
		Name = "icon-gnomish-caravan",
		Size = {46, 38},
		File = "tilesets/swamp/gnome/icons/gnomish_caravan.png"
	})

	DefineIcon({
		Name = "icon-teuton-lumber-mill",
		Size = {46, 38},
		File = "tilesets/swamp/teuton/icons/lumber_mill.png"
	})

	DefineIcon({
		Name = "icon-rat",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/rat.png"
	})

	DefineIcon({
		Name = "icon-glyph",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/glyph.png"
	})

	DefineIcon({
		Name = "icon-goblin-banner",
		Size = {46, 38},
		File = "tilesets/swamp/goblin/icons/goblin_banner.png"
	})

	DefineIcon({
		Name = "icon-fern",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/fern.png"
	})
	
	DefineIcon({
		Name = "icon-large-flower",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/large_flower.png"
	})

	DefineIcon({
		Name = "icon-flowers",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/flowers.png"
	})

	DefineIcon({
		Name = "icon-mushroom",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/mushroom.png"
	})

	DefineIcon({
		Name = "icon-twigs",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/twigs.png"
	})

	DefineIcon({
		Name = "icon-log",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/log.png"
	})

	DefineIcon({
		Name = "icon-small-rocks",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/small_rocks.png"
	})

	DefineIcon({
		Name = "icon-bones",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/bones.png"
	})

	DefineIcon({
		Name = "icon-wyrm-skeleton",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/wyrm_skeleton.png"
	})
elseif (wyrmsun.tileset == "forest" or wyrmsun.tileset == "fairlimbed_forest") then
	DefineIcon({
		Name = "icon-gold-mine",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/gold_mine.png"
	})

	DefineIcon({
		Name = "icon-dwarven-ballista",
		Size = {46, 38},
		File = "tilesets/forest/dwarf/icons/dwarven_ballista.png"
	})

	DefineIcon({
		Name = "icon-dwarven-lumber-mill",
		Size = {46, 38},
		File = "tilesets/forest/dwarf/icons/lumber_mill.png"
	})

	DefineIcon({
		Name = "icon-dwarven-sentry-tower",
		Size = {46, 38},
		File = "tilesets/forest/dwarf/icons/sentry_tower.png"
	})

	DefineIcon({
		Name = "icon-dwarven-guard-tower",
		Size = {46, 38},
		File = "tilesets/forest/dwarf/icons/guard_tower.png"
	})

	DefineIcon({
		Name = "icon-gnomish-town-hall",
		Size = {46, 38},
		File = "tilesets/forest/gnome/icons/town_hall.png"
	})

	DefineIcon({
		Name = "icon-gnomish-farm",
		Size = {46, 38},
		File = "tilesets/forest/gnome/icons/farm.png"
	})

	DefineIcon({
		Name = "icon-gnomish-barracks",
		Size = {46, 38},
		File = "tilesets/forest/gnome/icons/barracks.png"
	})

	DefineIcon({
		Name = "icon-gnomish-caravan",
		Size = {46, 38},
		File = "tilesets/forest/gnome/icons/gnomish_caravan.png"
	})

	DefineIcon({
		Name = "icon-teuton-lumber-mill",
		Size = {46, 38},
		File = "tilesets/forest/teuton/icons/lumber_mill.png"
	})

	DefineIcon({
		Name = "icon-rat",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/rat.png"
	})

	DefineIcon({
		Name = "icon-glyph",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/glyph.png"
	})

	DefineIcon({
		Name = "icon-goblin-banner",
		Size = {46, 38},
		File = "tilesets/forest/goblin/icons/goblin_banner.png"
	})

	DefineIcon({
		Name = "icon-fern",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/fern.png"
	})
	
	DefineIcon({
		Name = "icon-large-flower",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/large_flower.png"
	})

	DefineIcon({
		Name = "icon-flowers",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/flowers.png"
	})

	DefineIcon({
		Name = "icon-mushroom",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/mushroom.png"
	})

	DefineIcon({
		Name = "icon-twigs",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/twigs.png"
	})

	DefineIcon({
		Name = "icon-log",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/log.png"
	})

	DefineIcon({
		Name = "icon-small-rocks",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/small_rocks.png"
	})

	DefineIcon({
		Name = "icon-bones",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/bones.png"
	})

	DefineIcon({
		Name = "icon-wyrm-skeleton",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/wyrm_skeleton.png"
	})
else	
	DefineIcon({
		Name = "icon-gold-mine",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/gold_mine.png"
	})

	DefineIcon({
		Name = "icon-dwarven-ballista",
		Size = {46, 38},
		File = "tilesets/swamp/dwarf/icons/dwarven_ballista.png"
	})

	DefineIcon({
		Name = "icon-dwarven-lumber-mill",
		Size = {46, 38},
		File = "tilesets/swamp/dwarf/icons/lumber_mill.png"
	})

	DefineIcon({
		Name = "icon-dwarven-sentry-tower",
		Size = {46, 38},
		File = "tilesets/swamp/dwarf/icons/sentry_tower.png"
	})

	DefineIcon({
		Name = "icon-dwarven-guard-tower",
		Size = {46, 38},
		File = "tilesets/swamp/dwarf/icons/guard_tower.png"
	})

	DefineIcon({
		Name = "icon-gnomish-town-hall",
		Size = {46, 38},
		File = "tilesets/swamp/gnome/icons/town_hall.png"
	})

	DefineIcon({
		Name = "icon-gnomish-farm",
		Size = {46, 38},
		File = "tilesets/swamp/gnome/icons/farm.png"
	})

	DefineIcon({
		Name = "icon-gnomish-barracks",
		Size = {46, 38},
		File = "tilesets/swamp/gnome/icons/barracks.png"
	})

	DefineIcon({
		Name = "icon-gnomish-caravan",
		Size = {46, 38},
		File = "tilesets/swamp/gnome/icons/gnomish_caravan.png"
	})

	DefineIcon({
		Name = "icon-teuton-lumber-mill",
		Size = {46, 38},
		File = "tilesets/forest/teuton/icons/lumber_mill.png"
	})

	DefineIcon({
		Name = "icon-rat",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/rat.png"
	})

	DefineIcon({
		Name = "icon-glyph",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/glyph.png"
	})

	DefineIcon({
		Name = "icon-goblin-banner",
		Size = {46, 38},
		File = "tilesets/swamp/goblin/icons/goblin_banner.png"
	})

	DefineIcon({
		Name = "icon-fern",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/fern.png"
	})
	
	DefineIcon({
		Name = "icon-large-flower",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/large_flower.png"
	})

	DefineIcon({
		Name = "icon-flowers",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/flowers.png"
	})

	DefineIcon({
		Name = "icon-mushroom",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/mushroom.png"
	})

	DefineIcon({
		Name = "icon-twigs",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/twigs.png"
	})

	DefineIcon({
		Name = "icon-log",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/log.png"
	})

	DefineIcon({
		Name = "icon-small-rocks",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/small_rocks.png"
	})

	DefineIcon({
		Name = "icon-bones",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/bones.png"
	})

	DefineIcon({
		Name = "icon-wyrm-skeleton",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/wyrm_skeleton.png"
	})
end
