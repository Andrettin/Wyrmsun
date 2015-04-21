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
--      sound.lua - Define the used sounds.
--
--      (c) Copyright 1999-2015 by Fabrice Rossi, Lutz Sammer, Jimmy Salmon and Andrettin
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
--	Music part

------------------------------------------------------------------------------
--	MusicStopped is called if the current music is finished.
--
--		This is a random music player demo
--

function MusicStopped()
  while (table.getn(wyrmsun.playlist) ~= 0) do
    local num = math.random(table.getn(wyrmsun.playlist))
    if (PlayMusic(wyrmsun.playlist[num]) == 0) then return end
    table.remove(wyrmsun.playlist, num)
  end
end

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
	"basic-dwarf-voices-selected", "basic-dwarf-voices-annoyed")
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
MakeSound("smithy-selected", "buildings/sel_blacksmith.wav")
MakeSound("yale-pen-selected", "buildings/yalepen.wav")
SetSoundVolumePercent("yale-pen-selected", 50)
MakeSound("fortress-selected", "buildings/sel_fortress.wav")
MakeSound("tower-selected", "buildings/sel_tower.wav")

MakeSound("town-hall-ready", "buildings/complete_civ_center.wav")
MakeSound("farm-ready", "buildings/complete_farmstead.wav")
MakeSound("corral-ready", "buildings/complete_corral.wav")
MakeSound("barracks-ready", "buildings/complete_barracks.wav")
MakeSound("storehouse-ready", "buildings/complete_storehouse.wav")
MakeSound("smithy-ready", "buildings/complete_blacksmith.wav")
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

MakeSound("attack-miss",
	{"missiles/miss-1.wav",
	"missiles/miss-2.wav",
	"missiles/miss-3.wav"}
)

MakeSound("construction-stone", {
	"misc/construction/con_stone_10.wav",
	"misc/construction/con_stone_11.wav"
} )

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

MakeSound("step-grass", {
	"movement/step_grass/fs_grass8.wav",
	"movement/step_grass/fs_grass1.wav",
	"movement/step_grass/fs_grass2.wav",
	"movement/step_grass/fs_grass3.wav",
	"movement/step_grass/fs_grass4.wav",
	"movement/step_grass/fs_grass5.wav",
	"movement/step_grass/fs_grass6.wav",
	"movement/step_grass/fs_grass7.wav"
})
SetSoundRange("step-grass", 32)
SetSoundVolumePercent("step-grass", 50)

MakeSound("step-rock", {
	"movement/step_rock/fs_rock8.wav",
	"movement/step_rock/fs_rock1.wav",
	"movement/step_rock/fs_rock2.wav",
	"movement/step_rock/fs_rock3.wav",
	"movement/step_rock/fs_rock4.wav",
	"movement/step_rock/fs_rock5.wav",
	"movement/step_rock/fs_rock6.wav",
	"movement/step_rock/fs_rock7.wav"
})
SetSoundRange("step-rock", 32)
SetSoundVolumePercent("step-rock", 50)

MakeSound("gold-coins", "misc/gold_coins.wav")
SetSoundRange("gold-coins", 32)
MakeSound("heal", "misc/heal.wav")
MakeSound("open-chest", "misc/open_chest.wav")
SetSoundRange("open-chest", 32)
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
MakeSound("bird-dead", {
	"neutral/bird/deadbird.wav",
	"neutral/bird/deadbird2.wav"
})
MakeSound("bat-selected", "neutral/bat_flapping.wav")
MakeSound("yale-selected", {
	"neutral/yale/yale_select01.wav",
	"neutral/yale/yale_select02.wav"
})
SetSoundVolumePercent("yale-selected", 50)
MakeSound("yale-acknowledge", {
	"neutral/yale/yale_ack01.wav",
	"neutral/yale/yale_ack02.wav",
	"neutral/yale/yale_ack03.wav"
})
MakeSound("yale-dead", "neutral/yale/yaledead.wav")
SetSoundRange("yale-dead", 32)

--	Define sounds used by the game
--
DefineGameSounds(

  "placement-error", {"celt", placement_error},
  "placement-error", {"dwarf", placement_error},
  "placement-error", {"germanic", placement_error},
  "placement-error", {"gnome", placement_error},
  "placement-error", {"goblin", placement_error},
  "placement-error", {"goth", placement_error},
  "placement-error", {"greek", placement_error},
  "placement-error", {"kobold", placement_error},
  "placement-error", {"latin", placement_error},
  "placement-error", {"norse", placement_error},
  "placement-error", {"teuton", placement_error},

  "placement-success", {"celt", placement_success},
  "placement-success", {"dwarf", placement_success},
  "placement-success", {"germanic", placement_success},
  "placement-success", {"gnome", placement_success},
  "placement-success", {"goblin", placement_success},
  "placement-success", {"goth", placement_success},
  "placement-success", {"greek", placement_success},
  "placement-success", {"kobold", placement_success},
  "placement-success", {"latin", placement_success},
  "placement-success", {"norse", placement_success},
  "placement-success", {"teuton", placement_success},

  "click", sound_click,
--  "transport-docking", transport_docking,
  "chat-message", sound_click,

  "building-construction", {"celt", building_construction},
  "building-construction", {"dwarf", building_construction},
  "building-construction", {"germanic", building_construction},
  "building-construction", {"gnome", building_construction},
  "building-construction", {"goblin", building_construction},
  "building-construction", {"goth", building_construction},
  "building-construction", {"greek", building_construction},
  "building-construction", {"kobold", building_construction},
  "building-construction", {"latin", building_construction},
  "building-construction", {"norse", building_construction},
  "building-construction", {"teuton", building_construction},

  "work-complete", {"dwarf", MakeSound("basic-dwarf-voices-work-complete", "dwarf/miner/work-done.wav")},
  "work-complete", {"gnome", MakeSound("basic-gnome-voices-work-complete", "gnome/basic_voices/done-01.wav")},
  "work-complete", {"goblin", MakeSound("basic-goblin-voices-work-complete", "goblin/worker/built.wav")},

  "research-complete", {"gnome", MakeSound("basic-gnome-voices-research-complete", "gnome/basic_voices/research-done-1.wav")},

  "not-enough-res", {"coal", "dwarf", MakeSound("basic-dwarf-voices-not-enough-coal", "dwarf/basic_voices/need-coal.wav")},
  "not-enough-res", {"coal", "gnome", MakeSound("basic-gnome-voices-not-enough-coal", "gnome/basic_voices/need-coal.wav")},
  "not-enough-res", {"coal", "goblin", MakeSound("basic-goblin-voices-not-enough-coal", "goblin/basic_voices/need-coal.wav")},
  "not-enough-res", {"gold", "dwarf", MakeSound("basic-dwarf-voices-not-enough-gold", "dwarf/basic_voices/need-gold.wav")},
  "not-enough-res", {"gold", "gnome", MakeSound("basic-gnome-voices-not-enough-gold", "gnome/basic_voices/need-gold.wav")},
  "not-enough-res", {"gold", "goblin", MakeSound("basic-goblin-voices-not-enough-gold", "goblin/basic_voices/need-gold.wav")},
  "not-enough-res", {"lumber", "dwarf", MakeSound("basic-dwarf-voices-not-enough-lumber", "dwarf/basic_voices/need-wood.wav")},
  "not-enough-res", {"lumber", "gnome", MakeSound("basic-gnome-voices-not-enough-lumber", "gnome/basic_voices/need-wood.wav")},
  "not-enough-res", {"lumber", "goblin", MakeSound("basic-goblin-voices-not-enough-lumber", "goblin/basic_voices/need-wood.wav")},
  "not-enough-res", {"stone", "dwarf", MakeSound("basic-dwarf-voices-not-enough-stone", "dwarf/basic_voices/need-stone.wav")},
  "not-enough-res", {"stone", "gnome", MakeSound("basic-gnome-voices-not-enough-stone", "gnome/basic_voices/need-stone.wav")},
  "not-enough-res", {"stone", "goblin", MakeSound("basic-goblin-voices-not-enough-stone", "goblin/basic_voices/need-stone.wav")},

  "not-enough-food", {"dwarf", MakeSound("basic-dwarf-voices-not-enough-food", "dwarf/basic_voices/need-farms.wav")},
  "not-enough-food", {"gnome", MakeSound("basic-gnome-voices-not-enough-food", "gnome/basic_voices/need-farms.wav")},
  "not-enough-food", {"goblin", MakeSound("basic-goblin-voices-not-enough-food", "goblin/basic_voices/need-farms.wav")},

  "rescue", {"celt", rescue},
  "rescue", {"dwarf", rescue},
  "rescue", {"germanic", rescue},
  "rescue", {"gnome", rescue},
  "rescue", {"goblin", rescue},
  "rescue", {"goth", rescue},
  "rescue", {"greek", rescue},
  "rescue", {"kobold", rescue},
  "rescue", {"latin", rescue},
  "rescue", {"norse", rescue},
  "rescue", {"teuton", rescue}
)