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
--      (c) Copyright 1999-2006 by Fabrice Rossi, Lutz Sammer, and Jimmy Salmon
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
MakeSound("basic-dwarf-voices-help", "misc/fanfare_short.wav")
MakeSound("basic-dwarf-voices-dead", {
	"dwarf/basic_voices/dead-1.wav",
	"dwarf/basic_voices/dead-2.wav"
})

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
	"gnome/basic_voices/acknowledge-04.wav"
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
	"gnome/herbalist/annoy-4.wav",
	"gnome/herbalist/annoy-5.wav"
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
MakeSound("basic-goblin-voices-dead", {
	"goblin/basic_voices/goblin-die-1.wav",
	"goblin/basic_voices/goblin-die-2.wav"
})

------------------------------------------------------------------------------
--	Define unit-specific goblin sounds.
--
MakeSound("goblin-worker-ready", {
	"goblin/worker/goblin-worker-ready-1.wav",
	"goblin/worker/goblin-worker-ready-2.wav"
})
MakeSound("goblin-impaler-ready", "goblin/impaler/goblin-impaler-ready.wav")
MakeSound("goblin-archer-ready", "goblin/archer/goblin-archer-ready.wav")
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

------------------------------------------------------------------------------
--	Define simple kobold sounds.
--
MakeSound("basic-kobold-voices-dead", "neutral/hiss_death.wav")

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
MakeSound("building destroyed",
	{"misc/building_explosion/1.wav",
	"misc/building_explosion/2.wav"})
MakeSound("axe-attack",
	"missiles/axe.wav"
)
MakeSound("bite-attack",
	"missiles/bite.wav"
)
MakeSound("claw-attack",
	"missiles/claws.wav"
)
MakeSound("club-attack",
	"missiles/club.wav"
)
MakeSound("dagger-attack",
	"missiles/dagger.wav"
)
MakeSound("dart-attack",
	"missiles/dart.wav"
)
MakeSound("fist-attack",
	"missiles/fist.wav"
)
MakeSound("mace-attack",
	"missiles/mace.wav"
)
MakeSound("spear-attack",
	{"missiles/spear-1.wav",
	"missiles/spear-2.wav"}
)
MakeSound("spear-miss",
	"missiles/spear-miss.wav"
)
MakeSound("squishy-attack",
	"missiles/squishy_strike.wav"
)
MakeSound("squishy-miss",
	"missiles/squishy_miss.wav"
)
MakeSound("sword-attack",
	"missiles/sword.wav"
)
MakeSound("bow", "missiles/bow.wav")
MakeSound("bow-hit", "missiles/bow_hit.wav")
MakeSound("throwing-axe", "missiles/throwing_axe.wav")
MakeSound("throwing-axe-hit", "missiles/throwing_axe_hit.wav")

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

MakeSound("tree-chopping",
	{"misc/tree_chopping/tree-chopping-1.wav",
	"misc/tree_chopping/tree-chopping-2.wav"}
)
SetSoundRange("tree-chopping", 32)

MakeSound("gold-coins", "misc/gold_coins.wav")
MakeSound("heal", "misc/heal.wav")
MakeSound("open-chest", "misc/open_chest.wav")
MakeSound("potion", "misc/potion.wav")
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
MakeSound("rat-dead", "neutral/rat_death.wav")
MakeSound("gryphon-ready", {
	"neutral/gryphon/gryphon_shriek_1.wav",
	"neutral/gryphon/gryphon_shriek_2.wav"
})
MakeSound("gryphon-dead", {
	"neutral/gryphon/gryphon_death_1.wav",
	"neutral/gryphon/gryphon_death_2.wav"
})
MakeSound("squishy-hit", "neutral/squishy_hit.wav")
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
MakeSound("yale-acknowledge", {
	"neutral/yale/yale_ack01.wav",
	"neutral/yale/yale_ack02.wav",
	"neutral/yale/yale_ack03.wav"
})
MakeSound("yale-dead", "neutral/yale/yaledead.wav")

--	Define sounds used by game
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

--  "work-complete", {"dwarf", MakeSound("basic-dwarf-voices-work-complete", "dwarf/basic_voices/work_complete.wav")},
  "work-complete", {"gnome", MakeSound("basic-gnome-voices-work-complete", "gnome/basic_voices/done-01.wav")},

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