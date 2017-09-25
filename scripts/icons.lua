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
--      (c) Copyright 2013-2017 by Lutz Sammer, Jimmy Salmon and Andrettin
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
	if (arg.Frame) then
		icon.Frame = arg.Frame
	else
		icon.Frame = 0
	end
end

DefineIcon({
	Name = "icon-christianity",
	Size = {46, 38},
	File = "neutral/icons/christianity.png"
})

DefineIcon({
	Name = "icon-hammer",
	Size = {46, 38},
	File = "neutral/icons/hammer.png"
})

DefineIcon({
	Name = "icon-mining-pick",
	Size = {46, 38},
	File = "neutral/icons/mining_pick.png"
})

DefineIcon({
	Name = "icon-spear",
	Size = {46, 38},
	File = "neutral/icons/spear.png"
})

DefineIcon({
	Name = "icon-long-spear",
	Size = {46, 38},
	File = "neutral/icons/longspear.png"
})

DefineIcon({
	Name = "icon-pike",
	Size = {46, 38},
	File = "neutral/icons/halberd.png"
})

DefineIcon({
	Name = "icon-halberd",
	Size = {46, 38},
	File = "neutral/icons/halberd.png"
})

DefineIcon({
	Name = "icon-crown",
	Size = {46, 38},
	File = "neutral/icons/crown.png"
})

DefineIcon({
	Name = "icon-amulet",
	Size = {46, 38},
	File = "neutral/icons/amulet.png"
})

DefineIcon({
	Name = "icon-ring",
	Size = {46, 38},
	File = "neutral/icons/ring.png"
})

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
	Name = "icon-unload",
	Size = {46, 38},
	File = "neutral/icons/unload.png"
})

DefineIcon({
	Name = "icon-rally-point",
	Size = {46, 38},
	File = "neutral/icons/rally_point.png"
})

DefineIcon({
	Name = "icon-labor",
	Size = {46, 38},
	File = "neutral/icons/labor.png"
})

DefineIcon({
	Name = "icon-gold",
	Size = {46, 38},
	File = "neutral/icons/gold.png"
})

DefineIcon({
	Name = "icon-food",
	Size = {46, 38},
	File = "neutral/icons/food.png"
})

DefineIcon({
	Name = "icon-lumber",
	Size = {46, 38},
	File = "neutral/icons/lumber.png"
})

DefineIcon({
	Name = "icon-stone",
	Size = {46, 38},
	File = "neutral/icons/stone.png"
})

DefineIcon({
	Name = "icon-furniture",
	Size = {46, 38},
	File = "neutral/icons/furniture.png"
})

DefineIcon({
	Name = "icon-leather",
	Size = {46, 38},
	File = "neutral/icons/leather.png"
})

DefineIcon({
	Name = "icon-heater-shield",
	Size = {46, 38},
	File = "neutral/icons/heater_shield.png"
})

DefineIcon({
	Name = "icon-research",
	Size = {46, 38},
	File = "neutral/icons/research.png"
})

DefineIcon({
	Name = "icon-serfdom",
	Size = {46, 38},
	File = "neutral/icons/serfdom.png"
})

DefineIcon({
	Name = "icon-shield-wall",
	Size = {46, 38},
	File = "norse/icons/shield_wall.png"
})

DefineIcon({
	Name = "icon-svinfylking",
	Size = {46, 38},
	File = "norse/icons/svinfylking.png"
})

DefineIcon({
	Name = "icon-level-up",
	Size = {46, 38},
	File = "neutral/icons/level_up.png"
})

DefineIcon({
	Name = "icon-quest",
	Size = {46, 38},
	File = "neutral/icons/quest.png"
})

DefineIcon({
	Name = "icon-garrison",
	Size = {46, 38},
	File = "neutral/icons/garrison.png"
})

DefineIcon({
	Name = "icon-call-to-arms",
	Size = {46, 38},
	File = "neutral/icons/call_to_arms.png"
})

DefineIcon({
	Name = "icon-salvage",
	Size = {46, 38},
	File = "neutral/icons/salvage.png"
})

DefineIcon({
	Name = "icon-axe-mastery",
	Size = {46, 38},
	File = "neutral/icons/axe_mastery.png"
})

DefineIcon({
	Name = "icon-mace-mastery",
	Size = {46, 38},
	File = "neutral/icons/mace_mastery.png"
})

DefineIcon({
	Name = "icon-spear-mastery",
	Size = {46, 38},
	File = "neutral/icons/spear_mastery.png"
})

DefineIcon({
	Name = "icon-sword-mastery",
	Size = {46, 38},
	File = "neutral/icons/sword_mastery.png"
})

DefineIcon({
	Name = "icon-sword-mastery-bronze",
	Size = {46, 38},
	File = "neutral/icons/sword_mastery_bronze.png"
})

DefineIcon({
	Name = "icon-critical-strike",
	Size = {46, 38},
	File = "neutral/icons/critical_strike.png"
})

DefineIcon({
	Name = "icon-deadly-precision",
	Size = {46, 38},
	File = "neutral/icons/deadly_precision.png"
})

DefineIcon({
	Name = "icon-eagle-eye",
	Size = {46, 38},
	File = "neutral/icons/eagle_eye.png"
})

DefineIcon({
	Name = "icon-ethereal-vision",
	Size = {46, 38},
	File = "neutral/icons/ethereal_vision.png"
})

DefineIcon({
	Name = "icon-healing",
	Size = {46, 38},
	File = "neutral/icons/healing.png"
})

DefineIcon({
	Name = "icon-inspire",
	Size = {46, 38},
	File = "neutral/icons/inspire.png"
})

DefineIcon({
	Name = "icon-leadership",
	Size = {46, 38},
	File = "neutral/icons/leadership.png"
})

DefineIcon({
	Name = "icon-precision",
	Size = {46, 38},
	File = "neutral/icons/precision.png"
})

DefineIcon({
	Name = "icon-scouting",
	Size = {46, 38},
	File = "neutral/icons/scouting.png"
})

DefineIcon({
	Name = "icon-terror",
	Size = {46, 38},
	File = "neutral/icons/terror.png"
})

DefineIcon({
	Name = "icon-inventory",
	Size = {46, 38},
	File = "neutral/icons/inventory.png"
})

DefineIcon({
	Name = "icon-bodkin-arrow",
	Size = {46, 38},
	File = "neutral/icons/bodkin_arrow.png"
})

DefineIcon({
	Name = "icon-catapult-projectile-1",
	Size = {46, 38},
	File = "neutral/icons/catapult_projectile_sandstone.png"
})

DefineIcon({
	Name = "icon-catapult-projectile-2",
	Size = {46, 38},
	File = "neutral/icons/catapult_projectile_granite.png"
})

DefineIcon({
	Name = "icon-catapult-projectile-3",
	Size = {46, 38},
	File = "neutral/icons/catapult_projectile_metal.png"
})

DefineIcon({
	Name = "icon-cauldron",
	Size = {46, 38},
	File = "neutral/icons/cauldron.png"
})

DefineIcon({
	Name = "icon-stun",
	Size = {46, 38},
	File = "neutral/icons/stun.png"
})

DefineIcon({
	Name = "icon-precise-shot",
	Size = {46, 38},
	File = "neutral/icons/precise_shot.png"
})

DefineIcon({
	Name = "icon-puncture",
	Size = {46, 38},
	File = "neutral/icons/puncture.png"
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
	Name = "icon-left-arrow",
	Size = {46, 38},
	File = "neutral/icons/left_arrow.png"
})

DefineIcon({
	Name = "icon-right-arrow",
	Size = {46, 38},
	File = "neutral/icons/right_arrow.png"
})

DefineIcon({
	Name = "icon-build-basic-structure",
	Size = {46, 38},
	File = "neutral/icons/build_basic_structure.png"
})

DefineIcon({
	Name = "icon-wood-plow",
	Size = {46, 38},
	File = "neutral/icons/wood_plow.png"
})

DefineIcon({
	Name = "icon-iron-tipped-wood-plow",
	Size = {46, 38},
	File = "neutral/icons/iron_tipped_wood_plow.png"
})

DefineIcon({
	Name = "icon-iron-plow",
	Size = {46, 38},
	File = "neutral/icons/iron_plow.png"
})

DefineIcon({
	Name = "icon-masonry",
	Size = {46, 38},
	File = "neutral/icons/masonry.png"
})

DefineIcon({
	Name = "icon-engineering",
	Size = {46, 38},
	File = "neutral/icons/engineering.png"
})

DefineIcon({
	Name = "icon-architecture",
	Size = {46, 38},
	File = "neutral/icons/architecture.png"
})

DefineIcon({
	Name = "icon-mathematics",
	Size = {46, 38},
	File = "neutral/icons/mathematics.png"
})

DefineIcon({
	Name = "icon-philosophy",
	Size = {46, 38},
	File = "neutral/icons/philosophy.png"
})

DefineIcon({
	Name = "icon-gunpowder",
	Size = {46, 38},
	File = "neutral/icons/gunpowder.png"
})

DefineIcon({
	Name = "icon-printing-press",
	Size = {46, 38},
	File = "neutral/icons/printing_press.png"
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
	Name = "icon-adelobasileus-cromptoni",
	Size = {46, 38},
	File = "neutral/icons/adelobasileus_cromptoni.png"
})

DefineIcon({
	Name = "icon-galerix-exilis",
	Size = {46, 38},
	File = "neutral/icons/galerix_exilis.png"
})

DefineIcon({
	Name = "icon-megacricetodon-collongensis",
	Size = {46, 38},
	File = "neutral/icons/megacricetodon_collongensis.png"
})

DefineIcon({
	Name = "icon-rat",
	Size = {46, 38},
	File = "neutral/icons/rat.png"
})

DefineIcon({
	Name = "icon-rat-swamp",
	Size = {46, 38},
	File = "neutral/icons/rat_swamp.png"
})

DefineIcon({
	Name = "icon-horse",
	Size = {46, 38},
	File = "neutral/icons/horse.png"
})

DefineIcon({
	Name = "icon-horse-trained",
	Size = {46, 38},
	File = "neutral/icons/horse_trained.png"
})

DefineIcon({
	Name = "icon-unicorn",
	Size = {46, 38},
	File = "neutral/icons/unicorn.png"
})

DefineIcon({
	Name = "icon-goat",
	Size = {46, 38},
	File = "neutral/icons/goat.png"
})

DefineIcon({
	Name = "icon-yale",
	Size = {46, 38},
	File = "neutral/icons/yale.png"
})

DefineIcon({
	Name = "icon-yale-gray-fur",
	Size = {46, 38},
	File = "neutral/icons/yale_gray_fur.png"
})

DefineIcon({
	Name = "icon-yale-gray-brown-fur",
	Size = {46, 38},
	File = "neutral/icons/yale_gray_brown_fur.png"
})

DefineIcon({
	Name = "icon-yale-white-fur",
	Size = {46, 38},
	File = "neutral/icons/yale_white_fur.png"
})

DefineIcon({
	Name = "icon-boar",
	Size = {46, 38},
	File = "neutral/icons/boar.png"
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
	Name = "icon-wolf",
	Size = {46, 38},
	File = "neutral/icons/wolf.png"
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
	Name = "icon-raft",
	Size = {46, 38},
	File = "neutral/icons/raft.png"
})

DefineIcon({
	Name = "icon-caravan",
	Size = {46, 38},
	File = "neutral/icons/caravan.png"
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
	Name = "icon-door",
	Size = {46, 38},
	File = "tilesets/dungeon/neutral/icons/door.png"
})

DefineIcon({
	Name = "icon-table",
	Size = {46, 38},
	File = "neutral/icons/table.png"
})

DefineIcon({
	Name = "icon-bed",
	Size = {46, 38},
	File = "neutral/icons/bed.png"
})

DefineIcon({
	Name = "icon-shelf",
	Size = {46, 38},
	File = "neutral/icons/shelf.png"
})

DefineIcon({
	Name = "icon-alchemy-bench",
	Size = {46, 38},
	File = "neutral/icons/alchemy_bench.png"
})

DefineIcon({
	Name = "icon-yale-excrement",
	Size = {46, 38},
	File = "neutral/icons/yale_excrement.png"
})

DefineIcon({
	Name = "icon-black-potion",
	Size = {46, 38},
	File = "neutral/icons/potion_black.png"
})

DefineIcon({
	Name = "icon-blue-potion",
	Size = {46, 38},
	File = "neutral/icons/potion_blue.png"
})

DefineIcon({
	Name = "icon-gray-potion",
	Size = {46, 38},
	File = "neutral/icons/potion_gray.png"
})

DefineIcon({
	Name = "icon-green-potion",
	Size = {46, 38},
	File = "neutral/icons/potion_green.png"
})

DefineIcon({
	Name = "icon-orange-potion",
	Size = {46, 38},
	File = "neutral/icons/potion_orange.png"
})

DefineIcon({
	Name = "icon-purple-potion",
	Size = {46, 38},
	File = "neutral/icons/potion_purple.png"
})

DefineIcon({
	Name = "icon-red-potion",
	Size = {46, 38},
	File = "neutral/icons/potion_red.png"
})

DefineIcon({
	Name = "icon-white-potion",
	Size = {46, 38},
	File = "neutral/icons/potion_white.png"
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
	Name = "icon-wyrm-heart",
	Size = {46, 38},
	File = "neutral/icons/wyrm_heart.png"
})

DefineIcon({
	Name = "icon-scroll",
	Size = {46, 38},
	File = "norse/icons/scroll.png"
})

DefineIcon({
	Name = "icon-book-red",
	Size = {46, 38},
	File = "neutral/icons/book_red.png"
})

DefineIcon({
	Name = "icon-book-blue",
	Size = {46, 38},
	File = "neutral/icons/book_blue.png"
})

DefineIcon({
	Name = "icon-caltrops",
	Size = {46, 38},
	File = "neutral/icons/caltrops.png"
})

DefineIcon({
	Name = "icon-trap",
	Size = {46, 38},
	File = "neutral/icons/trap.png"
})

DefineIcon({
	Name = "icon-settlement-site",
	Size = {46, 38},
	File = "neutral/icons/settlement_site.png"
})

DefineIcon({
	Name = "icon-gold-deposit",
	Size = {46, 38},
	File = "neutral/icons/gold_deposit.png"
})

DefineIcon({
	Name = "icon-gold-mine",
	Size = {46, 38},
	File = "neutral/icons/gold_mine.png"
})

DefineIcon({
	Name = "icon-silver-deposit",
	Size = {46, 38},
	File = "neutral/icons/silver_deposit.png"
})

DefineIcon({
	Name = "icon-silver-mine",
	Size = {46, 38},
	File = "neutral/icons/silver_mine.png"
})

DefineIcon({
	Name = "icon-copper-deposit",
	Size = {46, 38},
	File = "neutral/icons/copper_deposit.png"
})

DefineIcon({
	Name = "icon-copper-mine",
	Size = {46, 38},
	File = "neutral/icons/copper_mine.png"
})

DefineIcon({
	Name = "icon-coal-mine",
	Size = {46, 38},
	File = "neutral/icons/coal_mine.png"
})

DefineIcon({
	Name = "icon-diamond-deposit",
	Size = {46, 38},
	File = "neutral/icons/diamond_deposit.png"
})

DefineIcon({
	Name = "icon-diamond-mine",
	Size = {46, 38},
	File = "neutral/icons/diamond_mine.png"
})

DefineIcon({
	Name = "icon-yale-cave",
	Size = {46, 38},
	File = "neutral/icons/yale_cave.png"
})

DefineIcon({
	Name = "icon-yale-hunting-lodge",
	Size = {46, 38},
	File = "neutral/icons/yale_hunting_lodge.png"
})

DefineIcon({
	Name = "icon-mercenary-camp",
	Size = {46, 38},
	File = "neutral/icons/mercenary_camp.png"
})

DefineIcon({
	Name = "icon-tree-stump",
	Size = {46, 38},
	File = "neutral/icons/tree_stump.png"
})

DefineIcon({
	Name = "icon-hole",
	Size = {46, 38},
	File = "tilesets/cave/neutral/icons/hole.png"
})

DefineIcon({
	Name = "icon-gold-rock",
	Size = {46, 38},
	File = "neutral/icons/gold_rock.png"
})

DefineIcon({
	Name = "icon-silver-rock",
	Size = {46, 38},
	File = "neutral/icons/silver_rock.png"
})

DefineIcon({
	Name = "icon-copper-rock",
	Size = {46, 38},
	File = "neutral/icons/copper_rock.png"
})

DefineIcon({
	Name = "icon-diamond-rock",
	Size = {46, 38},
	File = "neutral/icons/diamond_rock.png"
})

DefineIcon({
	Name = "icon-wood-pile",
	Size = {46, 38},
	File = "neutral/icons/wood_pile.png"
})

DefineIcon({
	Name = "icon-stone-pile",
	Size = {46, 38},
	File = "neutral/icons/stone_pile.png"
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

DefineIcon({
	Name = "icon-roaming-fog",
	Size = {46, 38},
	File = "neutral/icons/roaming_fog.png"
})

DefineIcon({
	Name = "icon-miasma",
	Size = {46, 38},
	File = "neutral/icons/miasma.png"
})

DefineIcon({
	Name = "icon-long-swordsman",
	Size = {46, 38},
	File = "neutral/icons/long_swordsman.png"
})

DefineIcon({
	Name = "icon-os-rune",
	Size = {46, 38},
	File = "neutral/icons/os_rune.png"
})

DefineIcon({
	Name = "icon-thurs-rune",
	Size = {46, 38},
	File = "neutral/icons/thurs_rune.png"
})

DefineIcon({
	Name = "icon-cavern-entrance",
	Size = {46, 38},
	File = "neutral/icons/cavern_entrance.png"
})

DefineIcon({
	Name = "icon-cavern-entrance-brown",
	Size = {46, 38},
	File = "neutral/icons/cavern_entrance_brown.png"
})

DefineIcon({
	Name = "icon-portal",
	Size = {46, 38},
	File = "neutral/icons/portal.png"
})

DefineIcon({
	Name = "icon-road",
	Size = {46, 38},
	File = "neutral/icons/road.png"
})

DefineIcon({
	Name = "icon-railroad",
	Size = {46, 38},
	File = "neutral/icons/railroad.png"
})

-- tileset-dependent icons

if (GetCurrentTileset() == "swamp" or GetCurrentTileset() == "dungeon") then
	DefineIcon({
		Name = "icon-glyph",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/glyph.png"
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
elseif (GetCurrentTileset() == "conifer-forest-summer" or GetCurrentTileset() == "conifer-forest-autumn" or GetCurrentTileset() == "fairlimbed-forest") then
	DefineIcon({
		Name = "icon-glyph",
		Size = {46, 38},
		File = "tilesets/forest/neutral/icons/glyph.png"
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
		Name = "icon-glyph",
		Size = {46, 38},
		File = "tilesets/swamp/neutral/icons/glyph.png"
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

Load("scripts/civilizations/celt/icons.lua")
Load("scripts/civilizations/dwarf/icons.lua")
Load("scripts/civilizations/elf/icons.lua")
Load("scripts/civilizations/ettin/icons.lua")
Load("scripts/civilizations/frankish/icons.lua")
Load("scripts/civilizations/germanic/icons.lua")
Load("scripts/civilizations/gnome/icons.lua")
Load("scripts/civilizations/goblin/icons.lua")
Load("scripts/civilizations/kobold/icons.lua")
Load("scripts/civilizations/latin/icons.lua")
Load("scripts/civilizations/norse/icons.lua")
Load("scripts/civilizations/orc/icons.lua")
Load("scripts/civilizations/suebi/icons.lua")
Load("scripts/civilizations/teuton/icons.lua")
Load("scripts/civilizations/troll/icons.lua")