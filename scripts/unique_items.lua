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

DefineUniqueItem("Brimir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 102.
	Type = "unit-broad-sword",
	Prefix = "upgrade-item-prefix-penetrating",
	Suffix = "upgrade-item-suffix-of-victory",
	Background = "Brimir was described in Norse mythology as being the best of swords.",
	Quote = "\"Of all the gods | is Odin the greatest, / And Sleipnir the best of steeds; / Bifrost of bridges, | Bragi of skalds, / Hobrok of hawks, | Garm of hounds, / and Brimir of swords.\" - Grimnismol"
} )

DefineUniqueItem("Laevatein", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 124; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 245.
	Type = "unit-broad-sword",
	Prefix = "upgrade-item-prefix-wounding",
	Suffix = "upgrade-item-suffix-of-slaughter",
	Background = "In Norse mythology, Laevatein (\"the Wounding Wand\") was a sword forged by Loki with runes at the doors of Niflheim, and was placed under nine locks in Laegjarn's chest, with Sinmora guarding over it.",
	Quote = "\"Laevatein is there | that Lopt with runes / Once made by the doors of death; / In Laegjarn's chest | by Sinmora lies it, / And nine locks fasten it firm.\" - Svipdagsmol"
} )

DefineUniqueItem("Gram", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 351, 365.
	Type = "unit-spatha",
	Prefix = "upgrade-item-prefix-wounding",
	Suffix = "upgrade-item-suffix-of-victory",
	Background = "In Norse mythology, Gram was the sword given by Odin to Sigmund. Being later broken into pieces, the sword was reforged by Regin for Sigurd.",
--	Quote = "\"My kin, methinks, | is unknown to thee, / And so am I myself; / Sigurd my name, | and Sigmund's son, / Who smote thee thus with the sword.\" - Fafnismol"
	Quote = "\"With thy sword between, | three nights thou sleepest / With her thou winnest | for Gunnar's wife.\" - Gripisspo"
} )

DefineUniqueItem("Hrotti", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 385.
	Type = "unit-spatha",
	Prefix = "upgrade-item-prefix-penetrating",
	Suffix = "upgrade-item-suffix-of-perfuration",
	Background = "In Norse mythology, Hrotti (\"Thruster\") was Fafnir's sword, which was taken by Sigurd.",
	Quote = "\"There he found a mighty store of gold, and he filled two chests full thereof; he took the fear-helm and a golden mail-coat and the sword Hrotti, and many other precious things.\" - Fafnismol"
} )

DefineUniqueItem("Rithil", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 380.
	Type = "unit-spatha",
	Prefix = "upgrade-item-prefix-swift",
	Suffix = "upgrade-item-suffix-of-betrayal",
	Background = "In Norse mythology, Rithil (\"Swift-Moving\") was Regin's sword, which he used to slay his brother Fafnir. One source gives the alternate name Refil (\"Serpent\") for the sword.",
	Quote = "\"Then Regin went up to Fafnir and cut out his heart with his sword, that was named Rithil, and then he drank blood from the wounds.\" - Fafnismol"
} )

DefineUniqueItem("The Hammer of Thursagan", {
	Type = "unit-hammer",
	Prefix = "upgrade-item-prefix-flaming",
	Suffix = "upgrade-item-suffix-of-victory",
--	Quote = "\"The very tool with which our greatest runesmith made the Scepter of Fire. But it is ancient, far older than Thursagan; he was but the last to wield it, and our oldest histories hint that this very hammer was used to forge the dwarves themselves in the heart of the earth.\" - Angarthing"
	Quote = "\"The very tool with which our greatest runesmith made the Scepter of Fire. But it is ancient, far older than Thursagan; he was but the last to wield it.\" - Angarthing"
} )

DefineUniqueItem("Toporik", { -- name means "hatchet" in Russian; renaming of the Axe of Perun (Perun is a god from Slavic mythology), here made into a dwarven unique throwing axe (since it wouldn't make much sense for the dwarves to have a throwing axe named after a god from a human mythology); was made a dwarven item under the following premise: many scholars associate the Axe of Perun with Thor's Mjollnir hammer in function and origin, and the latter was made by dwarves
	Type = "unit-bearded-throwing-axe",
	Prefix = "upgrade-item-prefix-storm",
	Suffix = "upgrade-item-suffix-of-victory",
	Background = "In Slavic mythology, the god Perun wielded a throwing axe. Perun's axe has often been identified with Thor's Mjollnir hammer in function and origin. The name Toporik means \"hatchet\" in Russian.",
	Quote = "\"The wise Hroptatyr / Has nine sons: / Three strike, three thunder, / Three lighten.\" - Dwarven Traditional Poetry" -- Source: W. R. S. Ralston, "Songs of the Russian People", 1872, p. 90.
} )

DefineUniqueItem("Svalin", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 63; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 100.
	Type = "unit-bronze-shield",
	Prefix = "upgrade-item-prefix-impregnable",
	Suffix = "upgrade-item-suffix-of-extinguishment",
	Background = "In Norse mythology, Svalin (\"the Cooling\") was the shield which stood in front of the sun, protecting the mountains and the sea from burning in flames.",
	Quote = "\"In front of the sun | does Svalin stand, / The shield for the shining god; / Mountains and sea | would be set in flames / If it fell from before the sun.\" - Grimnismol"
} )

DefineUniqueItem("Brisingamen", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 177.
	Type = "unit-amulet",
	Prefix = "upgrade-item-prefix-flaming",
	Suffix = "upgrade-item-suffix-of-swiftness",
	Background = "In Norse mythology, Brisingamen (\"The Necklace of the Brisings\") was a golden necklace crafted by the four dwarven smiths known as the Brisings for the goddess Freyja.",
	Quote = "\"The dwelling great | of the dwarves was shaken, / And burst was the mighty | Brisings' necklace.\" - Dwarven Traditional Poetry"
} )

DefineUniqueItem("Andvaranaut", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 114, 360; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 21.
	Type = "unit-ring",
	Prefix = "upgrade-item-prefix-vicious",
	Suffix = "upgrade-item-suffix-of-betrayal",
	Background = "In Norse mythology, Andvaranaut (\"Andvari's Booty\") was a gold ring owned by Andvari and forcibly taken from him by Loki. Upon the ring's theft, Andvari cursed whoever would come to own it. The ring had the power to make gold.",
	Quote = "\"Now shall the gold | that I once had / Bring their death | to warriors twain, / And evil be | for heroes eight; / Joy of my wealth | shall no dwarf win.\" - Reginsmol"
} )

DefineUniqueItem("Draupnir", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 241; Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 114.
	Type = "unit-ring",
	Prefix = "upgrade-item-prefix-flaming",
	Suffix = "upgrade-item-suffix-of-power",
	Background = "In Norse mythology, Draupnir (\"Dropper\") was a gold arm-ring crafted by the dwarves Brokk and Eitri for the Aesir. Eight rings with the same weight in gold as Draupnir dropped from it every ninth night. Draupnir was burned with Odin's son Balder in his funeral pyre.",
	Quote = "\"The ring I wish not, | though burned it was / Of old with Modsognir's son; / In my home | is no lack of gold / In the wealth my father wields.\" - Dwarven Traditional Poetry"
} )
