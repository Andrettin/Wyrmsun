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
--      0_ad_equivalencies.lua - Defines the equivalencies with 0 AD elements for map conversion.
--
--      (c) Copyright 2015 by Andrettin
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

Set0ADCivilizationEquivalency("gaul", "celt")
Set0ADCivilizationFactionEquivalency("gaul", "")
Set0ADCivilizationEquivalency("hele", "greek")
Set0ADCivilizationFactionEquivalency("hele", "")
Set0ADCivilizationEquivalency("mace", "greek")
Set0ADCivilizationFactionEquivalency("mace", "Macedon")
Set0ADCivilizationEquivalency("rome", "latin")
Set0ADCivilizationFactionEquivalency("rome", "Rome")

-- Fauna
Set0ADTemplateUnitTypeEquivalency("gaia/fauna_chicken", "unit-rat")
Set0ADTemplateUnitTypeEquivalency("gaia/fauna_boar", "unit-horse")
Set0ADTemplateUnitTypeEquivalency("gaia/fauna_deer", "unit-horse")
Set0ADTemplateUnitTypeEquivalency("gaia/fauna_fish", "")
Set0ADTemplateUnitTypeEquivalency("gaia/fauna_fish_tuna", "")
Set0ADTemplateUnitTypeEquivalency("gaia/fauna_goat", "unit-horse")
Set0ADTemplateUnitTypeEquivalency("gaia/fauna_horse", "unit-horse")
Set0ADTemplateUnitTypeEquivalency("gaia/fauna_sheep", "unit-horse")

-- Flora
Set0ADTemplateUnitTypeEquivalency("gaia/flora_bush_berry", "")
Set0ADTemplateUnitTypeEquivalency("gaia/flora_bush_grapes", "")
Set0ADTemplateUnitTypeEquivalency("gaia/flora_tree_aleppo_pine", "Tree")
Set0ADTemplateUnitTypeEquivalency("gaia/flora_tree_apple", "Tree")
Set0ADTemplateUnitTypeEquivalency("gaia/flora_tree_carob", "Tree")
Set0ADTemplateUnitTypeEquivalency("gaia/flora_tree_cretan_date_palm_patch", "Tree")
Set0ADTemplateUnitTypeEquivalency("gaia/flora_tree_cretan_date_palm_short", "Tree")
Set0ADTemplateUnitTypeEquivalency("gaia/flora_tree_cretan_date_palm_tall", "Tree")
Set0ADTemplateUnitTypeEquivalency("gaia/flora_tree_cypress", "Tree")
Set0ADTemplateUnitTypeEquivalency("gaia/flora_tree_dead", "Tree")
Set0ADTemplateUnitTypeEquivalency("gaia/flora_tree_euro_beech", "Tree")
Set0ADTemplateUnitTypeEquivalency("gaia/flora_tree_medit_fan_palm", "Tree")
Set0ADTemplateUnitTypeEquivalency("gaia/flora_tree_oak", "Tree")
Set0ADTemplateUnitTypeEquivalency("gaia/flora_tree_pine", "Tree")
Set0ADTemplateUnitTypeEquivalency("gaia/flora_tree_poplar", "Tree")
Set0ADTemplateUnitTypeEquivalency("gaia/flora_tree_poplar_lombardy", "Tree")

-- Geology
Set0ADTemplateUnitTypeEquivalency("gaia/geology_metal_mediterranean_slabs", "Gold")
Set0ADTemplateUnitTypeEquivalency("gaia/geology_stone_mediterranean", "Rock")
Set0ADTemplateUnitTypeEquivalency("gaia/geology_stonemine_desert_badlands_quarry", "Rock")
Set0ADTemplateUnitTypeEquivalency("gaia/geology_stonemine_medit_quarry", "Rock")

-- Special neutral units
Set0ADTemplateUnitTypeEquivalency("gaia/special_treasure_pegasus", "unit-gold-chest")
Set0ADTemplateUnitTypeEquivalency("gaia/special_treasure_golden_fleece", "unit-gold-chest")

-- Carthaginian units
Set0ADTemplateUnitTypeEquivalency("units/cart_cavalry_spearman_b", "unit-teuton-ritter")
Set0ADTemplateUnitTypeEquivalency("units/cart_cavalry_spearman_a", "unit-teuton-ritter")
Set0ADTemplateUnitTypeEquivalency("units/cart_cavalry_spearman_e", "unit-teuton-ritter")
Set0ADTemplateUnitTypeEquivalency("units/cart_champion_cavalry", "unit-teuton-ritter")

-- Celt units
Set0ADTemplateUnitTypeEquivalency("units/celt_fanatic", "unit-germanic-warrior")
-- Celt structures
Set0ADTemplateUnitTypeEquivalency("structures/celt_field", "")
Set0ADTemplateUnitTypeEquivalency("other/celt_hut", "unit-celt-farm")
Set0ADTemplateUnitTypeEquivalency("other/celt_longhouse", "unit-celt-farm")

-- Gaul units
Set0ADTemplateUnitTypeEquivalency("units/gaul_support_female_citizen", "unit-germanic-worker")
Set0ADTemplateUnitTypeEquivalency("units/gaul_infantry_spearman_b", "unit-germanic-spearman")
Set0ADTemplateUnitTypeEquivalency("units/gaul_infantry_spearman_a", "unit-germanic-spearman")
Set0ADTemplateUnitTypeEquivalency("units/gaul_infantry_spearman_e", "unit-germanic-spearman")
Set0ADTemplateUnitTypeEquivalency("units/gaul_infantry_javelinist_b", "unit-germanic-archer")
Set0ADTemplateUnitTypeEquivalency("units/gaul_infantry_javelinist_a", "unit-germanic-archer")
Set0ADTemplateUnitTypeEquivalency("units/gaul_infantry_javelinist_e", "unit-germanic-archer")
Set0ADTemplateUnitTypeEquivalency("units/gaul_cavalry_swordsman_b", "unit-teuton-ritter")
Set0ADTemplateUnitTypeEquivalency("units/gaul_cavalry_swordsman_a", "unit-teuton-ritter")
Set0ADTemplateUnitTypeEquivalency("units/gaul_cavalry_swordsman_e", "unit-teuton-ritter")
Set0ADTemplateUnitTypeEquivalency("units/gaul_cavalry_javelinist_b", "unit-teuton-ritter")
Set0ADTemplateUnitTypeEquivalency("units/gaul_cavalry_javelinist_a", "unit-teuton-ritter")
Set0ADTemplateUnitTypeEquivalency("units/gaul_cavalry_javelinist_e", "unit-teuton-ritter")
-- Gaul structures
Set0ADTemplateUnitTypeEquivalency("structures/gaul_civil_centre", "unit-germanic-town-hall")
Set0ADTemplateUnitTypeEquivalency("structures/gaul_defense_tower", "unit-teuton-guard-tower")
Set0ADTemplateUnitTypeEquivalency("structures/gaul_tavern", "unit-germanic-farm")
-- Gaul heroes
Set0ADTemplateUnitTypeEquivalency("units/gaul_hero_brennus", "unit-germanic-warrior")

-- Hellene units
Set0ADTemplateUnitTypeEquivalency("units/hele_support_female_citizen", "unit-teuton-worker")
Set0ADTemplateUnitTypeEquivalency("units/hele_infantry_spearman_b", "unit-teuton-spearman")
Set0ADTemplateUnitTypeEquivalency("units/hele_infantry_spearman_a", "unit-teuton-spearman") --advanced greek spearman
Set0ADTemplateUnitTypeEquivalency("units/hele_infantry_spearman_e", "unit-teuton-spearman") --elite greek spearman
Set0ADTemplateUnitTypeEquivalency("units/hele_infantry_archer_b", "unit-teuton-archer")
Set0ADTemplateUnitTypeEquivalency("units/hele_infantry_javelinist_b", "unit-teuton-archer")
Set0ADTemplateUnitTypeEquivalency("units/hele_infantry_javelinist_a", "unit-teuton-archer")
Set0ADTemplateUnitTypeEquivalency("units/hele_cavalry_swordsman_b", "unit-teuton-ritter") --cavalry swordsman
Set0ADTemplateUnitTypeEquivalency("units/hele_cavalry_swordsman_a", "unit-teuton-ritter") --advanced cavalry swordsman
Set0ADTemplateUnitTypeEquivalency("units/hele_cavalry_swordsman_e", "unit-teuton-ritter") --elite cavalry swordsman
Set0ADTemplateUnitTypeEquivalency("units/hele_cavalry_javelinist_b", "unit-teuton-ritter") --javelinist cavalry
Set0ADTemplateUnitTypeEquivalency("units/hele_cavalry_javelinist_a", "unit-teuton-ritter") --advanced javelinist cavalry
Set0ADTemplateUnitTypeEquivalency("units/hele_cavalry_javelinist_e", "unit-teuton-ritter") --elite javelinist cavalry
-- Hellene structures
Set0ADTemplateUnitTypeEquivalency("structures/hele_civil_centre", "unit-latin-town-hall")
Set0ADTemplateUnitTypeEquivalency("structures/hele_field", "")
Set0ADTemplateUnitTypeEquivalency("structures/hele_defense_tower", "unit-teuton-guard-tower")
Set0ADTemplateUnitTypeEquivalency("other/hellenic_stoa", "unit-latin-farm") --maybe a market would be a better fitting building, but its effect is similar to that of a farm
Set0ADTemplateUnitTypeEquivalency("other/hellenic_royal_stoa", "unit-latin-barracks") --maybe a market would be a better fitting building for its description, but it allows recruiting military units) otherwise its effect is similar to that of a farm
Set0ADTemplateUnitTypeEquivalency("other/unfinished_greek_temple", "unit-teuton-temple")
-- Hellene heroes
Set0ADTemplateUnitTypeEquivalency("units/hele_hero_themistocles", "unit-teuton-swordsman")

-- Macedonian units
Set0ADTemplateUnitTypeEquivalency("units/mace_infantry_spearman_b", "unit-teuton-spearman")
Set0ADTemplateUnitTypeEquivalency("units/mace_infantry_spearman_a", "unit-teuton-spearman")
Set0ADTemplateUnitTypeEquivalency("units/mace_infantry_spearman_e", "unit-teuton-spearman")
Set0ADTemplateUnitTypeEquivalency("units/mace_champion_infantry_a", "unit-teuton-swordsman")
Set0ADTemplateUnitTypeEquivalency("units/mace_thorakites", "unit-teuton-swordsman")
Set0ADTemplateUnitTypeEquivalency("units/mace_infantry_archer_e", "unit-teuton-swordsman")
Set0ADTemplateUnitTypeEquivalency("units/mace_thureophoros", "unit-teuton-archer")
Set0ADTemplateUnitTypeEquivalency("units/mace_cavalry_spearman_a", "unit-teuton-ritter")
Set0ADTemplateUnitTypeEquivalency("units/mace_cavalry_spearman_e", "unit-teuton-ritter")
Set0ADTemplateUnitTypeEquivalency("units/mace_champion_cavalry", "unit-teuton-ritter")
Set0ADTemplateUnitTypeEquivalency("units/mace_cavalry_javelinist_a", "unit-teuton-ritter")
Set0ADTemplateUnitTypeEquivalency("units/mace_cavalry_javelinist_e", "unit-teuton-ritter")
-- Macedonian structures
Set0ADTemplateUnitTypeEquivalency("structures/mace_civil_centre", "unit-latin-town-hall")
Set0ADTemplateUnitTypeEquivalency("structures/mace_outpost", "unit-teuton-watch-tower")
Set0ADTemplateUnitTypeEquivalency("structures/mace_field", "")

-- Roman units
Set0ADTemplateUnitTypeEquivalency("units/rome_infantry_spearman_e", "unit-teuton-spearman")
Set0ADTemplateUnitTypeEquivalency("units/rome_infantry_swordsman_a", "unit-teuton-swordsman")
Set0ADTemplateUnitTypeEquivalency("units/rome_infantry_javelinist_b", "unit-teuton-archer")
Set0ADTemplateUnitTypeEquivalency("units/rome_infantry_javelinist_a", "unit-teuton-archer")
Set0ADTemplateUnitTypeEquivalency("units/rome_infantry_javelinist_e", "unit-teuton-archer")
Set0ADTemplateUnitTypeEquivalency("units/rome_champion_infantry", "unit-teuton-swordsman")
Set0ADTemplateUnitTypeEquivalency("units/rome_champion_cavalry", "unit-teuton-ritter")
-- Roman structures
Set0ADTemplateUnitTypeEquivalency("structures/rome_civil_centre", "unit-latin-town-hall")
Set0ADTemplateUnitTypeEquivalency("structures/rome_army_camp", "unit-latin-barracks")
Set0ADTemplateUnitTypeEquivalency("structures/rome_outpost", "unit-teuton-watch-tower")
Set0ADTemplateUnitTypeEquivalency("structures/rome_defense_tower", "unit-teuton-guard-tower")
Set0ADTemplateUnitTypeEquivalency("structures/rome_tent", "unit-latin-farm")
-- Roman heroes
Set0ADTemplateUnitTypeEquivalency("units/rome_hero_marcellus", "unit-teuton-ritter") -- cavalry swordsman

-- Seleucid units
Set0ADTemplateUnitTypeEquivalency("units/sele_champion_infantry_pikeman", "unit-teuton-swordsman")

-- Theban units
Set0ADTemplateUnitTypeEquivalency("units/thebes_sacred_band_hoplitai", "unit-teuton-spearman") --champion spearman

-- Thracian units
Set0ADTemplateUnitTypeEquivalency("units/thrace_black_cloak", "unit-teuton-swordsman")

-- Miscellaneous structures
Set0ADTemplateUnitTypeEquivalency("other/palisades_rocks_gate", "") --should be a palisade
Set0ADTemplateUnitTypeEquivalency("other/palisades_rocks_long", "") --should be a palisade
Set0ADTemplateUnitTypeEquivalency("other/palisades_rocks_medium", "") --should be a palisade
Set0ADTemplateUnitTypeEquivalency("other/palisades_rocks_tower", "") --should be a palisade
Set0ADTemplateUnitTypeEquivalency("other/column_doric", "unit-small-rocks")
Set0ADTemplateUnitTypeEquivalency("other/column_doric_fallen", "unit-small-rocks")
Set0ADTemplateUnitTypeEquivalency("other/column_doric_fallen_b", "unit-small-rocks")
Set0ADTemplateUnitTypeEquivalency("other/fence_long", "") --should be a palisade?
Set0ADTemplateUnitTypeEquivalency("other/fence_short", "") --should be a palisade?

-- Props
Set0ADTemplateUnitTypeEquivalency("actor|geology/stone_medit_med.xml", "unit-small-rocks")
Set0ADTemplateUnitTypeEquivalency("actor|props/flora/bush_medit_sm.xml", "")
Set0ADTemplateUnitTypeEquivalency("actor|props/flora/bush_medit_sm_dry.xml", "")
Set0ADTemplateUnitTypeEquivalency("actor|props/flora/bush_medit_sm_lush.xml", "")
Set0ADTemplateUnitTypeEquivalency("actor|props/flora/bush_medit_underbrush.xml", "")
Set0ADTemplateUnitTypeEquivalency("actor|props/flora/grass_medit_field.xml", "")
Set0ADTemplateUnitTypeEquivalency("actor|props/flora/grass_soft_dry_small.xml", "")
Set0ADTemplateUnitTypeEquivalency("actor|props/flora/grass_soft_dry_small_tall.xml", "")
Set0ADTemplateUnitTypeEquivalency("actor|props/flora/grass_soft_large.xml", "")
Set0ADTemplateUnitTypeEquivalency("actor|props/flora/grass_soft_large_tall.xml", "")
Set0ADTemplateUnitTypeEquivalency("actor|props/flora/grass_soft_small.xml", "")
Set0ADTemplateUnitTypeEquivalency("actor|props/flora/grass_soft_small_tall.xml", "")
Set0ADTemplateUnitTypeEquivalency("actor|props/flora/grass_soft_tuft_a.xml", "")
Set0ADTemplateUnitTypeEquivalency("actor|props/flora/pond_lillies_large.xml", "")
Set0ADTemplateUnitTypeEquivalency("actor|props/flora/water_lillies.xml", "")