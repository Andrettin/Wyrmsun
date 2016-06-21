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
--      (c) Copyright 2015-2016 by Andrettin
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

if (OldDefineUniqueItem == nil) then
	OldDefineUniqueItem = DefineUniqueItem
end

function DefineUniqueItem(unique_item, data)
	if (data.Type ~= nil) then
		OldDefineUniqueItem(unique_item, {Type = data.Type})
		data.Type = nil
	end
	
	OldDefineUniqueItem(unique_item, data)
end

DefineUniqueItem("brimir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 102.
	Name = "Brimir",
	Type = "unit-broad-sword",
	Prefix = "upgrade-item-prefix-penetrating",
	Suffix = "upgrade-item-suffix-of-victory",
	Background = "Brimir was described in Norse mythology as being the best of swords.",
	Quote = "\"Of all the gods is Odin the greatest,\nAnd Sleipnir the best of steeds;\nBifrost of bridges, Bragi of skalds,\nHobrok of hawks, Garm of hounds,\nand Brimir of swords.\"\n- Grimnismol (Grimnir)"
} )

DefineUniqueItem("laevatein", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 124; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 245.
	Name = "Laevatein",
	Type = "unit-broad-sword",
	Prefix = "upgrade-item-prefix-wounding",
	Suffix = "upgrade-item-suffix-of-slaughter",
	Background = "In Norse mythology, Laevatein (\"the Wounding Wand\") was a sword forged by Loki with runes at the doors of Niflheim, and was placed under nine locks in Laegjarn's chest, with Sinmora guarding over it.",
	Quote = "\"Laevatein is there that Lopt with runes\nOnce made by the doors of death;\nIn Laegjarn's chest by Sinmora lies it,\nAnd nine locks fasten it firm.\"\n- Svipdagsmol (Fjolsvith)"
} )

DefineUniqueItem("gram", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 351, 365.
	Name = "Gram",
	Type = "unit-frankish-spatha",
	Prefix = "upgrade-item-prefix-wounding",
	Suffix = "upgrade-item-suffix-of-victory",
	Background = "In Norse mythology, Gram was the sword given by Odin to Sigmund. Being later broken into pieces, the sword was reforged by Regin for Sigurd.",
--	Quote = "\"My kin, methinks, is unknown to thee,\nAnd so am I myself;\nSigurd my name, and Sigmund's son,\nWho smote thee thus with the sword.\"\n- Fafnismol (Sigurd)"
	Quote = "\"With thy sword between, three nights thou sleepest\nWith her thou winnest for Gunnar's wife.\"\n- Gripisspo (Gripir)"
} )

DefineUniqueItem("hrotti", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 385.
	Name = "Hrotti",
	Type = "unit-spatha",
	NameElements = {"word", "dwarven", "noun", "Hrotti"},
	Prefix = "upgrade-item-prefix-penetrating",
	Suffix = "upgrade-item-suffix-of-perfuration",
	Background = "In Norse mythology, Hrotti (\"Thruster\") was Fafnir's sword, which was taken by Sigurd.",
	Quote = "\"There he found a mighty store of gold, and he filled two chests full thereof; he took the fear-helm and a golden mail-coat and the sword Hrotti, and many other precious things.\"\n- Fafnismol"
--	Quote = "\"There Sigurd found a mighty store of gold, and he filled two chests full thereof; he took the fear-helm and a golden mail-coat and the sword Hrotti, and many other precious things.\"\n- Fafnismol" -- original
} )

DefineUniqueItem("rithil", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 380.
	Name = "Rithil",
	Type = "unit-spatha",
	NameElements = {"word", "dwarven", "adjective", "Rithil"},
	Prefix = "upgrade-item-prefix-swift",
	Suffix = "upgrade-item-suffix-of-betrayal",
	Background = "In Norse mythology, Rithil (\"Swift-Moving\") was Regin's sword, which he used to slay his brother Fafnir. One source gives the alternate name Refil (\"Serpent\") for the sword.",
	Quote = "\"Then Regin went up to Fafnir and cut out his heart with his sword, that was named Rithil, and then he drank blood from the wounds.\"\n- Fafnismol"
} )

DefineUniqueItem("the-hammer-of-thursagan", {
	Name = "The Hammer of Thursagan",
	Type = "unit-hammer",
	Prefix = "upgrade-item-prefix-flaming",
	Suffix = "upgrade-item-suffix-of-victory",
--	Quote = "\"The very tool with which our greatest runesmith made the Scepter of Fire. But it is ancient, far older than Thursagan; he was but the last to wield it, and our oldest histories hint that this very hammer was used to forge the dwarves themselves in the heart of the earth.\"\n- Angarthing"
	Quote = "\"The very tool with which our greatest runesmith made the Scepter of Fire. But it is ancient, far older than Thursagan; he was but the last to wield it.\"\n- Angarthing"
} )

DefineUniqueItem("toporik", { -- name means "hatchet" in Russian; renaming of the Axe of Perun (Perun is a god from Slavic mythology), here made into a dwarven unique throwing axe (since it wouldn't make much sense for the dwarves to have a throwing axe named after a god from a human mythology); was made a dwarven item under the following premise: many scholars associate the Axe of Perun with Thor's Mjollnir hammer in function and origin, and the latter was made by dwarves
	Name = "Toporik",
	Type = "unit-bearded-throwing-axe",
	Prefix = "upgrade-item-prefix-storm",
	Suffix = "upgrade-item-suffix-of-victory",
	Background = "In Slavic mythology, the god Perun wielded a throwing axe. Perun's axe has often been identified with Thor's Mjollnir hammer in function and origin. The name Toporik means \"hatchet\" in Russian.",
	Quote = "\"The wise Vingthor\nHas nine sons:\nThree strike, three thunder,\nThree lighten.\"\n- Dwarven Traditional Poetry" -- Source: W. R. S. Ralston, "Songs of the Russian People", 1872, p. 90.
} )

DefineUniqueItem("svalin", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 63; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 100.
	Name = "Svalin",
	Type = "unit-bronze-shield",
	Prefix = "upgrade-item-prefix-impregnable",
	Suffix = "upgrade-item-suffix-of-extinguishment",
	Background = "In Norse mythology, Svalin (\"the Cooling\") was the shield which stood in front of the sun, protecting the mountains and the sea from burning in flames.",
	Quote = "\"In front of the sun does Svalin stand,\nThe shield for the shining god;\nMountains and sea would be set in flames\nIf it fell from before the sun.\"\n- Grimnismol (Grimnir)"
} )

DefineUniqueItem("brisingamen", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 177.
	Name = "Brisingamen",
	Type = "unit-amulet",
	NameElements = {
		"compound", "prefix", "dwarven", "noun", "singular", "genitive", "Brising",
		"compound", "suffix", "dwarven", "noun", "singular", "Men"
	},
	Prefix = "upgrade-item-prefix-flaming",
	Suffix = "upgrade-item-suffix-of-swiftness",
	Background = "In Norse mythology, Brisingamen (\"The Necklace of the Brisings\") was a golden necklace crafted by four dwarven smiths for the goddess Freyja.",
	Quote = "\"The dwelling great of the dwarves was shaken,\nAnd burst was the mighty Brisings' necklace.\"\n- Dwarven Traditional Poetry"
} )

DefineUniqueItem("andvaranaut", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 114, 360; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 21.
	Name = "Andvaranaut",
	Type = "unit-ring",
	NameElements = {
		"compound", "prefix", "dwarven", "noun", "singular", "genitive", "Andvari",
		"compound", "suffix", "dwarven", "noun", "singular", "Naut"
	},
	Prefix = "upgrade-item-prefix-vicious",
	Suffix = "upgrade-item-suffix-of-betrayal",
	Background = "In Norse mythology, Andvaranaut (\"Andvari's Booty\") was a gold ring owned by Andvari and forcibly taken from him by Loki. Upon the ring's theft, Andvari cursed whoever would come to own it. The ring had the power to make gold.",
	Quote = "\"Now shall the gold that I once had\nBring their death to warriors twain,\nAnd evil be for heroes eight;\nJoy of my wealth shall no dwarf win.\"\n- Reginsmol (Andvari)"
} )

DefineUniqueItem("draupnir", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 241; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 114.
	Name = "Draupnir",
	Type = "unit-ring",
	NameElements = {"word", "dwarven", "noun", "Draupnir"},
	Prefix = "upgrade-item-prefix-flaming",
	Suffix = "upgrade-item-suffix-of-power",
	Background = "In Norse mythology, Draupnir (\"Dropper\") was a gold arm-ring crafted by the dwarves Brokk and Eitri for the Aesir. Eight rings with the same weight in gold as Draupnir dropped from it every ninth night. Draupnir was burned with Odin's son Balder in his funeral pyre.",
	Quote = "\"The ring I wish not, though burned it was\nOf old with Hroptatyr's son;\nIn my home is no lack of gold\nIn the wealth my father wields.\"\n- Dwarven Traditional Poetry"
} )

DefineUniqueItem("the-wedding-veil", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 31.
	Name = "The Wedding Veil",
	Type = "unit-gold-deposit",
	Prefix = "upgrade-item-prefix-replenishing",
	Suffix = "upgrade-item-suffix-of-replenishment",
	ResourcesHeld = 200000,
	Background = "The Wedding Veil was a gold mine in Jilova owned by the Prague burgher Rotlev, who lived in the time of Charles IV. The mine was very profitable, but had begun to dry up. Strongly believing that it still contained much gold inside, Rotlev sold off more and more of his possessions to keep paying for the mining operations. Eventually, he had nothing left to sell. His wife then took a golden veil which he had given to her as a wedding gift, and told him to sell it. He hesitantly accepted. During the further week of mining the veil had paid for, vast gold veins were found in the mine. Rotlev was saved. He bought back his wife's veil, and the gold was so abundant that he became an even wealthier man than he had been previously. And thus the mine became known for the veil which saved its owner, receiving its name from it. With the mine's riches, Rotlev built a large house in Prague, which was later bought by the crown and became the Carolinum."
} )

DefineUniqueItem("esel", { -- Source: Alena Ježková, "22 Böhmische Legenden", 2007, pp. 82-83.
	Name = "Esel",
	Type = "unit-silver-deposit",
	Prefix = "upgrade-item-prefix-replenishing",
	Suffix = "upgrade-item-suffix-of-diligence",
	ResourcesHeld = 200000,
	Background = "Esel was a very rich silver mine near Kuttenberg (Kutná Hora), in Bohemia. It was legendary for never having flooded, and it was said among the miners that as long as Esel was not filled with water, the silver mining near Kuttenberg would remain strong. In 1540, Esel suddenly began to flood, and by 1554 it was entirely submerged in water. The miners' prophecy turned true: soon after Esel's flood, the silver finds in the Kuttenberg area began to dwindle."
} )

DefineUniqueItem("smitna", { -- Source: Alena Ježková, "22 Böhmische Legenden", 2007, p. 81.
	Name = "Smitna",
	Type = "unit-silver-deposit",
	Prefix = "upgrade-item-prefix-industrious",
	Suffix = "upgrade-item-suffix-of-diligence",
	ResourcesHeld = 100000,
	Background = "Šmitna was a silver mine near Kuttenberg (Kutná Hora), in Bohemia. It was said to be inhabited by kobolds, who would warn the miners of which parts of the mine were unsafe to dig through. In 1509 Šmitna was flooded, resulting in the drowning of 18 miners - according to legend, they had been told not to dig at a certain place by the mine's kobolds, but such warnings went unheeded."
} )

DefineUniqueItem("shorbear-hold", {
	Name = "Shorbear Hold",
	Type = "unit-dwarven-stronghold",
	Prefix = "upgrade-item-prefix-impregnable",
	Suffix = "upgrade-item-suffix-of-the-colossus",
	Quote = "\"Everyone to the caves, and kill those still inside!\"\n- Durstorn, Norlund Chieftain"
} )

DefineUniqueItem("skidbladnir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 101.
	Name = "Skidbladnir",
	Type = "unit-dwarven-transport-ship",
--	NameElements = {
--		"compound", "prefix", "dwarven", "noun", "Skid",
--		"compound", "suffix", "dwarven", "adjective", "Bladnir"
--	},
	Prefix = "upgrade-item-prefix-impregnable",
	Suffix = "upgrade-item-suffix-of-swiftness",
	Description = "Skidbladnir was a ship built by the sons of Ivaldi for Modsognir. Its magnificent sail provided the sleek ship with great speed.",
--	Quote = "\"In days of old did Ivaldi's sons\nSkidbladnir fashion fair,\nThe best of ships for the bright god Frey,\nThe noble son of Njord.\"\n- Grimnismol", -- original version
	Quote = "\"In days of old did Ivaldi's sons\nSkidbladnir fashion fair,\nThe best of ships for the mighty Modsognir,\nThe noble son of the earth.\"\n- Dwarven Traditional Poetry",
	Background = "Skidbladnir appeared in Norse mythology as a ship crafted by the sons of Ivaldi for Norse god Frey. The vessel was said to always have fair wind, and could be folded up until it fit into a pocket. The ship's name means \"wooden-bladed\" in Old Norse."
} )

--[[
DefineUniqueItem("varva", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 231-232.
	Name = "Varva",
	Type = "unit-teuton-farm", -- should be Norse
	Prefix = "upgrade-item-prefix-sturdy", -- should be something more fitting?
--	Suffix = ?,
	Quote = _("\"Varva was wasted with the sword,\nAnd vengeance taken for the bird,\nThe little bird that used to bring\nNews to the ear of the great king.\"\n- Thiodolf of Huine"),
	Background = "Varva was a farm in Jutland in ancient times. In the Ynglinga Saga it is told that the sparrow of the Swedish king Dag, which relayed news to the monarch from faraway lands, once flew to the farm. It ate some of the farmer's grain, upon which he threw stones at the sparrow, killing it. When the king discovered that the sparrow had been killed at Varva, he sent a host to exact his revenge on the farm's inhabitants. As the king was about cross Skiotan's Ford to return to Sweden, a thrall threw a hay-fork at the monarch, hitting his head and ending his life."
} )

DefineUniqueItem("carolinum", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 31.
	Name = "Carolinum",
	Type = "unit-teuton-university", -- could also be a library, or perhaps a temple
	Prefix = ?,
	Suffix = ?,
	Background = "The Carolinum was the seat of the Prague University. It was first built as a residence by the rich burgher Rotlev, being later acquired by the crown and transformed into a university seat.
} )

DefineUniqueItem("castle-of-zebrak", { -- Castle of Žebrák; Source: Alena Ježková, "77 Prague Legends", 2006, p. 52.
	Name = "Castle of Zebrak",
	Type = "unit-teuton-burg", -- should be a castle
	Prefix = ?,
	Suffix = ?
} )

DefineUniqueItem("prague-castle", { -- Source: Alena Ježková, "77 Prague Legends", 2006, pp. 53, 61.
	Name = "Prague Castle",
	Type = "unit-teuton-burg", -- should be a castle
	Prefix = ?,
	Suffix = ?
} )

DefineUniqueItem("novy-hrad", { -- Nový Hrad; Source: Alena Ježková, "77 Prague Legends", 2006, p. 53.
	Name = "Novy Hrad",
	Type = "unit-teuton-burg", -- should be a castle
	Prefix = ?,
	Suffix = ?,
	Background = "\"Nový Hrad\" means \"new castle\" in Czech."
} )

DefineUniqueItem("clementinum", { -- Alena Ježková, "77 Prague Legends", 2006, p. 54.
	Name = "Clementinum",
	Type = "unit-teuton-temple", -- should be limited to only churches
	Prefix = ?,
	Suffix = ?,
	Background = "The Clementinum was a large complex of buildings built by the Jesuit Order in Prague. It encompassed six courtyards, two churches and two chapels. The complex was abandoned by the Jesuits in 1773, when Pope Clement XV dissolved their order."
} )

DefineUniqueItem("schwarzenberg-palace", { -- Located in Prague; Source: Alena Ježková, "77 Prague Legends", 2006, p. 62.
	Name = "Schwarzenberg Palace",
	Type = "unit-teuton-burg", -- should be a castle?
	Prefix = ?,
	Suffix = ?
} )

DefineUniqueItem("daliborka", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 88.
	Name = "Daliborka",
	Type = "unit-teuton-watch-tower",
	Prefix = ?,
	Suffix = ?,
	Background = "Daliborka was a prison tower in Prague, named after its most renowned capative, Dalibor of Kozajedy."
} )

DefineUniqueItem("the-white-tower", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 88.
	Name = "The White Tower",
	Type = "unit-teuton-watch-tower",
	Prefix = ?,
	Suffix = ?,
	Background = "The White Tower was a tower in Prague."
} )

DefineUniqueItem("mihulka", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 88.
	Name = "Mihulka",
	Type = "unit-teuton-watch-tower",
	Prefix = ?,
	Suffix = ?,
	Background = "Mihulka was a tower in Prague."
} )

DefineUniqueItem("ploskovice", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 88.
	Name = "Ploskovice",
	Type = "unit-teuton-burg",
	Prefix = ?,
	Suffix = ?,
	Background = "Ploskovice was a stronghold near Litoměřice."
} )

DefineUniqueItem("tyn-church", { -- Týn Church; Alena Ježková, "77 Prague Legends", 2006, p. 14.
	Name = "Tyn Church",
	Type = "unit-teuton-temple", -- should be limited to only churches
	Prefix = ?,
	Suffix = ?,
	Background = "The Týn Church was a church in Prague."
} )

DefineUniqueItem("ungelt", { -- Alena Ježková, "77 Prague Legends", 2006, p. 17.
	Name = "Ungelt",
	Type = "unit-teuton-market",
	Prefix = ?,
	Suffix = ?,
	Background = "Also known as the Týn Court, the Ungelt was the royal customs house in Prague."
} )

DefineUniqueItem("rott", { -- Alena Ježková, "77 Prague Legends", 2006, p. 19.
	Name = "Rott",
	Type = "unit-teuton-smithy",
	Prefix = ?,
	Suffix = ?,
	Background = "The Rott ironmonger's shop was located in Prague."
} )

DefineUniqueItem("v-kotcich", { -- Alena Ježková, "77 Prague Legends", 2006, p. 32.
	Name = "V Kotcich",
	Type = "unit-teuton-market",
	Prefix = ?,
	Suffix = ?,
	Background = "V Kotcich was a marketplace in Prague."
} )

DefineUniqueItem("the-lion-court", { -- Alena Ježková, "77 Prague Legends", 2006, p. 90.
	Name = "The Lion Court",
	Type = "unit-teuton-stables",
	Prefix = ?,
	Suffix = ?,
	Background = "The Lion Court was a bestiary in Prague."
} )

DefineUniqueItem("cernin-palace", { -- Alena Ježková, "77 Prague Legends", 2006, p. 94.
	Name = "Cernin Palace",
	Type = "unit-teuton-burg",
	Prefix = ?,
	Suffix = ?,
	Background = "The Černín Palace was built in the Loretánské Square in Prague for Humprecht Černín of Chudenice, the Holy Roman Empire's envoy to Venice."
} )

DefineUniqueItem("the-old-new-synanogue", { -- Alena Ježková, "77 Prague Legends", 2006, p. 103.
	Name = "The Old New Synanogue",
	Type = "unit-teuton-temple",
	Prefix = ?,
	Suffix = ?,
	Background = "The Old New Synanogue lies in Prague."
} )

DefineUniqueItem("na-slovanech-monastery", { -- Alena Ježková, "77 Prague Legends", 2006, pp. 126, 130.
	Name = "Na Slovanech Monastery",
	Type = "unit-teuton-temple", -- previously known as Emmaeus Monastery
	Prefix = ?,
	Suffix = ?,
	Background = ?
} )
--]]

-- Unique houses in Prague
-- "House at Death"; Source: Alena Ježková, "77 Prague Legends", 2006, p. 35.
-- "House at the Golden Well"; Source: Alena Ježková, "77 Prague Legends", 2006, p. 42.
-- "House at the Three Bells"; Source: Alena Ježková, "77 Prague Legends", 2006, p. 71.
-- "House at the Three White Roses"; also known as House U Rotta (because of the Rott ironmonger's shop); Source: Alena Ježková, "77 Prague Legends", 2006, p. 19.
-- "The Chateau"; smallest house in the Golden Lane, which had once been inhabited by an elderly nobleman; Source: Alena Ježková, "77 Prague Legends", 2006, p. 93.
-- Faust's House; Source: Alena Ježková, "77 Prague Legends", 2006, p. 126.
-- U Myslíků ("At the Myslíks"); the protestant owner of this house and his family had to flee Prague after the Battle of the White Mountain in 1620; Source: Alena Ježková, "77 Prague Legends", 2006, pp. 131-132.

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
-- Golden Lane (called "Zlatá" - "golden"); Source: Alena Ježková, "77 Prague Legends", 2006, pp. 92, 117.
-- Široká Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 105.
-- Nekázanka (street); Source: Alena Ježková, "77 Prague Legends", 2006, p. 125.
-- Jindřišská Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 125.
-- Myslíkova Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 131.
-- Spálená Street; Source: Alena Ježková, "77 Prague Legends", 2006, p. 131.

-- Unique squares in Prague
-- Malé náměstí ("Small Square"); Source: Alena Ježková, "77 Prague Legends", 2006, p. 19.
-- Mariánské Square; Source: Alena Ježková, "77 Prague Legends", 2006, p. 26.
-- Loretánské Square; the Černín Palace was located in it; Source: Alena Ježková, "77 Prague Legends", 2006, p. 94.
-- Karlova náměstí ("Charles Square"); Source: Alena Ježková, "77 Prague Legends", 2006, p. 126.

-- Nový svět ("New World"); district in Hradčany (in or nearby Prague); Source: Alena Ježková, "77 Prague Legends", 2006, p. 98.
-- Josefo; Jewish quarter in Prague; Source: Alena Ježková, "77 Prague Legends", 2006, p. 101.
-- Malá Strana ("Lesser Town") (in or nearby Prague); Source: Alena Ježková, "77 Prague Legends", 2006, p. 124.

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

-- Josef (legendary golem from Prague); Source: Alena Ježková, "77 Prague Legends", 2006, p. 107.
