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

DefineUniqueItem("The Wedding Veil", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 31.
	Type = "unit-gold-deposit",
	Prefix = "upgrade-item-prefix-replenishing",
	Suffix = "upgrade-item-suffix-of-replenishment",
	ResourcesHeld = 200000,
	Background = "The Wedding Veil was a gold mine in Jilova owned by the Prague burgher Rotlev, who lived in the time of Charles IV. The mine was very profitable, but had begun to dry up. Strongly believing that it still contained much gold inside, Rotlev sold off more and more of his possessions to keep paying for the mining operations. Eventually, he had nothing left to sell. His wife then took a golden veil which he had given to her as a wedding gift, and told him to sell it. He hesitantly accepted. During the further week of mining the veil had paid for, vast gold veins were found in the mine. Rotlev was saved. He bought back his wife's veil, and the gold was so abundant that he became an even wealthier man than he had been previously. And thus the mine became known for the veil which saved its owner, receiving its name from it. With the mine's riches, Rotlev built a large house in Prague, which was later bought by the crown and became the Carolinum."
} )

DefineUniqueItem("Esel", { -- Source: Alena Ježková, "22 Böhmische Legenden", 2007, pp. 82-83.
	Type = "unit-silver-deposit",
	Prefix = "upgrade-item-prefix-replenishing",
	Suffix = "upgrade-item-suffix-of-diligence",
	ResourcesHeld = 200000,
	Background = "Esel was a very rich silver mine near Kuttenberg (Kutná Hora), in Bohemia. It was legendary for never having flooded, and it was said among the miners that as long as Esel was not filled with water, the silver mining near Kuttenberg would remain strong. In 1540, Esel suddenly began to flood, and by 1554 it was entirely submerged in water. The miners' prophecy turned true: soon after Esel's flood, the silver finds in the Kuttenberg area began to dwindle."
} )

DefineUniqueItem("Smitna", { -- Source: Alena Ježková, "22 Böhmische Legenden", 2007, p. 81.
	Type = "unit-silver-deposit",
	Prefix = "upgrade-item-prefix-industrious",
	Suffix = "upgrade-item-suffix-of-diligence",
	ResourcesHeld = 100000,
	Background = "Šmitna was a silver mine near Kuttenberg (Kutná Hora), in Bohemia. It was said to be inhabited by kobolds, who would warn the miners of which parts of the mine were unsafe to dig through. In 1509 Šmitna was flooded, resulting in the drowning of 18 miners - according to legend, they had been told not to dig at a certain place by the mine's kobolds, but such warnings went unheeded."
} )

DefineUniqueItem("Shorbear Hold", {
	Type = "unit-dwarven-stronghold",
	Prefix = "upgrade-item-prefix-impregnable",
	Suffix = "upgrade-item-suffix-of-the-colossus",
	Quote = "\"Everyone to the caves, and kill those still inside!\" - Durstorn, Norlund Chieftain"
} )

--[[
DefineUniqueItem("Carolinum", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 31.
	Type = "unit-teuton-university", -- could also be a library, or perhaps a temple
	Prefix = ?,
	Suffix = ?,
	Background = "The Carolinum was the seat of the Prague University. It was first built as a residence by the rich burgher Rotlev, being later acquired by the crown and transformed into a university seat.
} )

DefineUniqueItem("Castle of Zebrak", { -- Castle of Žebrák; Source: Alena Ježková, "77 Prague Legends", 2006, p. 52.
	Type = "unit-teuton-burg", -- should be a castle
	Prefix = ?,
	Suffix = ?
} )

DefineUniqueItem("Prague Castle", { -- Source: Alena Ježková, "77 Prague Legends", 2006, pp. 53, 61.
	Type = "unit-teuton-burg", -- should be a castle
	Prefix = ?,
	Suffix = ?
} )

DefineUniqueItem("Novy Hrad", { -- Nový Hrad; Source: Alena Ježková, "77 Prague Legends", 2006, p. 53.
	Type = "unit-teuton-burg", -- should be a castle
	Prefix = ?,
	Suffix = ?,
	Background = "\"Nový Hrad\" means \"new castle\" in Czech."
} )

DefineUniqueItem("Clementinum", { -- Alena Ježková, "77 Prague Legends", 2006, p. 54.
	Type = "unit-teuton-temple", -- should be limited to only churches
	Prefix = ?,
	Suffix = ?,
	Background = "The Clementinum was a large complex of buildings built by the Jesuit Order in Prague. It encompassed six courtyards, two churches and two chapels. The complex was abandoned by the Jesuits in 1773, when Pope Clement XV dissolved their order."
} )

DefineUniqueItem("Schwarzenberg Palace", { -- Located in Prague; Source: Alena Ježková, "77 Prague Legends", 2006, p. 62.
	Type = "unit-teuton-burg", -- should be a castle?
	Prefix = ?,
	Suffix = ?
} )

DefineUniqueItem("Daliborka", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 88.
	Type = "unit-teuton-watch-tower",
	Prefix = ?,
	Suffix = ?,
	Background = "Daliborka was a prison tower in Prague, named after its most renowned capative, Dalibor of Kozajedy."
} )

DefineUniqueItem("The White Tower", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 88.
	Type = "unit-teuton-watch-tower",
	Prefix = ?,
	Suffix = ?,
	Background = "The White Tower was a tower in Prague."
} )

DefineUniqueItem("Mihulka", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 88.
	Type = "unit-teuton-watch-tower",
	Prefix = ?,
	Suffix = ?,
	Background = "Mihulka was a tower in Prague."
} )

DefineUniqueItem("Ploskovice", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 88.
	Type = "unit-teuton-burg",
	Prefix = ?,
	Suffix = ?,
	Background = "Ploskovice was a stronghold near Litoměřice."
} )

DefineUniqueItem("Tyn Church", { -- Týn Church; Alena Ježková, "77 Prague Legends", 2006, p. 14.
	Type = "unit-teuton-temple", -- should be limited to only churches
	Prefix = ?,
	Suffix = ?,
	Background = "The Týn Church was a church in Prague."
} )

DefineUniqueItem("Ungelt", { -- Alena Ježková, "77 Prague Legends", 2006, p. 17.
	Type = "unit-teuton-market",
	Prefix = ?,
	Suffix = ?,
	Background = "Also known as the Týn Court, the Ungelt was the royal customs house in Prague."
} )

DefineUniqueItem("Rott", { -- Alena Ježková, "77 Prague Legends", 2006, p. 19.
	Type = "unit-teuton-smithy",
	Prefix = ?,
	Suffix = ?,
	Background = "The Rott ironmonger's shop was located in Prague."
} )

DefineUniqueItem("V Kotcich", { -- Alena Ježková, "77 Prague Legends", 2006, p. 32.
	Type = "unit-teuton-market",
	Prefix = ?,
	Suffix = ?,
	Background = "V Kotcich was a marketplace in Prague."
} )

DefineUniqueItem("The Lion Court", { -- Alena Ježková, "77 Prague Legends", 2006, p. 90.
	Type = "unit-teuton-stables",
	Prefix = ?,
	Suffix = ?,
	Background = "The Lion Court was a bestiary in Prague."
} )

DefineUniqueItem("Cernin Palace", { -- Alena Ježková, "77 Prague Legends", 2006, p. 94.
	Type = "unit-teuton-burg",
	Prefix = ?,
	Suffix = ?,
	Background = "The Černín Palace was built in the Loretánské Square in Prague for Humprecht Černín of Chudenice, the Holy Roman Empire's envoy to Venice."
} )
--]]

-- Unique houses in Prague
-- "House at Death"; Source: Alena Ježková, "77 Prague Legends", 2006, p. 35.
-- "House at the Golden Well"; Source: Alena Ježková, "77 Prague Legends", 2006, p. 42.
-- "House at the Three Bells"; Source: Alena Ježková, "77 Prague Legends", 2006, p. 71.
-- "House at the Three White Roses"; also known as House U Rotta (because of the Rott ironmonger's shop); Source: Alena Ježková, "77 Prague Legends", 2006, p. 19.
-- "The Chateau"; smallest house in the Golden Lane, which had once been inhabited by an elderly nobleman; Source: Alena Ježková, "77 Prague Legends", 2006, p. 93.

-- Unique streets in Prague
-- Tomášská Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 70.
-- Mostecká Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 72.
-- Karmelitská Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 74.
-- Liliová Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 21.
-- Řetězová Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 22.
-- Karlova Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 23.
-- Platnéřská Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 25.
-- Dlouhá Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 33.
-- Husourea Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 40.
-- Seminářská Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 42.
-- Komeiktská Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 58.
-- Karoliny Světle Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 58.
-- Nerudova Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 62.
-- Ostruhová Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 62.
-- Golden Lane (called Zlatá - "golden"); Source: Alena Ježková, "77 Prague Legends", 2006, p. 92.

-- Unique squares in Prague
-- Malé náměstí ("Small Square"); Source: Alena Ježková, "77 Prague Legends", 2006, p. 19.
-- Mariánské Square; Source: Alena Ježková, "77 Prague Legends", 2006, p. 26.
-- Loretánské Square; the Černín Palace was located in it; Source: Alena Ježková, "77 Prague Legends", 2006, p. 94.

-- Judita Bridge, unique bridge; first stone bridge built across the Vltava in Prague (built in 1158 at the orders of Judita, wife of Vladislav II); the bridge was 500m long, being the largest in Central Europe when built; the bridge was destroyed by a great flood in 1342; Source: Alena Ježková, "77 Prague Legends", 2006, p. 45.
-- Charles Bridge: built to replace Judita Bridge, had its foundation stone laid by Emperor and King Charles IV in the 9th of July 1357; its construction was entrusted to Petr Parléř, who had built St Vitus' Cathedral; the bridge had wine, raw eggs and cream cheese added to the mortar; Source: Alena Ježková, "77 Prague Legends", 2006, pp. 45-46.

-- Kunratice Forest (in or nearby Prague); Source: Alena Ježková, "77 Prague Legends", 2006, p. 53.
-- Petřín Hill (in or nearby Prague); Source: Alena Ježková, "77 Prague Legends", 2006, p. 61.
-- Jánský vršek ("John Hill"; in or nearby Prague); a Chapel of St John was located in this hill; Source: Alena Ježková, "77 Prague Legends", 2006, p. 65.
-- Kampa (river) (in or nearby Prague); Source: Alena Ježková, "77 Prague Legends", 2006, p. 69.
-- Vltava (river) (in or nearby Prague); Source: Alena Ježková, "77 Prague Legends", 2006, p. 32.
-- Kampa Park (in or neaby Prague); Source: Alena Ježková, "77 Prague Legends", 2006, p. 49.

-- "U Jezurů" ("At the Lakes"); night tavern in Prague frequented by prostitutes, which was said to be haunted by a hairy ghost who killed prostitutes near the tavern; Source: Alena Ježková, "77 Prague Legends", 2006, p. 58.

-- The Hunger Wall (wall in Prague); Source: Alena Ježková, "77 Prague Legends", 2006, p. 61.

-- Zikmund (unique bell in Prague); Source: Alena Ježková, "77 Prague Legends", 2006, p. 84.
