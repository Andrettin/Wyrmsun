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
--      (c) Copyright 2017-2018 by Andrettin
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

MakeSound("basic-latin-voices-ready", {
	"latin/basic_voices/civ_male_hello_1.wav"
})

MakeSound("basic-latin-voices-selected", {
	"latin/basic_voices/civ_male_my_lord_1.wav",
	"latin/basic_voices/civ_male_what_is_it_1.wav",
	"latin/basic_voices/civ_male_hello_1.wav"
})

MakeSound("basic-latin-voices-annoyed", {
	"latin/basic_voices/civ_male_my_lord_1.wav",
	"latin/basic_voices/civ_male_what_is_it_1.wav",
	"latin/basic_voices/civ_male_hello_1.wav"
})

MakeSoundGroup("basic-latin-voices-selected-group",
	"basic-latin-voices-selected", "basic-latin-voices-annoyed"
)

MakeSound("basic-latin-voices-acknowledge", {
	"latin/basic_voices/civ_male_walk_1.wav"
})

MakeSound("basic-latin-voices-attack", {
	"latin/basic_voices/civ_male_attack_1.wav",
	"latin/basic_voices/civ_male_fight_1.wav",
	"latin/basic_voices/civ_male_go_out_against_1.wav",
	"latin/basic_voices/civ_male_march_1.wav"
})

MakeSound("basic-latin-voices-build", {
	"latin/basic_voices/civ_male_build_1.wav"
})

MakeSound("basic-latin-voices-repair", {
	"latin/basic_voices/civ_male_repair_1.wav"
})

MakeSound("basic-latin-voices-harvest", {
	"latin/basic_voices/civ_male_gather_together_1.wav"
})

