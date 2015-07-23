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
--      encyclopedia_civilizations.lua - Defines the encyclopedia descriptions of civilizations
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

CivilizationsEncyclopedia = {
	Dwarf = {
		Name = _("~!Dwarf"),
		Description = _("Dwarves live in the world of Nidavellir, where gnomes, goblins and kobolds also dwell. They usually prefer living in mountainous terrain or underground, and build their dwellings mostly out of stone. Dwarves are particularly talented at smithing, and ownership of precious metals is a passion for many of them.")
	},
	Gnome = {
		Name = _("Gno~!me"),
		Description = _("Gnomes usually live in the hills and forests of Nidavellir, and often seek contact with nature. Although they have a different outlook on life than the dwarves, not rarely both two peoples live side by side, with gnomish minorities permeating dwarven settlements and vice-versa. These contacts have brought much benefit to both of them, both through trade and via the spread of gnomish technologies northwards.")
	},
	HumanCelt = {
		Name = _("Human - ~!Celt"),
		Description = _("During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. One group of Indo-Europeans spoke a dialect which would later develop into the Celtic and Italic languages. Celtic peoples occupied large swathes of Europe, from France to the Middle Danube. They had trade contacts with Greeks and Romans, and warred a number of times with the latter. Eventually, most Celts would be conquered and assimilated by other peoples, leaving only small areas where Celtic languages were still spoken.")
	},
	HumanGermanic = {
		Name = _("Human - ~!Germanic"),
		DevelopsTo = {_("Goth"), _("Norse"), _("Teuton")},
		Description = _("During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. Those who migrated to Scandinavia spoke their own dialect of Indo-European, which eventually would develop into Germanic. Contact with the Celtic peoples to their south was beneficial to the Germanics, as they were able to incorporate more advanced techniques from Central Europe in areas such as metalworking.")
	},
	HumanGreek = {
		Name = _("Human - G~!reek"),
		Description = _("During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. Those who migrated to Greece spoke their own dialect of Indo-European, which eventually would develop into Ancient Greek. Initially a backwater in comparison to the Near East, Greece would eventually become one of the main centers of civilization in antiquity, being widely renowned for the achievements of its people. The rise of the Macedonian empire spread the influence of Greek culture through much of the eastern Mediterranean, Persia, and beyond, and even after the Roman conquest Greek remained widely spoken (both as a mother tongue and as a lingua franca) in the eastern half of the Mediterranean.")
	},
	HumanGoth = {
		Name = _("Human - G~!oth"),
		DevelopsFrom = {_("Germanic")},
		Description = _("During the Iron Age, Germanic peoples split off into three different groups - the North Germanics (like the Danes and Swedes), the East Germanics (like the Goths and Vandals) and the West Germanics (like the Suebi, Saxons and Franks). The Goths and the Vandals played an important role in the wars and migrations of late antiquity, and apportioned a part of the Roman empire for themselves. The Visigoths (the Western Goths) settled in Spain and southern France, the Ostrogoths (the Eastern Goths) in Italy, and the Vandals in North Africa. Being a small minority relative to the populations they had conquered, eventually Goths and Vandals would assimilate into the local cultures.")
	},
	HumanLatin = {
		Name = _("Human - ~!Latin"),
		Description = _("During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. One group of Indo-Europeans spoke a dialect which would later develop into the Celtic and Italic languages. Latins were an Italic people who inhabited Central Italy and who founded many cities, one of them being Rome. With the expansion of consolidation of Roman power, most of Italy would be latinized, and eventually large areas of the Roman empire would speak Latin as their mother tongue.")
	},
	HumanNorse = {
		Name = _("Human - ~!Norse"),
		DevelopsFrom = {_("Germanic")},
		Description = _("During the Iron Age, Germanic peoples split off into three different groups - the North Germanics (like the Danes and Swedes), the East Germanics (like the Goths and Vandals) and the West Germanics (like the Suebi, Saxons and Franks). While late antiquity saw intense migration of Germanic peoples, the Danes and Swedes remained largely in Scandinavia, well beyond the developments of the Mediterranean.")
	},
	HumanTeuton = {
		Name = _("Human - ~!Teuton"),
		DevelopsFrom = {_("Germanic")},
		Description = _("During the Iron Age, Germanic peoples split off into three different groups - the North Germanics (like the Danes and Swedes), the East Germanics (like the Goths and Vandals) and the West Germanics (like the Suebi, Saxons and Franks). Eventually, West Germanic peoples would come to identify themselves with the demonym \"deutsch\", a term often latinized as \"teutonicus\".")
	},
	Kobold = {
		Name = _("~!Kobold"),
		Description = _("Kobolds live in deep caves in Nidavellir, and worship wyrms as sacred ancestors. They share the dwarven passion for mining and metals, but not their technological advancement. Although kobolds can be inventive, their isolation from other communities has made the spread of progress to their lands more difficult. Being the sole intelligent reptilian race in Nidavellir, they feel threatened by the presence of dwarves, gnomes and goblins - all of which they call \"breastlings\".")
	}
}

FactionsEncyclopedia = {
	AsaTribe = {
		Name = _("~!Asa Tribe (Germanic)"),
		Civilization = "germanic",
		Description = _("The Asa are the legendary progenitors of the Germanic peoples.")
	},
	EikinskjaldiClan = {
		Name = _("~!Eikinskjaldi Clan (Dwarf)"),
		Civilization = "dwarf",
		Description = _("The Eikinskjaldi clan traces its origins to Eikinskjaldi, a member of the legendary group of dwarves who migrated to the sandy plains of Joruvellir. One of Eikinskjaldi's descendants was Durahn, a mighty dwarven warlord who was buried in a rich tomb.")
	},
	MarcomanniTribe = {
		Name = _("~!Marcomanni Tribe (Teuton)"),
		Civilization = "teuton",
		Description = _("The Marcomanni were a Suebic tribe. Eventually they migrated to the east, settling in Bohemia and expelling the local Boii tribe. In the 2nd century they fought the terrible Marcomannic Wars against the Romans. The name \"Marcomanni\" means \"march-men\", or \"frontier-men\".")
	},
	ModsogningClan = {
		Name = _("M~!odsogning Clan (Dwarf)"),
		Civilization = "dwarf",
		Description = _("The Modsogning clan is one of the first dwarven clans ever known. It made its home in Svarinshaug, where they tamed the fierce forces of nature.")
	},
	NorlundClan = {
		Name = _("~!Norlund Clan (Dwarf)"),
		Civilization = "dwarf",
		Description = _("The Norlund clan has its origins in the Caverns of Chaincolt, and counts a number of skilled warriors and craftsmen amongst its ranks. Eventually the Norlund clan would unify much of dwarfdom into the Lordship of Knalga.")
	},
	ShinsplitterClan = {
		Name = _("Shinspli~!tter Clan (Dwarf)"),
		Civilization = "dwarf",
		Description = _("The warriors of the Shinsplitter clan are a wild bunch, and often go into frenzies during battle. In later times the Shinsplitters migrated east to the Highbrook Pass.")
	},
	ShorbearClan = {
		Name = _("Shor~!bear Clan (Dwarf)"),
		Civilization = "dwarf",
		Description = _("Contrary to many of the other dwarven clans, which prefer to live in mountains, the Shorbears have made their homes in the hills. They are known as excellent crafters of tools.")
	},
	SuebiTribe = {
		Name = _("~!Suebi Tribe (Teuton)"),
		Civilization = "teuton",
		Description = _("The Suebi were a powerful tribe in ancient Germania, battling the Romans a number of times. From the Suebi tribes such as the Marcomanni and the Quadi would originate. In the 5th century a group of Suebi settled and conquered Galicia, establishing a kingdom there.")
	}
}
