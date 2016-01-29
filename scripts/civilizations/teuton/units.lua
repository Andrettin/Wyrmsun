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
--      units.lua - Defines the teuton (west germanic) unit-types.
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

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--

DefineUnitType("unit-teuton-worker", { Name = _("Bura"),
	Parent = "unit-template-worker",
	Civilization = "teuton",
--	Description = _("Hardworking and robust, buras are the lifeblood of germanic society, tending the fields and performing most of the manual labor required."),
--	Quote = _("\"He began to grow, | and to gain in strength, / Oxen he ruled, | and plows made ready, / Houses he built, | and barns he fashioned, / Carts he made, | and the plow he managed.\" - Rigsthula"),
--	Background = _("\"Bûra\" is the Proto-Germanic word for \"peasant\" or \"farmer\"."),
	Image = {"file", "germanic/units/worker.png", "size", {72, 72}},
	Animations = "animations-worker", Icon = "icon-germanic-worker",
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"mace"},
	BluntDamage = true,
	AiDrops = {"unit-hammer", "unit-mining-pick", "unit-boots", "unit-cheese", "unit-carrots"},
	CanGatherResources = {
		{
			"resource-id", "gold",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "silver",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "copper",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "lumber",
			"file-when-loaded", "germanic/units/worker_with_lumber.png"
		},
		{
			"resource-id", "stone",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "coal",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		}
	},
	Sounds = {
		"selected", "basic-teuton-voices-selected-group",
		"acknowledge", "basic-teuton-voices-acknowledge",
		"ready", "teuton-bauer-ready",
		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-teuton-swordsman", { Name = _("Krieger"),
	Parent = "unit-template-infantry",
	Civilization = "teuton",
	Description = _("The dauntless West Germanic swordsmen ravage the battlefield with their longswords, being second to few other warriors in combat."),
	Background = _("\"Krieger\" is the German word for \"warrior\"."),
	Image = {"file", "human/units/human_body_warrior.png", "size", {72, 72}},
	Shadow = {"file", "human/units/human_shadow.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "human/units/red_hair_warrior.png"},
		{"layer", "left-arm", "file", "human/units/human_left_arm.png"},
		{"layer", "right-arm", "file", "human/units/human_right_arm.png"},
		{"layer", "clothing", "file", "teuton/units/chainmail.png"},
		{"layer", "clothing-left-arm", "file", "teuton/units/chainmail_left_arm.png"},
		{"layer", "clothing-right-arm", "file", "teuton/units/chainmail_right_arm.png"},
		{"layer", "pants", "file", "human/units/pants.png"},
		{"layer", "boots", "file", "teuton/units/leather_shoes.png"},
		{"layer", "helmet", "file", "teuton/units/iron_helm.png"},
		{"layer", "weapon", "file", "teuton/units/long_iron_sword.png"}
	},
	Animations = "animations-melee-unit-new", Icon = "icon-teuton-swordsman",
	Costs = {"time", 50, "gold", 600},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword", "thrusting-sword"},
	HackDamage = true,
	Mana = {Enable = true, Max = 75, Value = 75, Increase = 1},
	CanCastSpell = {"spell-puncture"},
	AutoCastActive = {"spell-puncture"},
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-flaming", "upgrade-item-prefix-glacial", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-quenching", "upgrade-item-prefix-vicious", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-the-serpent", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-the-snail", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-trickery", "upgrade-item-suffix-of-victory"}, -- allow more affixes than normal for the unit's level, to compensate for the unit not being upgradeable
	Variations = {
		{
			"variation-id", "blond-hair",
			"layer-file", "hair", "human/units/blond_hair_warrior.png",
			"icon", "icon-teuton-swordsman-blond-hair"
		},
		{
			"variation-id", "brown-hair",
			"layer-file", "hair", "human/units/brown_hair_warrior.png",
			"icon", "icon-teuton-swordsman-brown-hair"
		},
		{
			"variation-id", "red-hair"
		},
		{
			"layer", "left-arm",
			"variation-id", "left-arm",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-bronze-shield",
			"item-not-equipped", "unit-heater-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield"
		},
		{
			"layer", "left-arm",
			"variation-id", "shield-left-arm",
			"file", "human/units/human_left_arm_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-equipped", "unit-bronze-shield",
			"item-equipped", "unit-heater-shield",
			"item-equipped", "unit-iron-shield",
			"item-equipped", "unit-kite-shield",
			"item-equipped", "unit-thrymgjol-shield"
		},
		{
			"layer", "weapon",
			"variation-id", "broad-bronze-sword",
			"file", "germanic/units/broad_bronze_sword.png",
			"upgrade-forbidden", "upgrade-teuton-spatha",
			"item-not-equipped", "unit-spatha"
		},
		{
			"layer", "weapon",
			"variation-id", "long-iron-sword",
			"file", "teuton/units/long_iron_sword.png",
			"upgrade-required", "upgrade-teuton-spatha",
			"item-equipped", "unit-spatha"
		},
		{
			"layer", "shield",
			"variation-id", "no-shield",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-bronze-shield",
			"item-not-equipped", "unit-heater-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield"
		},
		{
			"layer", "shield",
			"variation-id", "bronze-shield",
			"file", "germanic/units/bronze_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-equipped", "unit-bronze-shield",
			"item-equipped", "unit-heater-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield"
		},
		{
			"layer", "shield",
			"variation-id", "iron-shield",
			"file", "teuton/units/saxon_shield.png",
			"upgrade-required", "upgrade-teuton-iron-shield",
			"item-equipped", "unit-iron-shield",
			"item-equipped", "unit-kite-shield",
			"item-equipped", "unit-thrymgjol-shield"
		}
	},
	Sounds = {
		"selected", "basic-teuton-voices-selected-group",
		"acknowledge", "basic-teuton-voices-acknowledge",
		"ready", "basic-teuton-voices-ready",
		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-suebi-swordsman", { Name = _("Krieger"),
	Parent = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Suebi Tribe",
	Description = _("Little armored but intensely courageous, the Suebi swordsmen are fierce opponents in battle."),
	Background = _("\"Krieger\" is the German word for \"warrior\"."),
	Image = {"file", "human/units/human_body_warrior.png", "size", {72, 72}},
	Shadow = {"file", "human/units/human_shadow.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "teuton/units/suebi_hair.png"},
		{"layer", "left-arm", "file", "human/units/human_left_arm.png"},
		{"layer", "right-arm", "file", "human/units/human_right_arm.png"},
		{"layer", "clothing", "file", "human/units/leather_strap.png"},
		{"layer", "clothing-left-arm", "file", ""},
		{"layer", "clothing-right-arm", "file", ""},
		{"layer", "pants", "file", "human/units/pants.png"},
		{"layer", "boots", "file", "teuton/units/leather_shoes.png"},
		{"layer", "helmet", "file", ""},
		{"layer", "weapon", "file", "teuton/units/long_iron_sword.png"}
	},
	Icon = "icon-suebi-swordsman",
	Armor = 0, BasicDamage = 11, Accuracy = 12, -- -2 armor, +2 damage, +2 accuracy
	Points = 60, -- +10 points
	Variations = {
		{
			"variation-id", "blond-hair"
		},
		{
			"layer", "left-arm",
			"variation-id", "left-arm",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-bronze-shield",
			"item-not-equipped", "unit-heater-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield"
		},
		{
			"layer", "left-arm",
			"variation-id", "shield-left-arm",
			"file", "human/units/human_left_arm_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-equipped", "unit-bronze-shield",
			"item-equipped", "unit-heater-shield",
			"item-equipped", "unit-iron-shield",
			"item-equipped", "unit-kite-shield",
			"item-equipped", "unit-thrymgjol-shield"
		},
		{
			"layer", "weapon",
			"variation-id", "broad-bronze-sword",
			"file", "germanic/units/broad_bronze_sword.png",
			"upgrade-forbidden", "upgrade-teuton-spatha",
			"item-not-equipped", "unit-spatha"
		},
		{
			"layer", "weapon",
			"variation-id", "long-iron-sword",
			"file", "teuton/units/long_iron_sword.png",
			"upgrade-required", "upgrade-teuton-spatha",
			"item-equipped", "unit-spatha"
		},
		{
			"layer", "shield",
			"variation-id", "no-shield",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-bronze-shield",
			"item-not-equipped", "unit-heater-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield"
		},
		{
			"layer", "shield",
			"variation-id", "bronze-shield",
			"file", "germanic/units/bronze_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-equipped", "unit-bronze-shield",
			"item-equipped", "unit-heater-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield"
		},
		{
			"layer", "shield",
			"variation-id", "iron-shield",
			"file", "teuton/units/suebi_shield.png",
			"upgrade-required", "upgrade-teuton-iron-shield",
			"item-equipped", "unit-iron-shield",
			"item-equipped", "unit-kite-shield",
			"item-equipped", "unit-thrymgjol-shield"
		}
	}
} )

DefineUnitType("unit-teuton-spearman", { Name = _("Speerkampfer"),
	Parent = "unit-template-spearman",
	Civilization = "teuton",
--	Description = _("Germanic tribes are known for their fierceness in combat, and these sword-wielding warriors act accordingly."),
--	Background = _("\"Erala\" is the Proto-Germanic word for \"warrior\"."),
	Image = {"file", "human/units/human_body_warrior.png", "size", {72, 72}},
	Shadow = {"file", "human/units/human_shadow.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "teuton/units/suebi_hair.png"},
		{"layer", "left-arm", "file", "human/units/human_left_arm.png"},
		{"layer", "right-arm", "file", "human/units/human_right_arm_spear.png"},
		{"layer", "clothing", "file", "germanic/units/coat_warrior.png"},
		{"layer", "clothing-left-arm", "file", "germanic/units/coat_left_arm.png"},
		{"layer", "clothing-right-arm", "file", "germanic/units/coat_right_arm_spear.png"},
		{"layer", "pants", "file", "human/units/pants.png"},
		{"layer", "boots", "file", "human/units/shoes.png"},
		{"layer", "weapon", "file", "human/units/spear.png"},
	},
	Animations = "animations-melee-unit-new", Icon = "icon-teuton-spearman",
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	AiDrops = {"unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "red-hair"
		},
		{
			"layer", "left-arm",
			"variation-id", "left-arm",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-bronze-shield",
			"item-not-equipped", "unit-heater-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield"
		},
		{
			"layer", "left-arm",
			"variation-id", "shield-left-arm",
			"file", "human/units/human_left_arm_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-equipped", "unit-bronze-shield",
			"item-equipped", "unit-heater-shield",
			"item-equipped", "unit-iron-shield",
			"item-equipped", "unit-kite-shield",
			"item-equipped", "unit-thrymgjol-shield"
		},
		{
			"layer", "shield",
			"variation-id", "no-shield",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-bronze-shield",
			"item-not-equipped", "unit-heater-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield"
		},
		{
			"layer", "shield",
			"variation-id", "bronze-shield",
			"file", "germanic/units/bronze_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-equipped", "unit-bronze-shield",
			"item-equipped", "unit-heater-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield"
		},
		{
			"layer", "shield",
			"variation-id", "iron-shield",
			"file", "teuton/units/cherusci_shield_player_color.png",
			"upgrade-required", "upgrade-teuton-iron-shield",
			"item-equipped", "unit-iron-shield",
			"item-equipped", "unit-kite-shield",
			"item-equipped", "unit-thrymgjol-shield"
		}
	},
	Sounds = {
		"selected", "basic-teuton-voices-selected-group",
		"acknowledge", "basic-teuton-voices-acknowledge",
		"ready", "basic-teuton-voices-ready",
		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead"
	}
} )

DefineUnitType("unit-frank-spearman", { Name = _("Speerkampfer"),
	Parent = "unit-teuton-spearman",
	Civilization = "teuton",
	Faction = "Frank Tribe",
	Armor = 3, -- +1 armor
	Points = 55 -- +5 points
} )

DefineUnitType("unit-teuton-archer", { Name = _("Skutan"),
	Parent = "unit-template-archer",
	Civilization = "teuton",
--	Description = _("These warriors specialize in the art of archery, which they employ against their enemies with great lethality."),
--	Quote = _("\"Within two gazed | in each other's eyes, / Fathir and Mothir, | and played with their fingers; / There sat the house-lord, | wound strings for the bow, / Shafts he fashioned, | and bows he shaped.\" - Rigsthula"),
--	Background = _("\"Skutan\" is the Proto-Germanic word for \"archer\"."),
	Image = {"file", "human/units/human_body_archer.png", "size", {72, 72}},
	Shadow = {"file", "human/units/human_shadow_archer.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "human/units/red_hair_archer.png"},
		{"layer", "left-arm", "file", "human/units/human_left_arm_archer.png"},
		{"layer", "right-arm", "file", "human/units/human_right_arm_archer.png"},
		{"layer", "clothing", "file", "germanic/units/coat_archer.png"},
		{"layer", "clothing-left-arm", "file", "germanic/units/coat_left_arm_archer.png"},
		{"layer", "clothing-right-arm", "file", "germanic/units/coat_right_arm_archer.png"},
		{"layer", "pants", "file", "human/units/pants_archer.png"},
		{"layer", "boots", "file", "human/units/shoes_archer.png"},
		{"layer", "weapon", "file", "human/units/bow_and_bronze_knife.png"},
		{"layer", "helmet", "file", "germanic/units/wool_hat_archer.png"},
		{"layer", "backpack", "file", "human/units/quiver.png"}
	},
	Animations = "animations-goblin-archer", Icon = "icon-germanic-archer",
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	BonusAgainstAir = 50,
	WeaponClasses = {"bow"},
	PierceDamage = true,
	AiDrops = {"unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-flaming", "upgrade-item-prefix-glacial", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-quenching", "upgrade-item-prefix-vicious", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-the-serpent", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-the-snail", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-trickery", "upgrade-item-suffix-of-victory"}, -- allow more affixes than normal for the unit's level, to compensate for the unit not being upgradeable
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"layer-file", "hair", "human/units/gray_hair_archer.png",
			"icon", "icon-germanic-archer-gray-hair"
		},
		{
			"variation-id", "blond-hair",
			"layer-file", "hair", "human/units/blond_hair_archer.png",
			"icon", "icon-germanic-archer-blond-hair",
			"upgrade-forbidden", "upgrade-old"
		}
	},
	Sounds = {
		"selected", "basic-teuton-voices-selected-group",
		"acknowledge", "basic-teuton-voices-acknowledge",
		"ready", "basic-teuton-voices-ready",
		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "dagger-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-teuton-ritter", { Name = _("Ritter"),
	Parent = "unit-template-cavalry",
	Civilization = "teuton",
	Description = _("The Teutons excel in mounted combat. Their well-armored and trained heavy cavalry strikes fear in the hearts of their enemies whenever they are seen upon the battlefield."),
	Background = _("\"Ritter\" is the German word for \"knight\"."),
	Image = {"file", "teuton/units/ritter.png", "size", {72, 72}},
	Animations = "animations-melee-unit", Icon = "icon-teuton-ritter",
	Armor = 3, BasicDamage = 13, -- +1 armor, +1 damage
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword"},
	HackDamage = true,
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-flaming", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-the-serpent", "upgrade-item-suffix-of-victory"}, -- allow more affixes than normal for the unit's level, to compensate for the unit not being upgradeable
	Corpse = "unit-human-dead-body",
	Sounds = {
		"selected", "basic-teuton-voices-selected-group",
		"acknowledge", "basic-teuton-voices-acknowledge",
		"ready", "basic-teuton-voices-ready",
		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-frank-horseman", { Name = _("Ritter"),
	Parent = "unit-teuton-ritter",
	Civilization = "teuton",
	Faction = "Frank Tribe",
	Armor = 4, BasicDamage = 14, -- +1 armor, +1 damage
	Points = 60 -- +10 points
} )

DefineUnitType("unit-teuton-catapult", { Name = _("Catapult"),
	Parent = "unit-template-siege-engine",
	Civilization = "teuton",
	Description = _("These engines of war can be of great use in battering enemy fortifications."),
	Image = {"file", "teuton/units/catapult.png", "size", {72, 72}},
	Animations = "animations-teuton-catapult", Icon = "icon-teuton-catapult",
	Missile = "missile-catapult-sandstone-rock",
	FireMissile = "missile-flaming-catapult-rock",
	BluntDamage = true,
	Sounds = {
--		"acknowledge", "ballista-acknowledge",
--		"ready", "dwarven-ballista-ready",
		"help", "basic-teuton-voices-help",
		"dead", "explosion"
	}
} )

DefineUnitType("unit-teuton-kogge", { Name = _("Kogge"),
	Parent = "unit-template-transport-ship",
	Civilization = "teuton",
	Description = _("A mainstay of the Hanseatic vessels of the North Sea, the Kogge is a sturdy ship capable of carrying a large amount of cargo. It is well-suited for commerce, the transport of troops and naval warfare alike."),
	Image = {"file", "teuton/units/kogge.png", "size", {72, 72}},
	LightImage = {"file", "teuton/units/kogge_water.png"},
	Animations = "animations-transport-ship", Icon = "icon-teuton-kogge",
	Sounds = {
		"help", "basic-teuton-voices-help"
	}
})

DefineUnitType("unit-teuton-town-hall", { Name = _("Rathaus"),
	Parent = "unit-template-town-hall",
	Civilization = "teuton",
	Description = _("The rathaus, or town hall, is the political center of teuton settlements."),
	Image = {"file", "teuton/buildings/town_hall.png", "size", {128, 128}},
	Shadow = {"file", "teuton/buildings/town_hall_shadow.png", "size", {128, 128}},
	Icon = "icon-teuton-town-hall",
	AiDrops = {"unit-boots"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-flaming", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-the-serpent", "upgrade-item-suffix-of-the-snail", "upgrade-item-suffix-of-trickery"},
	DropSpells = {"spell-frank-allegiance", "spell-suebi-allegiance"},
	Variations = {
		{
			"variation-id", "town-hall",
			"file", "germanic/buildings/town_hall.png",
			"shadow-file", "germanic/buildings/town_hall_shadow.png",
			"icon", "icon-germanic-town-hall",
			"animations", "animations-germanic-town-hall",
			"construction", "construction-germanic-town-hall",
			"type-name", "Chieftain's Hall",
			"upgrade-forbidden", "upgrade-teuton-masonry"
		},
		{
			"variation-id", "town-hall",
			"upgrade-required", "upgrade-teuton-masonry"
		}
	},
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-stronghold", { Name = _("Burg"),
	Parent = "unit-template-stronghold",
	Civilization = "teuton",
	Description = _("These tall and sturdy structures are built on strategic positions, allowing for easier control and protection of their environs."),
	Image = {"file", "teuton/buildings/stronghold.png", "size", {128, 128}},
	Shadow = {"file", "teuton/buildings/stronghold_shadow.png", "size", {128, 128}},
	Icon = "icon-teuton-stronghold",
	TechnologyPointCost = 1,
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-flaming", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-the-serpent", "upgrade-item-suffix-of-the-snail", "upgrade-item-suffix-of-trickery"},
	DropSpells = {"spell-frank-allegiance", "spell-suebi-allegiance"},
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-farm", { Name = _("Farm"),
	Parent = "unit-template-farm",
	Civilization = "teuton",
	Description = _("Farms are essential for supporting a settlement's population."),
	Image = {"file", "teuton/buildings/farm.png", "size", {64, 64}},
	Shadow = {"file", "teuton/buildings/farm_shadow.png", "size", {64, 64}},
	Icon = "icon-teuton-farm",
	Variations = {
		{
			"variation-id", "farm",
			"file", "germanic/buildings/farm.png",
			"shadow-file", "germanic/buildings/farm_shadow.png",
			"icon", "icon-germanic-farm",
			"upgrade-forbidden", "upgrade-teuton-masonry"
		},
		{
			"variation-id", "farm",
			"upgrade-required", "upgrade-teuton-masonry"
		}
	},
	Sounds = {
		"selected", "corral-selected",
		"ready", "corral-ready",
		"help", "basic-teuton-voices-help-town",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-teuton-barracks", { Name = _("Barracks"),
	Parent = "unit-template-barracks",
	Civilization = "teuton",
--	Description = _("The germanic war lodge serves as a gathering place for the tribe's warriors."),
	Image = {"file", "teuton/buildings/barracks.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/barracks_shadow.png", "size", {96, 96}},
	Icon = "icon-teuton-barracks",
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-flaming", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-the-serpent", "upgrade-item-suffix-of-the-snail", "upgrade-item-suffix-of-trickery"},
	Variations = {
		{
			"variation-id", "barracks",
			"type-name", "War Lodge",
			"file", "germanic/buildings/barracks.png",
			"shadow-file", "germanic/buildings/barracks_shadow.png",
			"icon", "icon-germanic-barracks",
			"upgrade-forbidden", "upgrade-teuton-masonry"
		},
		{
			"variation-id", "barracks",
			"upgrade-required", "upgrade-teuton-masonry"
		}
	},
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-lumber-mill", { Name = _("Lumber Mill"),
	Parent = "unit-template-lumber-mill",
	Civilization = "teuton",
	Description = _("A lumber mill provides a settlement with more advanced methods for processing timber, and it is also in this structure where woodworkers seek to improve arrows and construction techniques."),
	Image = {"file", "teuton/buildings/lumber_mill.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/lumber_mill_shadow.png", "size", {96, 96}},
	Icon = "icon-teuton-lumber-mill",
	AiDrops = {"unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-flaming", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-the-serpent", "upgrade-item-suffix-of-the-snail", "upgrade-item-suffix-of-trickery"},
	Variations = {
		{
			"variation-id", "lumber-mill",
			"file", "germanic/buildings/carpenters_shop.png",
			"shadow-file", "germanic/buildings/carpenters_shop_shadow.png",
			"icon", "icon-germanic-carpenters-shop",
			"type-name", "Carpenter's Shop",
			"upgrade-forbidden", "upgrade-teuton-masonry"
		},
		{
			"variation-id", "lumber-mill",
			"upgrade-required", "upgrade-teuton-masonry"
		}
	},
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-smithy", { Name = _("Smithy"),
	Parent = "unit-template-smithy",
	Civilization = "teuton",
	Description = _("It is in these smithies that teuton craftsmen prepare and seek to continuously improve the arms warriors will wield into battle."),
	Image = {"file", "teuton/buildings/smithy.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/smithy_shadow.png", "size", {96, 96}},
	Icon = "icon-teuton-smithy",
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-flaming", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-the-serpent", "upgrade-item-suffix-of-the-snail", "upgrade-item-suffix-of-trickery", "upgrade-item-suffix-of-os"}, -- "Os" is an Anglo-Saxon rune
	Variations = {
		{
			"variation-id", "smithy",
			"file", "germanic/buildings/smithy.png",
			"shadow-file", "germanic/buildings/smithy_shadow.png",
			"icon", "icon-germanic-smithy",
			"upgrade-forbidden", "upgrade-teuton-masonry"
		},
		{
			"variation-id", "smithy",
			"upgrade-required", "upgrade-teuton-masonry"
		}
	},
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-stables", { Name = _("Stables"),
	Parent = "unit-template-stables",
	Civilization = "teuton",
	Description = _("The fierce Teutons are renowned for their heavy cavalry. Any military center of import will have stables to provide the well-bred horses such forces require."),
	Image = {"file", "teuton/buildings/stables.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/stables_shadow.png", "size", {96, 96}},
	Icon = "icon-teuton-stables",
	TechnologyPointCost = 1,
	Drops = {"unit-horse"},
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-watch-tower", { Name = _("Watch Tower"),
	Parent = "unit-template-watch-tower",
	Civilization = "teuton",
	Description = _("These timber-made towers are built in frontier regions, keeping watch of possible attackers."),
	Image = {"file", "teuton/buildings/watch_tower.png", "size", {64, 64}},
	Shadow = {"file", "teuton/buildings/watch_tower_shadow.png", "size", {64, 64}},
	Icon = "icon-teuton-watch-tower",
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-guard-tower", { Name = _("Guard Tower"),
	Parent = "unit-template-guard-tower",
	Civilization = "teuton",
	Description = _("Solid stone towers are an essential addition to any fortified position of strategic importance, allowing archers to shoot from a vantage position."),
	Image = {"file", "teuton/buildings/guard_tower.png", "size", {64, 64}},
	Shadow = {"file", "teuton/buildings/guard_tower_shadow.png", "size", {64, 64}},
	Icon = "icon-teuton-guard-tower",
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-dock", { Name = _("Dock"),
	Parent = "unit-template-dock",
	Civilization = "teuton",
	Description = _("Shipbuilding is an ancient craft in the Teuton shores. Already in antiquity they constructed sturdy ships, capable of assaulting the vulnerable coasts to the west. During medieval times, their shipbuilding flourished even further, as the Hanseatic League dominated commerce in the Baltic and North Seas."),
	Image = {"file", "teuton/buildings/dock.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/dock_shadow.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-teuton-dock",
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )
