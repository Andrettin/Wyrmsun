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

MakeSound("basic-english-voices-ready", {
	"english/basic_voices/ready_01.wav",
	"english/basic_voices/ready_02.wav",
	"english/basic_voices/ready_03.wav"
})

MakeSound("basic-english-voices-selected", {
	"english/basic_voices/selected_01.wav",
	"english/basic_voices/selected_02.wav",
	"english/basic_voices/selected_03.wav",
	"english/basic_voices/selected_04.wav",
	"english/basic_voices/selected_05.wav"
})

MakeSound("basic-english-voices-annoyed", {
	"english/basic_voices/annoyed_01.wav",
	"english/basic_voices/annoyed_02.wav",
	"english/basic_voices/annoyed_03.wav",
	"english/basic_voices/annoyed_04.wav",
	"english/basic_voices/annoyed_05.wav",
	"english/basic_voices/to_be_or_not_to_be.wav",
	"english/basic_voices/alas_poor_yorick.wav",
	"english/basic_voices/my_kingdom_for_a_horse_extra.wav"
})

MakeSoundGroup("basic-english-voices-selected-group",
	"basic-english-voices-selected", "basic-english-voices-annoyed"
)

MakeSound("basic-english-voices-acknowledge", {
	"english/basic_voices/acknowledgement_01.wav",
	"english/basic_voices/acknowledgement_02.wav",
	"english/basic_voices/acknowledgement_03.wav",
	"english/basic_voices/acknowledgement_04.wav",
	"english/basic_voices/acknowledgement_05.wav"
})

MakeSound("basic-english-voices-help", {
	"english/basic_voices/help_01.wav",
	"english/basic_voices/help_02.wav"
})

MakeSound("basic-english-voices-help-town", {
	"english/basic_voices/help_town_01.wav",
	"english/basic_voices/help_town_02.wav"
})
