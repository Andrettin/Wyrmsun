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
--      (c) Copyright 1999-2017 by Fabrice Rossi, Lutz Sammer, Jimmy Salmon and Andrettin
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

--	Uncomment this to enable threaded sound
--SoundThread()

------------------------------------------------------------------------------
--	Define sounds later used
--
sound_click = MakeSound("click", "ui/click.wav")

------------------------------------------------------------------------------
--	Define simple sounds. (FIXME: somebody must clean the order.)
--

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--	Define simple dwarf sounds.
--

MakeSound("basic-dwarf-voices-ready", "dwarf/basic_voices/ready.wav")

MakeSound("basic-dwarf-voices-selected", {
	"dwarf/basic_voices/selected-1.wav",
	"dwarf/basic_voices/selected-2.wav",
	"dwarf/basic_voices/selected-3.wav",
	"dwarf/basic_voices/selected-4.wav",
	"dwarf/basic_voices/selected-5.wav"
})

MakeSound("basic-dwarf-voices-annoyed", {
	"dwarf/basic_voices/annoy1.wav",
	"dwarf/basic_voices/annoy2.wav",
	"dwarf/basic_voices/annoy3.wav",
	"dwarf/basic_voices/annoy4.wav"
})

MakeSoundGroup("basic-dwarf-voices-selected-group",
	"basic-dwarf-voices-selected", "basic-dwarf-voices-annoyed"
)
MakeSound("basic-dwarf-voices-acknowledge", {
	"dwarf/basic_voices/acknowledge-1.wav",
	"dwarf/basic_voices/acknowledge-2.wav",
	"dwarf/basic_voices/acknowledge-3.wav",
	"dwarf/basic_voices/acknowledge-4.wav",
	"dwarf/basic_voices/acknowledge-5.wav",
	"dwarf/basic_voices/acknowledge-6.wav",
	"dwarf/basic_voices/acknowledge-7.wav"
})

MakeSound("basic-dwarf-voices-attack", {
	"dwarf/basic_voices/attack-01.wav",
	"dwarf/basic_voices/attack-02.wav",
	"dwarf/basic_voices/move-02.wav"
})

MakeSound("basic-dwarf-voices-move", {
	"dwarf/basic_voices/move-01.wav",
	"dwarf/basic_voices/move-02.wav"
})

MakeSound("basic-dwarf-voices-help", {
	"dwarf/basic_voices/help-01.wav"
})

MakeSound("basic-dwarf-voices-help-town", {
	"dwarf/basic_voices/town-attack.wav"
})

MakeSound("basic-dwarf-voices-dead", {
	"dwarf/basic_voices/dead-1.wav",
	"dwarf/basic_voices/dead-2.wav"
})
SetSoundRange("basic-dwarf-voices-dead", 32)

------------------------------------------------------------------------------
--	Define unit-specific dwarf sounds.
--
MakeSound("dwarven-miner-acknowledge", {
	"dwarf/miner/miner-acknowledge-1.wav",
	"dwarf/miner/miner-acknowledge-2.wav",
	"dwarf/miner/miner-acknowledge-3.wav",
	"dwarf/miner/miner-acknowledge-4.wav",
	"dwarf/miner/miner-acknowledge-5.wav",
	"dwarf/miner/miner-acknowledge-6.wav",
	"dwarf/miner/miner-acknowledge-7.wav"
})
MakeSound("dwarven-miner-ready", "dwarf/miner/miner-ready.wav")
MakeSound("dwarven-axefighter-ready", "dwarf/axefighter/axefighter-ready.wav")
MakeSound("dwarven-ballista-ready", "dwarf/ballista/ballista-ready.wav")
MakeSound("dwarven-gryphon-rider-ready", "dwarf/gryphon_rider/gryphon-rider-ready.wav")
MakeSound("dwarven-scout-ready", "dwarf/scout/scout-ready.wav")
MakeSound("dwarven-steelclad-ready", "dwarf/steelclad/steelclad-ready.wav")
MakeSound("yale-rider-selected", {
	"dwarf/basic_voices/selected-1.wav",
	"dwarf/basic_voices/selected-2.wav",
	"dwarf/basic_voices/selected-3.wav",
	"dwarf/basic_voices/selected-4.wav",
	"dwarf/basic_voices/selected-5.wav",
	"neutral/yale/yale_select01.wav",
	"neutral/yale/yale_select02.wav"
})
MakeSoundGroup("yale-rider-selected-group",
	"yale-rider-selected", "basic-dwarf-voices-annoyed")
MakeSound("yale-rider-acknowledge", {
	"dwarf/basic_voices/acknowledge-1.wav",
	"dwarf/basic_voices/acknowledge-2.wav",
	"dwarf/basic_voices/acknowledge-3.wav",
	"dwarf/basic_voices/acknowledge-4.wav",
	"dwarf/basic_voices/acknowledge-5.wav",
	"dwarf/basic_voices/acknowledge-6.wav",
	"dwarf/basic_voices/acknowledge-7.wav",
	"neutral/yale/yale_ack01.wav",
	"neutral/yale/yale_ack02.wav",
	"neutral/yale/yale_ack03.wav"
})
MakeSound("dwarven-yale-rider-ready", "dwarf/yale_rider/yale-rider-ready.wav")

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--	Define simple gnome sounds.
--
MakeSound("basic-gnome-voices-selected", {
--	"gnome/basic_voices/selected-1.wav",
	"gnome/basic_voices/selected-2.wav",
	"gnome/basic_voices/selected-3.wav",
	"gnome/basic_voices/selected-4.wav",
	"gnome/basic_voices/selected-5.wav",
--	"gnome/basic_voices/selected-6.wav",
	"gnome/basic_voices/selected-7.wav"
})
MakeSound("basic-gnome-voices-annoyed", {
	"gnome/basic_voices/annoy-1.wav",
	"gnome/basic_voices/annoy-2.wav"
})
MakeSoundGroup("basic-gnome-voices-selected-group",
	"basic-gnome-voices-selected", "basic-gnome-voices-annoyed")
MakeSound("basic-gnome-voices-ready", {
	"gnome/basic_voices/ready-1.wav",
	"gnome/basic_voices/ready-2.wav"
})
MakeSound("basic-gnome-voices-acknowledge", {
	"gnome/basic_voices/acknowledge-01.wav",
	"gnome/basic_voices/acknowledge-02.wav",
	"gnome/basic_voices/acknowledge-03.wav",
	"gnome/basic_voices/acknowledge-04.wav",
	"gnome/basic_voices/acknowledge-05.wav",
	"gnome/basic_voices/acknowledge-06.wav",
	"gnome/basic_voices/acknowledge-07.wav"
})
MakeSound("basic-gnome-voices-attack", {
	"gnome/basic_voices/attack1.wav",
	"gnome/basic_voices/attack2.wav"
})
MakeSound("basic-gnome-voices-dead", {
	"gnome/basic_voices/death-1.wav",
	"gnome/basic_voices/death-2.wav",
	"gnome/basic_voices/death-3.wav",
	"gnome/basic_voices/death-4.wav",
	"gnome/basic_voices/death-5.wav",
	"gnome/basic_voices/death-6.wav"
})
SetSoundRange("basic-gnome-voices-dead", 32)
MakeSound("basic-gnome-voices-help", {
	"gnome/basic_voices/help-1.wav",
	"gnome/basic_voices/help-2.wav",
	"gnome/basic_voices/help-3.wav",
	"gnome/basic_voices/help-4.wav"
})
MakeSound("basic-gnome-voices-help-town", {
	"gnome/basic_voices/helptown-1.wav",
	"gnome/basic_voices/helptown-2.wav"
})

MakeSound("gnomish-worker-ready", {
	"gnome/scavenger/scavenger-ready-1.wav",
	"gnome/scavenger/scavenger-ready-2.wav"
})
MakeSound("gnomish-worker-annoyed", {
	"gnome/scavenger/scavenger-annoyed-1.wav",
	"gnome/scavenger/scavenger-annoyed-2.wav",
	"gnome/scavenger/scavenger-annoyed-3.wav",
	"gnome/scavenger/scavenger-annoyed-4.wav"
})
MakeSoundGroup("gnomish-worker-selected-group",
	"basic-gnome-voices-selected", "gnomish-worker-annoyed")
MakeSound("gnomish-worker-repair", {
	"gnome/scavenger/repair-acknowledge.wav"
})

MakeSound("gnomish-recruit-ready", "gnome/recruit/recruit-ready-1.wav")
MakeSound("gnomish-recruit-annoyed", {
	"gnome/recruit/annoy-1.wav",
	"gnome/recruit/annoy-2.wav",
	"gnome/recruit/annoy-3.wav"
})
MakeSoundGroup("gnomish-recruit-selected-group",
	"basic-gnome-voices-selected", "gnomish-recruit-annoyed")
MakeSound("gnomish-herbalist-ready", {
	"gnome/herbalist/herbalist-ready-1.wav",
	"gnome/herbalist/herbalist-ready-2.wav"
})
MakeSound("gnomish-herbalist-annoyed", {
	"gnome/herbalist/annoy-1.wav",
	"gnome/herbalist/annoy-2.wav",
	"gnome/herbalist/annoy-3.wav",
	"gnome/herbalist/annoy-4.wav"
})
MakeSoundGroup("gnomish-herbalist-selected-group",
	"basic-gnome-voices-selected", "gnomish-herbalist-annoyed")
MakeSound("gnomish-caravan-ready", {
	"gnome/caravan/caravan-ready-1.wav",
	"gnome/caravan/caravan-ready-2.wav",
	"gnome/caravan/caravan-ready-3.wav",
	"gnome/caravan/caravan-ready-4.wav"
})

------------------------------------------------------------------------------
--	Define simple goblin sounds.
--
MakeSound("basic-goblin-voices-selected", {
	"goblin/basic_voices/selected-01.wav",
	"goblin/basic_voices/selected-02.wav",
	"goblin/basic_voices/selected-03.wav",
	"goblin/basic_voices/selected-04.wav",
	"goblin/basic_voices/selected-05.wav",
	"goblin/basic_voices/selected-06.wav",
	"goblin/basic_voices/selected-07.wav",
	"goblin/basic_voices/selected-08.wav",
	"goblin/basic_voices/selected-09.wav",
	"goblin/basic_voices/selected-10.wav",
	"goblin/basic_voices/selected-11.wav",
	"goblin/basic_voices/selected-12.wav"
})
MakeSound("basic-goblin-voices-annoyed", {
	"goblin/basic_voices/annoy-01.wav",
	"goblin/basic_voices/annoy-02.wav",
	"goblin/basic_voices/annoy-03.wav",
	"goblin/basic_voices/annoy-04.wav",
	"goblin/basic_voices/annoy-05.wav",
	"goblin/basic_voices/annoy-06.wav"
})
MakeSoundGroup("basic-goblin-voices-selected-group",
	"basic-goblin-voices-selected", "basic-goblin-voices-annoyed")
MakeSound("basic-goblin-voices-acknowledge", {
	"goblin/basic_voices/acknowledge-01.wav",
	"goblin/basic_voices/acknowledge-02.wav",
	"goblin/basic_voices/acknowledge-03.wav",
	"goblin/basic_voices/acknowledge-04.wav",
	"goblin/basic_voices/acknowledge-05.wav",
	"goblin/basic_voices/acknowledge-06.wav",
	"goblin/basic_voices/acknowledge-07.wav",
	"goblin/basic_voices/acknowledge-08.wav",
	"goblin/basic_voices/acknowledge-09.wav",
	"goblin/basic_voices/acknowledge-10.wav",
	"goblin/basic_voices/acknowledge-11.wav"
})
MakeSound("basic-goblin-voices-attack", {
	"goblin/basic_voices/attack-1.wav",
	"goblin/basic_voices/attack-2.wav",
	"goblin/basic_voices/attack-3.wav",
	"goblin/basic_voices/attack-4.wav",
	"goblin/basic_voices/acknowledge-01.wav"
})
MakeSound("basic-goblin-voices-repair", {
	"goblin/basic_voices/repair.wav"
})
MakeSound("basic-goblin-voices-help", {
	"goblin/basic_voices/under-attack.wav"
})
MakeSound("basic-goblin-voices-help-town", {
	"goblin/basic_voices/town-attack.wav"
})
MakeSound("basic-goblin-voices-dead", {
	"goblin/basic_voices/goblin-die-1.wav",
	"goblin/basic_voices/goblin-die-2.wav"
})
SetSoundRange("basic-goblin-voices-dead", 32)

------------------------------------------------------------------------------
--	Define unit-specific goblin sounds.
--
MakeSound("goblin-worker-ready", {
	"goblin/worker/goblin-worker-ready-1.wav",
	"goblin/worker/goblin-worker-ready-2.wav"
})
MakeSound("goblin-impaler-ready", "goblin/impaler/goblin-impaler-ready.wav")
MakeSound("goblin-archer-ready", "goblin/archer/goblin-archer-ready.wav")
MakeSound("goblin-assassin-ready", "goblin/assassin/assassin-ready.wav")
MakeSound("goblin-shaman-ready", "goblin/shaman/goblin-shaman-ready.wav")
MakeSound("goblin-glider-ready", "goblin/glider/glider-ready.wav")
MakeSound("glider-flying", "goblin/glider/glider-flying.wav")

------------------------------------------------------------------------------
--	Define simple human sounds.
--
MakeSound("basic-human-voices-dead", {
	"human/basic_voices/human-die-1.wav",
	"human/basic_voices/human-die-2.wav",
	"human/basic_voices/human-die-3.wav"
})
SetSoundRange("basic-human-voices-dead", 32)

------------------------------------------------------------------------------
--	Define simple kobold sounds.
--
MakeSound("basic-kobold-voices-dead", "neutral/hiss_death.wav")
SetSoundRange("basic-kobold-voices-dead", 32)

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--	Define simple germanic sounds.
--
MakeSound("basic-germanic-voices-ready", "germanic/basic_voices/ready.wav")
MakeSound("basic-germanic-voices-selected", {
	"germanic/basic_voices/selected_01.wav",
	"germanic/basic_voices/selected_02.wav"
})
MakeSound("basic-germanic-voices-annoyed", {
	"germanic/basic_voices/annoyed_01.wav",
	"germanic/basic_voices/annoyed_02.wav"
})
MakeSoundGroup("basic-germanic-voices-selected-group",
	"basic-germanic-voices-selected", "basic-germanic-voices-annoyed")
MakeSound("basic-germanic-voices-acknowledge", {
	"germanic/basic_voices/acknowledge_01.wav",
	"germanic/basic_voices/acknowledge_02.wav",
	"germanic/basic_voices/acknowledge_03.wav",
	"germanic/basic_voices/acknowledge_04.wav"
})
MakeSound("basic-germanic-voices-attack", {
	"germanic/basic_voices/attack_01.wav",
	"germanic/basic_voices/attack_02.wav",
	"germanic/basic_voices/attack_03.wav"
})
MakeSound("basic-germanic-voices-help", {
	"teuton/basic_voices/help.wav"
})
MakeSound("basic-germanic-voices-help-town", {
	"teuton/basic_voices/town_help.wav"
})

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--	Define simple teuton sounds.
--
MakeSound("basic-teuton-voices-ready", "teuton/basic_voices/ready.wav")
MakeSound("basic-teuton-voices-selected", {
	"teuton/basic_voices/selected_01.wav",
	"teuton/basic_voices/selected_02.wav",
	"teuton/basic_voices/selected_03.wav",
	"teuton/basic_voices/selected_04.wav"
})
MakeSound("basic-teuton-voices-annoyed", {
	"teuton/basic_voices/annoyed_01.wav",
	"teuton/basic_voices/annoyed_02.wav",
	"teuton/basic_voices/annoyed_03.wav"
})
MakeSoundGroup("basic-teuton-voices-selected-group",
	"basic-teuton-voices-selected", "basic-teuton-voices-annoyed")
MakeSound("basic-teuton-voices-acknowledge", {
	"teuton/basic_voices/acknowledge_01.wav",
	"teuton/basic_voices/acknowledge_02.wav",
	"teuton/basic_voices/acknowledge_03.wav",
	"teuton/basic_voices/acknowledge_04.wav"
})
MakeSound("basic-teuton-voices-help", {
	"teuton/basic_voices/help.wav"
})
MakeSound("basic-teuton-voices-help-town", {
	"teuton/basic_voices/town_help.wav"
})

------------------------------------------------------------------------------
--	Define unit-specific teuton sounds.
--
MakeSound("teuton-bauer-ready", "teuton/bauer/bauer_ready.wav")

------------------------------------------------------------------------------
--	Define simple misc sounds.
--
building_construction = MakeSound("building construction", "misc/building_construction.wav")

placement_error = MakeSound("placement error", "ui/placement_error.wav")
placement_success = MakeSound("placement success", "ui/placement_success.wav")

rescue = MakeSound("rescue", "misc/rescue.wav")

-- building selection sounds
MakeSound("town-hall-selected", "buildings/sel_civ_center.wav")
MakeSound("farm-selected", "buildings/sel_farmstead.wav")
MakeSound("corral-selected", "buildings/sel_corral.wav")
MakeSound("barracks-selected", "buildings/sel_barracks.wav")
MakeSound("gold-mine-selected", "buildings/gold_mine.wav")
MakeSound("lumber-mill-selected", "buildings/lumbermill.wav")
MakeSound("stables-selected", "buildings/sel_cavalry_stables.wav")
MakeSound("smithy-selected", "buildings/sel_blacksmith.wav")
MakeSound("temple-selected", "buildings/sel_temple.wav")
MakeSound("yale-pen-selected", "buildings/yalepen.wav")
SetSoundVolumePercent("yale-pen-selected", 50)
MakeSound("fortress-selected", "buildings/sel_fortress.wav")
MakeSound("tower-selected", "buildings/sel_tower.wav")

MakeSound("town-hall-ready", "buildings/complete_civ_center.wav")
MakeSound("farm-ready", "buildings/complete_farmstead.wav")
MakeSound("corral-ready", "buildings/complete_corral.wav")
MakeSound("barracks-ready", "buildings/complete_barracks.wav")
MakeSound("storehouse-ready", "buildings/complete_storehouse.wav")
MakeSound("stables-ready", "buildings/complete_cavalry_stables.wav")
MakeSound("smithy-ready", "buildings/complete_blacksmith.wav")
MakeSound("temple-ready", "buildings/complete_temple.wav")
MakeSound("fortress-ready", "buildings/complete_fortress.wav")
MakeSound("tower-ready", "buildings/complete_tower.wav")

MakeSound("tree-selected", "misc/sel_tree_01.wav")
MakeSound("metal-selected", "misc/sel_metal_01.wav")

--transport_docking = MakeSound("transport docking", "misc/transport_docking.wav")
MakeSound("burning", "misc/burning.wav")
    -- ready sounds

    --------------------------------------------------------------------------
    -- selection sounds
    -- annoyed sounds

    --------------------------------------------------------------------------
    -- attack sounds

------------------------------------------------------------------------------
--	Define sound groups.
    --
    --	Acknowledgment sounds -------------------------------------------------
    --
    --
    --	Selection sounds -----------------------------------------------------
    --
    --
    --	Annoyed sounds --------------------------------------------------------
    --
    --
    --	Other sounds ---------------------------------------------------------
    --
MakeSound("explosion", "misc/explosion.wav")
SetSoundRange("explosion", 32)
MakeSound("building-destroyed",
	{"misc/building_explosion/1.wav",
	"misc/building_explosion/2.wav"})
SetSoundRange("building-destroyed", 32)

MakeSound("ship-selected",
	"misc/ship_selected.wav"
)
SetSoundRange("ship-move", 32)
MakeSound("ship-move",
	"misc/ship_move.wav"
)
SetSoundRange("ship-move", 32)
MakeSound("ship-destroyed",
	{
		"misc/warship_death_01.wav",
		"misc/warship_death_02.wav"
	}
)
SetSoundRange("ship-destroyed", 32)

MakeSound("axe-attack",
	"missiles/axe.wav"
)
SetSoundRange("axe-attack", 32)
MakeSound("bite-attack",
	"missiles/bite.wav"
)
SetSoundRange("bite-attack", 32)
MakeSound("claw-attack",
	"missiles/claws.wav"
)
SetSoundRange("claw-attack", 32)
MakeSound("club-attack",
	"missiles/club.wav"
)
SetSoundRange("club-attack", 32)
MakeSound("dagger-attack",
	"missiles/dagger.wav"
)
SetSoundRange("dagger-attack", 32)
MakeSound("dart-attack",
	"missiles/dart.wav"
)
SetSoundRange("dart-attack", 32)
MakeSound("fist-attack",
	"missiles/fist.wav"
)
SetSoundRange("fist-attack", 32)
MakeSound("mace-attack", {
	"missiles/shield_metal/shieldimpmetal_22.wav",
	"missiles/shield_metal/shieldimpmetal_21.wav",
	"missiles/shield_metal/shieldimpmetal_26.wav",
	"missiles/shield_metal/shieldimpmetal_23.wav",
	"missiles/shield_metal/shieldimpmetal_24.wav",
	"missiles/shield_metal/shieldimpmetal_25.wav",
	"missiles/shield_metal/shieldimpmetal_213.wav",
	"missiles/shield_metal/shieldimpmetal_27.wav",
	"missiles/shield_metal/shieldimpmetal_28.wav",
	"missiles/shield_metal/shieldimpmetal_29.wav",
	"missiles/shield_metal/shieldimpmetal_210.wav",
	"missiles/shield_metal/shieldimpmetal_211.wav",
	"missiles/shield_metal/shieldimpmetal_212.wav",
	"missiles/shield_metal/shieldimpmetal_215.wav",
	"missiles/shield_metal/shieldimpmetal_214.wav"
})
SetSoundRange("mace-attack", 32)
MakeSound("spear-attack", {
	"missiles/spear-1.wav",
	"missiles/spear-2.wav"
})
SetSoundRange("spear-attack", 32)
MakeSound("spear-miss",
	"missiles/spear-miss.wav"
)
SetSoundRange("spear-miss", 32)
MakeSound("squishy-attack",
	"missiles/squishy_strike.wav"
)
SetSoundRange("squishy-attack", 32)
MakeSound("squishy-miss",
	"missiles/squishy_miss.wav"
)
SetSoundRange("squishy-miss", 32)

MakeSound("sword-attack", {
	"missiles/sword/swordhit_12a.wav",
	"missiles/sword/swordhit_10.wav",
	"missiles/sword/swordhit_10a.wav",
	"missiles/sword/swordhit_11.wav",
	"missiles/sword/swordhit_11a.wav",
	"missiles/sword/swordhit_11b.wav",
	"missiles/sword/swordhit_12.wav",
	"missiles/sword/swordhit_15.wav",
	"missiles/sword/swordhit_12b.wav",
	"missiles/sword/swordhit_13.wav",
	"missiles/sword/swordhit_13a.wav",
	"missiles/sword/swordhit_13b.wav",
	"missiles/sword/swordhit_14.wav",
	"missiles/sword/swordhit_14a.wav",
	"missiles/sword/swordhit_14b.wav",
	"missiles/sword/swordhit_18.wav",
	"missiles/sword/swordhit_15a.wav",
	"missiles/sword/swordhit_15b.wav",
	"missiles/sword/swordhit_16.wav",
	"missiles/sword/swordhit_16a.wav",
	"missiles/sword/swordhit_16b.wav",
	"missiles/sword/swordhit_17.wav",
	"missiles/sword/swordhit_17a.wav",
	"missiles/sword/swordhit_17b.wav",
	"missiles/sword/swordhit_19a.wav",
	"missiles/sword/swordhit_18a.wav",
	"missiles/sword/swordhit_19.wav"
})
SetSoundRange("sword-attack", 32)

MakeSound("bow", "missiles/bow.wav")
SetSoundRange("bow", 32)

MakeSound("bow-hit", "missiles/bow_hit.wav")
SetSoundRange("bow-hit", 32)

MakeSound("throwing-axe", "missiles/throwing_axe.wav")
SetSoundRange("throwing-axe", 32)
SetSoundVolumePercent("throwing-axe", 75)
MakeSound("throwing-axe-hit", "missiles/throwing_axe_hit.wav")
SetSoundRange("throwing-axe-hit", 32)
MakeSound("catapult-attack", "neutral/onager_shooting.wav")
SetSoundRange("catapult-attack", 32)

MakeSound("attack-miss",
	{"missiles/miss-1.wav",
	"missiles/miss-2.wav",
	"missiles/miss-3.wav"}
)

MakeSound("construction-stone", {
	"misc/construction/con_stone_10.wav",
	"misc/construction/con_stone_11.wav"
} )
SetSoundRange("construction-stone", 32)

MakeSound("construction-wood", {
	"misc/construction/con_wood_18.wav",
	"misc/construction/con_wood_10.wav",
	"misc/construction/con_wood_11.wav",
	"misc/construction/con_wood_12.wav",
	"misc/construction/con_wood_13.wav",
	"misc/construction/con_wood_14.wav",
	"misc/construction/con_wood_15.wav",
	"misc/construction/con_wood_16.wav",
	"misc/construction/con_wood_17.wav"
} )
SetSoundRange("construction-wood", 32)

MakeSound("tree-chopping", {
	"misc/tree_chopping/tree-chopping-1.wav",
	"misc/tree_chopping/tree-chopping-2.wav"
})
SetSoundRange("tree-chopping", 32)
SetSoundVolumePercent("tree-chopping", 75)

MakeSound("metal-mining", {
	"misc/metal_mining/mine_metal_01.wav",
	"misc/metal_mining/mine_metal_02.wav",
	"misc/metal_mining/mine_metal_03.wav",
	"misc/metal_mining/mine_metal_04.wav",
	"misc/metal_mining/mine_metal_05.wav",
	"misc/metal_mining/mine_metal_06.wav",
	"misc/metal_mining/mine_metal_07.wav",
	"misc/metal_mining/mine_metal_08.wav",
	"misc/metal_mining/mine_metal_09.wav",
	"misc/metal_mining/mine_metal_10.wav",
	"misc/metal_mining/mine_metal_11.wav",
	"misc/metal_mining/mine_metal_12.wav",
	"misc/metal_mining/mine_metal_13.wav",
	"misc/metal_mining/mine_metal_14.wav",
	"misc/metal_mining/mine_metal_15.wav",
	"misc/metal_mining/mine_metal_16.wav",
	"misc/metal_mining/mine_metal_17.wav",
	"misc/metal_mining/mine_metal_18.wav",
	"misc/metal_mining/mine_metal_19.wav",
	"misc/metal_mining/mine_metal_20.wav",
	"misc/metal_mining/mine_metal_21.wav",
	"misc/metal_mining/mine_metal_22.wav",
	"misc/metal_mining/mine_metal_23.wav",
	"misc/metal_mining/mine_metal_24.wav"
})
SetSoundRange("metal-mining", 32)

MakeSound("stone-mining", {
	"misc/stone_mining/mine_stone_01.wav",
	"misc/stone_mining/mine_stone_02.wav",
	"misc/stone_mining/mine_stone_03.wav",
	"misc/stone_mining/mine_stone_04.wav",
	"misc/stone_mining/mine_stone_05.wav",
	"misc/stone_mining/mine_stone_06.wav",
	"misc/stone_mining/mine_stone_07.wav",
	"misc/stone_mining/mine_stone_08.wav",
	"misc/stone_mining/mine_stone_09.wav",
	"misc/stone_mining/mine_stone_10.wav",
	"misc/stone_mining/mine_stone_11.wav",
	"misc/stone_mining/mine_stone_12.wav",
	"misc/stone_mining/mine_stone_13.wav",
	"misc/stone_mining/mine_stone_14.wav",
	"misc/stone_mining/mine_stone_15.wav",
	"misc/stone_mining/mine_stone_16.wav",
	"misc/stone_mining/mine_stone_17.wav",
	"misc/stone_mining/mine_stone_18.wav",
	"misc/stone_mining/mine_stone_19.wav",
	"misc/stone_mining/mine_stone_20.wav",
	"misc/stone_mining/mine_stone_21.wav",
	"misc/stone_mining/mine_stone_22.wav",
	"misc/stone_mining/mine_stone_23.wav",
	"misc/stone_mining/mine_stone_24.wav",
	"misc/stone_mining/mine_stone_25.wav"
})
SetSoundRange("stone-mining", 32)

MakeSound("foraging", {
	"misc/foraging/leaves_19.wav",
	"misc/foraging/leaves_1a.wav",
	"misc/foraging/leaves_10.wav",
	"misc/foraging/leaves_11.wav",
	"misc/foraging/leaves_12.wav",
	"misc/foraging/leaves_13.wav",
	"misc/foraging/leaves_14.wav",
	"misc/foraging/leaves_15.wav",
	"misc/foraging/leaves_16.wav",
	"misc/foraging/leaves_17.wav",
	"misc/foraging/leaves_18.wav"
})

MakeSound("step-dirt", {
	"movement/step_dirt/stepdirt_1.wav",
	"movement/step_dirt/stepdirt_2.wav",
	"movement/step_dirt/stepdirt_3.wav",
	"movement/step_dirt/stepdirt_4.wav",
	"movement/step_dirt/stepdirt_5.wav",
	"movement/step_dirt/stepdirt_6.wav",
	"movement/step_dirt/stepdirt_7.wav",
	"movement/step_dirt/stepdirt_8.wav"
})
SetSoundRange("step-dirt", 32)
SetSoundVolumePercent("step-dirt", 33)

MakeSound("step-gravel", {
	"movement/step_gravel/step_gravel.wav"
})
SetSoundRange("step-gravel", 32)

MakeSound("step-leaves", {
	"movement/step_leaves/step_leaves_1.wav",
	"movement/step_leaves/step_leaves_2.wav"
})
SetSoundRange("step-leaves", 32)

MakeSound("step-mud", {
	"movement/step_mud/step_mud.wav"
})
SetSoundRange("step-mud", 32)

MakeSound("step-stone", {
	"movement/step_stone/stepstone_1.wav",
	"movement/step_stone/stepstone_2.wav",
	"movement/step_stone/stepstone_3.wav",
	"movement/step_stone/stepstone_4.wav",
	"movement/step_stone/stepstone_5.wav",
	"movement/step_stone/stepstone_6.wav",
	"movement/step_stone/stepstone_7.wav",
	"movement/step_stone/stepstone_8.wav"
})
SetSoundRange("step-stone", 32)
SetSoundVolumePercent("step-stone", 50)

MakeSound("gold-coins", "misc/gold_coins.wav")
SetSoundRange("gold-coins", 32)
MakeSound("heal", "misc/heal.wav")
MakeSound("open-chest", "misc/open_chest.wav")
SetSoundRange("open-chest", 32)
MakeSound("eat", "misc/eat.wav")
SetSoundRange("eat", 32)
MakeSound("scroll", "misc/scroll.wav")
SetSoundRange("scroll", 32)
MakeSound("potion", "misc/potion.wav")
SetSoundRange("potion", 32)
MakeSound("rumble", "misc/rumble.wav")

MakeSound("magic-holy",
	{"misc/magic-holy-1.wav",
	"misc/magic-holy-2.wav",
	"misc/magic-holy-3.wav",
	"misc/magic-holy-4.wav"}
)
------------------------------------------------------------------------------
--	Define selection sound groups.

------------------------------------------------------------------------------
--	Define sound remapping. (FIXME: somebody must clean the order.)
--
    --	acknowledge sounds
    --	 ready sounds
    --	 selection sounds
    --	attack sounds

MapSound("gold-mine-help", "basic-dwarf-voices-help")
MapSound("critter-help", "basic-dwarf-voices-help")
MakeSound("drake-dead", "neutral/drake_death.wav")
SetSoundRange("drake-dead", 32)
MakeSound("rat-dead", "neutral/rat_death.wav")
SetSoundRange("rat-dead", 32)
MakeSound("gryphon-ready", {
	"neutral/gryphon/gryphon_shriek_1.wav",
	"neutral/gryphon/gryphon_shriek_2.wav"
})
SetSoundRange("gryphon-ready", 32)
SetSoundVolumePercent("gryphon-ready", 50)
MakeSound("gryphon-dead", {
	"neutral/gryphon/gryphon_death_1.wav",
	"neutral/gryphon/gryphon_death_2.wav"
})
SetSoundRange("gryphon-dead", 32)
MakeSound("squishy-hit", "neutral/squishy_hit.wav")
SetSoundRange("squishy-hit", 32)
MakeSound("bird-selected", {
	"neutral/bird/birds1.wav",
	"neutral/bird/birds2.wav",
	"neutral/bird/birds3.wav"
})
SetSoundRange("bird-selected", 32)
MakeSound("bird-dead", {
	"neutral/bird/deadbird.wav",
	"neutral/bird/deadbird2.wav"
})
MakeSound("crow-selected", {
	"neutral/crow/crow1.wav",
	"neutral/crow/crow2.wav",
	"neutral/crow/crow3.wav",
	"neutral/crow/crow4.wav",
	"neutral/crow/crow5.wav",
	"neutral/crow/crow6.wav",
	"neutral/crow/crow7.wav",
	"neutral/crow/crow8.wav",
	"neutral/crow/crow9.wav"
})
SetSoundRange("crow-selected", 32)
MakeSound("bat-selected", "neutral/bat_flapping.wav")

MakeSound("frog-ribbit", {
	"neutral/frog.wav"
})
SetSoundRange("frog-ribbit", 32)
SetSoundVolumePercent("frog-ribbit", 25)
MakeSound("frog-tongue", {
	"missiles/miss-2.wav"
})
SetSoundRange("frog-tongue", 32)

MakeSound("yale-selected", {
	"neutral/yale/yale_select01.wav",
	"neutral/yale/yale_select02.wav"
})
SetSoundRange("yale-selected", 32)
SetSoundVolumePercent("yale-selected", 25)
MakeSound("yale-acknowledge", {
	"neutral/yale/yale_ack01.wav",
	"neutral/yale/yale_ack02.wav",
	"neutral/yale/yale_ack03.wav"
})
MakeSound("yale-dead", "neutral/yale/yaledead.wav")
SetSoundRange("yale-dead", 32)

MakeSound("horse-idle", {
	"neutral/horse/horse_idle1.wav",
	"neutral/horse/horse_idle2.wav",
	"neutral/horse/horse_idle3.wav"
})
SetSoundRange("horse-idle", 32)
MakeSound("horse-selected", {
	"neutral/horse/horse_select1.wav",
	"neutral/horse/horse_select2.wav",
	"neutral/horse/horse_select3.wav"
})
SetSoundRange("horse-selected", 32)
MakeSound("horse-attack", {
	"neutral/horse/horse_attack1.wav",
	"neutral/horse/horse_attack2.wav",
	"neutral/horse/horse_attack3.wav"
})
MakeSound("horse-dead", {
	"neutral/horse/horse_death1.wav",
	"neutral/horse/horse_death2.wav",
	"neutral/horse/horse_death3.wav",
	"neutral/horse/horse_death4.wav"
})
SetSoundRange("horse-dead", 32)

MakeSound("goat", {
	"neutral/goat/goat_10.wav",
	"neutral/goat/goat_11.wav",
	"neutral/goat/goat_12.wav",
	"neutral/goat/goat_13.wav",
	"neutral/goat/goat_14.wav",
	"neutral/goat/goat_15.wav"
})
SetSoundRange("goat", 32)

MakeSound("pig", {
	"neutral/pig/pig_10.wav",
	"neutral/pig/pig_11.wav",
	"neutral/pig/pig_12.wav"
})
SetSoundRange("pig", 32)

MakeSound("wolf-growl", {
	"neutral/wolf/wolf-growl-1.wav",
	"neutral/wolf/wolf-growl-2.wav",
	"neutral/wolf/wolf-growl-3.wav",
	"neutral/wolf/wolf-growl-4.wav"
})
SetSoundRange("wolf-growl", 32)

MakeSound("wolf-dead", {
	"neutral/wolf/wolf-die-1.wav",
	"neutral/wolf/wolf-die-2.wav",
	"neutral/wolf/wolf-die-3.wav",
	"neutral/wolf/wolf-die-4.wav"
})
SetSoundRange("wolf-dead", 32)

Load("scripts/civilizations/english/sound.lua")
Load("scripts/civilizations/orc/sound.lua")

--	Define sounds used by the game
--
DefineGameSounds(
	"placement-error", {"anglo-saxon", placement_error},
	"placement-error", {"castillian", placement_error},
	"placement-error", {"celt", placement_error},
	"placement-error", {"dwarf", placement_error},
	"placement-error", {"frankish", placement_error},
	"placement-error", {"french", placement_error},
	"placement-error", {"germanic", placement_error},
	"placement-error", {"gnome", placement_error},
	"placement-error", {"goblin", placement_error},
	"placement-error", {"goth", placement_error},
	"placement-error", {"greek", placement_error},
	"placement-error", {"italian", placement_error},
	"placement-error", {"kobold", placement_error},
	"placement-error", {"latin", placement_error},
	"placement-error", {"norse", placement_error},
	"placement-error", {"portuguese", placement_error},
	"placement-error", {"romanian", placement_error},
	"placement-error", {"suebi", placement_error},
	"placement-error", {"teuton", placement_error},

	"placement-success", {"anglo-saxon", placement_success},
	"placement-success", {"castillian", placement_success},
	"placement-success", {"celt", placement_success},
	"placement-success", {"dwarf", placement_success},
	"placement-success", {"frankish", placement_success},
	"placement-success", {"french", placement_success},
	"placement-success", {"germanic", placement_success},
	"placement-success", {"gnome", placement_success},
	"placement-success", {"goblin", placement_success},
	"placement-success", {"goth", placement_success},
	"placement-success", {"greek", placement_success},
	"placement-success", {"italian", placement_success},
	"placement-success", {"kobold", placement_success},
	"placement-success", {"latin", placement_success},
	"placement-success", {"norse", placement_success},
	"placement-success", {"portuguese", placement_success},
	"placement-success", {"romanian", placement_success},
	"placement-success", {"suebi", placement_success},
	"placement-success", {"teuton", placement_success},

	"click", sound_click,
--	"transport-docking", transport_docking,
	"chat-message", sound_click,

	"building-construction", {"anglo-saxon", building_construction},
	"building-construction", {"castillian", building_construction},
	"building-construction", {"celt", building_construction},
	"building-construction", {"dwarf", building_construction},
	"building-construction", {"frankish", building_construction},
	"building-construction", {"french", building_construction},
	"building-construction", {"germanic", building_construction},
	"building-construction", {"gnome", building_construction},
	"building-construction", {"goblin", building_construction},
	"building-construction", {"goth", building_construction},
	"building-construction", {"greek", building_construction},
	"building-construction", {"italian", building_construction},
	"building-construction", {"kobold", building_construction},
	"building-construction", {"latin", building_construction},
	"building-construction", {"norse", building_construction},
	"building-construction", {"portuguese", building_construction},
	"building-construction", {"romanian", building_construction},
	"building-construction", {"suebi", building_construction},
	"building-construction", {"teuton", building_construction},

	"work-complete", {"anglo-saxon", MakeSound("basic-anglo-saxon-voices-work-complete", {"english/basic_voices/work_complete_01.wav", "english/basic_voices/work_complete_02.wav", "english/basic_voices/work_complete_03.wav"})},
	"work-complete", {"dwarf", MakeSound("basic-dwarf-voices-work-complete", "dwarf/miner/work-done.wav")},
	"work-complete", {"frankish", MakeSound("basic-frankish-voices-work-complete", "teuton/bauer/work_complete.wav")},
	"work-complete", {"germanic", MakeSound("basic-germanic-voices-work-complete", "germanic/bura/work_complete.wav")},
	"work-complete", {"gnome", MakeSound("basic-gnome-voices-work-complete", "gnome/basic_voices/done-01.wav")},
	"work-complete", {"goblin", MakeSound("basic-goblin-voices-work-complete", "goblin/worker/built.wav")},
	"work-complete", {"suebi", MakeSound("basic-suebi-voices-work-complete", "teuton/bauer/work_complete.wav")},
	"work-complete", {"teuton", MakeSound("basic-teuton-voices-work-complete", "teuton/bauer/work_complete.wav")},

	"research-complete", {"gnome", MakeSound("basic-gnome-voices-research-complete", "gnome/basic_voices/research-done-1.wav")}
)

DefineGameSounds(
	"not-enough-res", {"coal", "anglo-saxon", MakeSound("basic-anglo-saxon-voices-not-enough-coal", {"english/basic_voices/need_coal_01.wav", "english/basic_voices/need_coal_02.wav"})},
	"not-enough-res", {"coal", "dwarf", MakeSound("basic-dwarf-voices-not-enough-coal", "dwarf/basic_voices/need-coal.wav")},
	"not-enough-res", {"coal", "frankish", MakeSound("basic-frankish-voices-not-enough-coal", "teuton/basic_voices/not_enough_coal.wav")},
	"not-enough-res", {"coal", "germanic", MakeSound("basic-germanic-voices-not-enough-coal", "teuton/basic_voices/not_enough_coal.wav")},
	"not-enough-res", {"coal", "gnome", MakeSound("basic-gnome-voices-not-enough-coal", "gnome/basic_voices/need-coal.wav")},
	"not-enough-res", {"coal", "goblin", MakeSound("basic-goblin-voices-not-enough-coal", "goblin/basic_voices/need-coal.wav")},
	"not-enough-res", {"coal", "suebi", MakeSound("basic-suebi-voices-not-enough-coal", "teuton/basic_voices/not_enough_coal.wav")},
	"not-enough-res", {"coal", "teuton", MakeSound("basic-teuton-voices-not-enough-coal", "teuton/basic_voices/not_enough_coal.wav")},
	"not-enough-res", {"copper", "anglo-saxon", MakeSound("basic-anglo-saxon-voices-not-enough-copper", "english/basic_voices/need_copper.wav")},
	"not-enough-res", {"copper", "dwarf", MakeSound("basic-dwarf-voices-not-enough-gold", "dwarf/basic_voices/need-gold.wav")},
	"not-enough-res", {"copper", "frankish", MakeSound("basic-frankish-voices-not-enough-gold", "teuton/basic_voices/not_enough_gold.wav")},
	"not-enough-res", {"copper", "germanic", MakeSound("basic-germanic-voices-not-enough-gold", "teuton/basic_voices/not_enough_gold.wav")},
	"not-enough-res", {"copper", "gnome", MakeSound("basic-gnome-voices-not-enough-gold", "gnome/basic_voices/need-gold.wav")},
	"not-enough-res", {"copper", "goblin", MakeSound("basic-goblin-voices-not-enough-gold", "goblin/basic_voices/need-gold.wav")},
	"not-enough-res", {"copper", "suebi", MakeSound("basic-suebi-voices-not-enough-gold", "teuton/basic_voices/not_enough_gold.wav")},
	"not-enough-res", {"copper", "teuton", MakeSound("basic-teuton-voices-not-enough-gold", "teuton/basic_voices/not_enough_gold.wav")},
	"not-enough-res", {"lumber", "anglo-saxon", MakeSound("basic-anglo-saxon-voices-not-enough-lumber", "english/basic_voices/need_lumber.wav")},
	"not-enough-res", {"lumber", "dwarf", MakeSound("basic-dwarf-voices-not-enough-lumber", "dwarf/basic_voices/need-wood.wav")},
	"not-enough-res", {"lumber", "frankish", MakeSound("basic-frankish-voices-not-enough-lumber", "teuton/basic_voices/not_enough_lumber.wav")},
	"not-enough-res", {"lumber", "germanic", MakeSound("basic-germanic-voices-not-enough-lumber", "teuton/basic_voices/not_enough_lumber.wav")},
	"not-enough-res", {"lumber", "gnome", MakeSound("basic-gnome-voices-not-enough-lumber", "gnome/basic_voices/need-wood.wav")},
	"not-enough-res", {"lumber", "goblin", MakeSound("basic-goblin-voices-not-enough-lumber", "goblin/basic_voices/need-wood.wav")},
	"not-enough-res", {"lumber", "suebi", MakeSound("basic-suebi-voices-not-enough-lumber", "teuton/basic_voices/not_enough_lumber.wav")},
	"not-enough-res", {"lumber", "teuton", MakeSound("basic-teuton-voices-not-enough-lumber", "teuton/basic_voices/not_enough_lumber.wav")},
	"not-enough-res", {"stone", "anglo-saxon", MakeSound("basic-anglo-saxon-voices-not-enough-stone", "english/basic_voices/need_stone.wav")},
	"not-enough-res", {"stone", "dwarf", MakeSound("basic-dwarf-voices-not-enough-stone", "dwarf/basic_voices/need-stone.wav")},
	"not-enough-res", {"stone", "frankish", MakeSound("basic-frankish-voices-not-enough-stone", "teuton/basic_voices/not_enough_stone.wav")},
	"not-enough-res", {"stone", "germanic", MakeSound("basic-germanic-voices-not-enough-stone", "teuton/basic_voices/not_enough_stone.wav")},
	"not-enough-res", {"stone", "gnome", MakeSound("basic-gnome-voices-not-enough-stone", "gnome/basic_voices/need-stone.wav")},
	"not-enough-res", {"stone", "goblin", MakeSound("basic-goblin-voices-not-enough-stone", "goblin/basic_voices/need-stone.wav")},
	"not-enough-res", {"stone", "suebi", MakeSound("basic-suebi-voices-not-enough-stone", "teuton/basic_voices/not_enough_stone.wav")},
	"not-enough-res", {"stone", "teuton", MakeSound("basic-teuton-voices-not-enough-stone", "teuton/basic_voices/not_enough_stone.wav")},

	"not-enough-food", {"anglo-saxon", MakeSound("basic-anglo-saxon-voices-not-enough-food", "teuton/basic_voices/not_enough_food.wav")},
	"not-enough-food", {"dwarf", MakeSound("basic-dwarf-voices-not-enough-food", "dwarf/basic_voices/need-farms.wav")},
	"not-enough-food", {"frankish", MakeSound("basic-frankish-voices-not-enough-food", "teuton/basic_voices/not_enough_food.wav")},
	"not-enough-food", {"germanic", MakeSound("basic-germanic-voices-not-enough-food", "teuton/basic_voices/not_enough_food.wav")},
	"not-enough-food", {"gnome", MakeSound("basic-gnome-voices-not-enough-food", "gnome/basic_voices/need-farms.wav")},
	"not-enough-food", {"goblin", MakeSound("basic-goblin-voices-not-enough-food", "goblin/basic_voices/need-farms.wav")},
	"not-enough-food", {"suebi", MakeSound("basic-suebi-voices-not-enough-food", "teuton/basic_voices/not_enough_food.wav")},
	"not-enough-food", {"teuton", MakeSound("basic-teuton-voices-not-enough-food", "teuton/basic_voices/not_enough_food.wav")},

	"rescue", {"anglo-saxon", rescue},
	"rescue", {"castillian", rescue},
	"rescue", {"celt", rescue},
	"rescue", {"dwarf", rescue},
	"rescue", {"frankish", rescue},
	"rescue", {"french", rescue},
	"rescue", {"germanic", rescue},
	"rescue", {"gnome", rescue},
	"rescue", {"goblin", rescue},
	"rescue", {"goth", rescue},
	"rescue", {"greek", rescue},
	"rescue", {"italian", rescue},
	"rescue", {"kobold", rescue},
	"rescue", {"latin", rescue},
	"rescue", {"norse", rescue},
	"rescue", {"portuguese", rescue},
	"rescue", {"romanian", rescue},
	"rescue", {"suebi", rescue},
	"rescue", {"teuton", rescue}
)
