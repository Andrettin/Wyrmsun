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
--      (c) Copyright 2015-2022 by Andrettin
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

-- Weapons

-- Broad Swords

DefineUniqueItem("brimir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 102.
	Name = "Brimir",
	Type = "unit-broad-sword",
	Prefix = "upgrade-item-prefix-giants",
	Suffix = "upgrade-item-suffix-of-victory",
	Background = "Brimir was described in Norse mythology as being the best of swords.",
	Quote = "\"Of all the gods is Odin the greatest,\nAnd Sleipnir the best of steeds;\nBifrost of bridges, Bragi of skalds,\nHobrok of hawks, Garm of hounds,\nand Brimir of swords.\"\n- <a href='literary_text:grimnismol'>Grimnismol</a> (Grimnir)"
} )

DefineUniqueItem("laevatein", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 124; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 245.
	Name = "Laevatein",
	Type = "unit-broad-sword",
	Prefix = "upgrade-item-prefix-wounding",
	Suffix = "upgrade-item-suffix-of-slaughter",
	Background = "In Norse mythology, Laevatein (\"the Wounding Wand\") was a sword forged by Loki with runes at the doors of Niflheim, and was placed under nine locks in Laegjarn's chest, with Sinmora guarding over it.",
	Quote = "\"Laevatein is there that Lopt with runes\nOnce made by the doors of death;\nIn Laegjarn's chest by Sinmora lies it,\nAnd nine locks fasten it firm.\"\n- <a href='literary_text:svipdagsmol'>Svipdagsmol</a> (Fjolsvith)"
} )

DefineUniqueItem("wolfs-claw", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 778.
	Name = "Wolf's Claw",
	Type = "unit-broad-sword",
	Prefix = "upgrade-item-prefix-wolfs",
	Suffix = "upgrade-item-suffix-of-the-wolf",
	Description = "This sword is named after a star, and is said to derive power from it.",
	Background = "The Norse named a star (or an asterism) \"Wolf's Claws\"."
} )

-- Longswords

DefineUniqueItem("freys-sword", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 55-57; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 110, 114-115.
	Name = "Frey's Sword",
	Type = "unit-spatha",
	Prefix = "upgrade_prefix_giantsbane",
	Suffix = "upgrade_suffix_of_flame",
	Background = "In Norse mythology, Frey had a keen, gleamning sword that was particularly powerful against giants.",
	Quote = "\"Then give me the horse that goes through the dark\nAnd magic flickering flames;\nAnd the sword as well that fights of itself\nAgainst the giants grim.\"\n- <a href='literary_text:skirnismol'>Skirnismol</a> (Skirnir)"
} )

DefineUniqueItem("gram", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 351, 365.
	Name = "Gram",
	Type = "unit-frankish-spatha",
	Prefix = "upgrade-item-prefix-wounding",
	Suffix = "upgrade-item-suffix-of-victory",
	Background = "In Norse mythology, Gram was the sword given by Odin to Sigmund. Being later broken into pieces, the sword was reforged by Regin for Sigurd.",
--	Quote = "\"My kin, methinks, is unknown to thee,\nAnd so am I myself;\nSigurd my name, and Sigmund's son,\nWho smote thee thus with the sword.\"\n- <a href='literary_text:fafnismol'>Fafnismol</a> (Sigurd)"
	Quote = "\"With thy sword between, three nights thou sleepest\nWith her thou winnest for Gunnar's wife.\"\n- <a href='literary_text:gripisspo'>Gripisspo</a> (Gripir)"
} )

DefineUniqueItem("hrotti", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 385.
	Name = "Hrotti",
	Type = "unit-spatha",
	Prefix = "upgrade-item-prefix-penetrating",
	Suffix = "upgrade-item-suffix-of-perfuration",
	Background = "In Norse mythology, Hrotti (\"Thruster\") was Fafnir's sword, which was taken by Sigurd.",
	Quote = "\"There Sigurd found a mighty store of gold, and he filled two chests full thereof; he took the fear-helm and a golden mail-coat and the sword Hrotti, and many other precious things.\"\n- <a href='literary_text:fafnismol'>Fafnismol</a>"
} )

DefineUniqueItem("rithil", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 380.
	Name = "Rithil",
	Type = "unit-spatha",
	Prefix = "upgrade_prefix_accurate",
	Suffix = "upgrade-item-suffix-of-betrayal",
	Background = "In Norse mythology, Rithil (\"Swift-Moving\") was Regin's sword, which he used to slay his brother Fafnir. One source gives the alternate name Refil (\"Serpent\") for the sword.",
	Quote = "\"Then Regin went up to Fafnir and cut out his heart with his sword, that was named Rithil, and then he drank blood from the wounds.\"\n- <a href='literary_text:fafnismol'>Fafnismol</a>"
} )

DefineUniqueItem("sigrljoma", { -- Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 119.
	Name = "Sigrljoma", -- "Sigrljóma"
	Type = "unit-spatha",
	Prefix = "upgrade-item-prefix-wounding",
	Suffix = "upgrade_suffix_of_fire",
	Background = "In Norse mythology, Sigrljóma (\"Battle-Light\") was the magic sword which Högni used to combat Sörli the Strong."
} )

-- Hammers

DefineUniqueItem("mjollnir", {
	Name = "Mjollnir",
	Type = "unit-runesmiths-hammer", -- should be a throwing hammer
	Prefix = "upgrade-item-prefix-storm",
	Suffix = "upgrade-item-suffix-of-the-storm",
	Description = "Mjollnir is a mighty iron hammer crafted by the dwarven brothers Brokk and Eitri. It is said to have been gifted to Thor, god of thunder."
} )

DefineUniqueItem("the-hammer-of-thursagan", {
	Name = "The Hammer of Thursagan",
	Type = "unit-runesmiths-hammer",
	Prefix = "upgrade_prefix_flaming",
	Suffix = "upgrade-item-suffix-of-victory",
--	Quote = "\"The very tool with which our greatest runesmith made the Scepter of Fire. But it is ancient, far older than Thursagan; he was but the last to wield it, and our oldest histories hint that this very hammer was used to forge the dwarves themselves in the heart of the earth.\"\n- Angarthing"
	Quote = "\"The very tool with which our greatest runesmith made the Scepter of Fire. But it is ancient, far older than Thursagan; he was but the last to wield it.\"\n- Angarthing"
} )

-- Spears

DefineUniqueItem("gungnir", {
	Name = "Gungnir",
	Type = "unit-long-spear", -- should be a throwing spear / javelin
	Prefix = "upgrade-item-prefix-impaling",
	Suffix = "upgrade-item-suffix-of-victory",
	Description = "Gungnir is a deadly spear made by dwarf Ivaldi and his sons. It is said to have been gifted to Hroptatyr, the highest of the Aesir."
} )

-- Throwing Axes

DefineUniqueItem("toporik", { -- name means "hatchet" in Russian; renaming of the Axe of Perun (Perun is a god from Slavic mythology), here made into a dwarven unique throwing axe (since it wouldn't make much sense for the dwarves to have a throwing axe named after a god from a human mythology); was made a dwarven item under the following premise: many scholars associate the Axe of Perun with Thor's Mjollnir hammer in function and origin, and the latter was made by dwarves
	Name = "Toporik",
	Type = "unit-bearded-throwing-axe",
	Prefix = "upgrade-item-prefix-storm",
	Suffix = "upgrade-item-suffix-of-victory",
	Background = "In Slavic mythology, the god Perun wielded a throwing axe. Perun's axe has often been identified with Thor's Mjollnir hammer in function and origin. The name Toporik means \"hatchet\" in Russian.",
	Quote = "\"The wise Vingthor\nHas nine sons:\nThree strike, three thunder,\nThree lighten.\"\n- Dwarven Traditional Poetry" -- Source: W. R. S. Ralston, "Songs of the Russian People", 1872, p. 90.
} )

-- Shields

DefineUniqueItem("svalin", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 63; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 100.
	Name = "Svalin",
	Type = "unit-bronze-shield",
	Prefix = "upgrade-item-prefix-impregnable",
	Suffix = "upgrade-item-suffix-of-extinguishment",
	Background = "In Norse mythology, Svalin (\"the Cooling\") was the shield which stood in front of the sun, protecting the mountains and the sea from burning in flames.",
	Quote = "\"In front of the sun does Svalin stand,\nThe shield for the shining god;\nMountains and sea would be set in flames\nIf it fell from before the sun.\"\n- <a href='literary_text:grimnismol'>Grimnismol</a> (Grimnir)"
} )

-- Helmets

DefineUniqueItem("hippopotamus-head", { -- Source: Richard Hinckley Allen, "Star-Names and their Meanings", 1874, pp. 205, 208.
	Name = "Hippopotamus' Head",
	Type = "unit_helmet",
	Prefix = "upgrade-item-prefix-sturdy",
	Suffix = "upgrade-item-suffix-of-strength",
	Description = "This helmet is named after a star in the Egyptian constellation of the Hippopotamus, and is said to derive power from it."
} )

DefineUniqueItem("the-iron-crown-of-lombardy", {
	Name = "The Iron Crown of Lombardy",
	Type = "unit_crown",
	Prefix = "upgrade-item-prefix-impregnable",
	Suffix = "upgrade-item-suffix-of-the-colossus",
	Description = "This crown is a relic of the Lombardic kingdom."
} )

-- Boots

DefineUniqueItem("alsvids-hooves", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 778.
	Name = "Alsvid's Hooves", -- source gives "Hoof of Alsvinn" instead, but also mentions it being a sun horse, so that it is probably the same as Alsviðr
	Type = "unit-boots",
	Prefix = "upgrade_prefix_swift",
	Suffix = "upgrade-item-suffix-of-speed",
	Set = "upgrade-item-set-the-sun-horses",
	Description = "These boots are named after a star, and are said to derive power from it.",
	Background = "The Norse named a star \"Alsvid's Hoof\". Alsvid is one of the sun horses in Norse myths."
} )

-- Jewelry

-- Amulets

DefineUniqueItem("arvaks-ear", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 778.
	Name = "Arvak's Ear",
	Type = "unit-amulet",
	Prefix = "upgrade-item-prefix-quenching",
	Suffix = "upgrade-item-suffix-of-extinguishment",
	Set = "upgrade-item-set-the-sun-horses",
	Description = "This amulet is named after a star, and are said to derive power from it.",
	Background = "The Norse named a star \"Arvak's Ear\". Arvak is one of the sun horses in Norse myths."
} )

DefineUniqueItem("brisingamen", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 177.
	Name = "Brisingamen",
	Type = "unit-amulet",
	Prefix = "upgrade_prefix_flaming",
	Suffix = "upgrade_suffix_of_swiftness",
	Background = "In Norse mythology, Brisingamen (\"The Necklace of the Brisings\") was a golden necklace crafted by four dwarven smiths for the goddess Freyja.",
	Quote = "\"The dwelling great of the dwarves was shaken,\nAnd burst was the mighty Brisings' necklace.\"\n- Dwarven Traditional Poetry"
} )

-- Rings

DefineUniqueItem("andvaranaut", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 114, 360; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 21.
	Name = "Andvaranaut",
	Type = "unit-ring",
	Prefix = "upgrade-item-prefix-vicious",
	Suffix = "upgrade-item-suffix-of-betrayal",
	Background = "In Norse mythology, Andvaranaut (\"Andvari's Booty\") was a gold ring owned by Andvari and forcibly taken from him by Loki. Upon the ring's theft, Andvari cursed whoever would come to own it. The ring had the power to make gold.",
	Quote = "\"Now shall the gold that I once had\nBring their death to warriors twain,\nAnd evil be for heroes eight;\nJoy of my wealth shall no dwarf win.\"\n- <a href='literary_text:reginsmol'>Reginsmol</a> (Andvari)"
} )

DefineUniqueItem("draupnir", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 241; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 114.
	Name = "Draupnir",
	Type = "unit-ring",
	Prefix = "upgrade_prefix_flaming",
	Suffix = "upgrade-item-suffix-of-power",
	Background = "In Norse mythology, Draupnir (\"Dropper\") was a gold arm-ring crafted by the dwarves Brokk and Eitri for the Aesir. Eight rings with the same weight in gold as Draupnir dropped from it every ninth night. Draupnir was burned with Odin's son Balder in his funeral pyre.",
	Quote = "\"The ring I wish not, though burned it was\nOf old with Hroptatyr's son;\nIn my home is no lack of gold\nIn the wealth my father wields.\"\n- Dwarven Traditional Poetry"
} )

DefineUniqueItem("volunds-ring", { -- Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, pp. 75-76.
	Name = "Volund's Ring",
	Type = "unit-ring",
	Prefix = "upgrade_prefix_swift",
	Suffix = "upgrade-item-suffix-of-speed",
	Description = "The legendary elven smith Volund crafted this wondrous magic ring, and gave it to his wife. The ring was later stolen by an enemy king, who gave it to his daughter."
} )

-- Horns

DefineUniqueItem("gjall", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 18, 243.
	Name = "Gjall",
	Type = "unit-horn",
	Prefix = "upgrade-item-prefix-jinns",
	Suffix = "upgrade_suffix_of_swiftness",
	Background = "In Norse mythology, Gjall (\"the Ringing Horn\") was the horn of the god Heimdall, which was heard in all nine worlds when soared."
} )

DefineUniqueItem("hlewagastizs-horn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 1.2.
	Name = "Hlewagastiz's Horn",
	Type = "unit-horn",
	Prefix = "upgrade_prefix_accurate",
	Suffix = "upgrade_suffix_of_accuracy",
	Background = "In the early 5th century, a horn was made and engraved with runes detailing the name of its maker, Hlewagastiz.",
	Quote = "\"I, Hlewagastiz of the wood, made the horn.\""
} )

-- Elixirs

DefineUniqueItem("fafnirs-heart", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 380-381.
	Name = "Fafnir's Heart",
	Type = "unit-wyrm-heart",
	Elixir = "upgrade-elixir-fafnirs-heart",
	Background = "In Norse mythology, the hero Sigurd (identified by scholars with the historical Frankish king Sigibert) cooked the heart of the monster Fafnir, presumably gaining in strength after eating it.",
	Quote = "\"There sits Sigurd, sprinkled with blood,\nAnd Fafnir's heart with fire he cooks\"\n- <a href='literary_text:fafnismol'>Fafnismol</a>"
} )

-- Books and Scrolls

DefineUniqueItem("thusagans-book", { -- From Battle for Wesnoth: The Hammer of Thursagan
	Name = "Thursagan's Book",
	Type = "unit-book",
	Icon = "icon-book-blue",
	Work = "upgrade-work-thursagans-book",
	Description = "Thursagan's Book contains an enormous amount of rune lore, written by the legendary arcanister himself. It was found in Knalga in 550 by the Order of Loremasters, and its code was deciphered only with difficulty.",
	Quote = "\"But it might be that, with the book and the Hammer in hand, we could train and initiate runesmiths once more.\"\n- Angarthing, Dwarven Witness"
} )

-- Buildings

DefineUniqueItem("heimdalls-stones", { -- Source: Nils-Axel Mörner, Bob G. Lind, Göran Possnert, "Heimdall's Stones at Vitemölla in SE Sweden and the Chronology and Stratigraphy of the Surroundings", 2009, pp. 209-212.
	Name = "Haimadala's Stones",
	Type = "unit-germanic-temple",
	Prefix = "upgrade-item-prefix-industrious",
	Suffix = "upgrade-item-suffix-of-diligence",
	Background = "Heimdall's Stones was a mystical site which during the Nordic Bronze Age was used to track the movements of the stars. Its name was given to it by modern archaeologists. \"Haimadala\" is a rendering of the deity's name in Proto-Germanic, which is closer to the language spoken in the period."
} )

DefineUniqueItem("heorot", { -- Source: Stephen Mitchell, "Beowulf", 2017, p. 7.
	Name = "Heorot",
	Type = "unit-norse-town-hall",
	Prefix = "upgrade-item-prefix-sturdy",
	Suffix = "upgrade-item-suffix-of-plenty",
	Background = "In the Anglo-Saxon poem \"Beowulf\", Heorot was the hall that the Danish king Hrothgar built."
} )

DefineUniqueItem("the-house-of-seven-fathers", { -- Source: Peter Christen Asbjørnsen and Jørgen Moe, "Norwegian Folktales", 1960, pp. 13-14.
	Name = "The House of Seven Fathers",
	Type = "unit-norse-farm",
	Prefix = "upgrade-item-prefix-sturdy",
	Suffix = "upgrade-item-suffix-of-plenty",
	Description = "This imposing manor house lies along a road, and seven generations of fathers live together in it."
	-- described as being big and beautiful, so it makes sense that it provides more food than the usual farm, and that it is harder to destroy
} )

DefineUniqueItem("shorbear-hold", {
	Name = "Shorbear Hold",
	Type = "unit-dwarven-stronghold",
	Prefix = "upgrade-item-prefix-impregnable",
	Suffix = "upgrade-item-suffix-of-the-colossus",
	Quote = "\"Everyone to the caves, and kill those still inside!\"\n- Durstorn, Norlund Chieftain"
} )

-- Ships

DefineUniqueItem("skidbladnir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 101.
	Name = "Skidbladnir",
	Type = "unit-dwarven-transport-ship",
	Prefix = "upgrade_prefix_swift",
--	Suffix = "upgrade_suffix_of_swiftness",
	Suffix = "upgrade-item-suffix-of-ethereal-vision",
	Description = "Skidbladnir was a ship built by the sons of Ivaldi for Modsognir. Its magnificent sail provided the sleek ship with great speed. Some say that it is capable of travelling between worlds...",
	Quote = "\"In days of old did Ivaldi's sons\nSkidbladnir fashion fair,\nThe best of ships for the bright god Frey,\nThe noble son of Njord.\"\n- <a href='literary_text:grimnismol'>Grimnismol</a>",
	Background = "Skidbladnir appeared in Norse mythology as a ship crafted by the sons of Ivaldi for Norse god Frey. The vessel was said to always have fair wind, and could be folded up until it fit into a pocket. The ship's name means \"wooden-bladed\" in Old Norse."
} )

--[[
DefineUniqueItem("varva", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 231-232.
	Name = "Varva",
	Type = "unit-norse-farm",
	Prefix = "upgrade-item-prefix-sturdy", -- should be something more fitting?
--	Suffix = ?,
	Quote = "\"Varva was wasted with the sword,\nAnd vengeance taken for the bird,\nThe little bird that used to bring\nNews to the ear of the great king.\"\n- Thiodolf of Huine",
	Background = "Varva was a farm in Jutland in ancient times. In the Ynglinga Saga it is told that the sparrow of the Swedish king Dag, which relayed news to the monarch from faraway lands, once flew to the farm. It ate some of the farmer's grain, upon which he threw stones at the sparrow, killing it. When the king discovered that the sparrow had been killed at Varva, he sent a host to exact his revenge on the farm's inhabitants. As the king was about cross Skiotan's Ford to return to Sweden, a thrall threw a hay-fork at the monarch, hitting his head and ending his life."
} )

DefineUniqueItem("carolinum", {
	Name = "Carolinum",
	Type = "unit-teuton-university", -- could also be a library, or perhaps a temple
	Prefix = ?,
	Suffix = ?,
	Background = "The Carolinum was the seat of the Prague University. It was first built as a residence by the rich burgher Rotlev, being later acquired by the crown and transformed into a university seat.
} )

DefineUniqueItem("castle-of-zebrak", { -- Castle of Žebrák
	Name = "Castle of Zebrak",
	Type = "unit-teuton-stronghold", -- should be a castle
	Prefix = ?,
	Suffix = ?
} )

DefineUniqueItem("prague-castle", {
	Name = "Prague Castle",
	Type = "unit-teuton-stronghold", -- should be a castle
	Prefix = ?,
	Suffix = ?
} )

DefineUniqueItem("novy-hrad", { -- Nový Hrad
	Name = "Novy Hrad",
	Type = "unit-teuton-stronghold", -- should be a castle
	Prefix = ?,
	Suffix = ?,
	Background = "\"Nový Hrad\" means \"new castle\" in Czech."
} )

DefineUniqueItem("clementinum", {
	Name = "Clementinum",
	Type = "unit-teuton-temple", -- should be limited to only churches
	Prefix = ?,
	Suffix = ?,
	Background = "The Clementinum was a large complex of buildings built by the Jesuit Order in Prague. It encompassed six courtyards, two churches and two chapels. The complex was abandoned by the Jesuits in 1773, when Pope Clement XV dissolved their order."
} )

DefineUniqueItem("schwarzenberg-palace", { -- Located in Prague
	Name = "Schwarzenberg Palace",
	Type = "unit-teuton-stronghold", -- should be a castle?
	Prefix = ?,
	Suffix = ?
} )

DefineUniqueItem("daliborka", {
	Name = "Daliborka",
	Type = "unit-teuton-watch-tower",
	Prefix = ?,
	Suffix = ?,
	Background = "Daliborka was a prison tower in Prague, named after its most renowned captive, Dalibor of Kozajedy."
} )

DefineUniqueItem("the-white-tower", {
	Name = "The White Tower",
	Type = "unit-teuton-watch-tower",
	Prefix = ?,
	Suffix = ?,
	Background = "The White Tower was a tower in Prague."
} )

DefineUniqueItem("mihulka", {
	Name = "Mihulka",
	Type = "unit-teuton-watch-tower",
	Prefix = ?,
	Suffix = ?,
	Background = "Mihulka was a tower in Prague."
} )

DefineUniqueItem("ploskovice", {
	Name = "Ploskovice",
	Type = "unit-teuton-stronghold",
	Prefix = ?,
	Suffix = ?,
	Background = "Ploskovice was a stronghold near Litoměřice."
} )

DefineUniqueItem("tyn-church", { -- Týn Church
	Name = "Tyn Church",
	Type = "unit-teuton-temple", -- should be limited to only churches
	Prefix = ?,
	Suffix = ?,
	Background = "The Týn Church was a church in Prague."
} )

DefineUniqueItem("ungelt", {
	Name = "Ungelt",
	Type = "unit-teuton-market",
	Prefix = ?,
	Suffix = ?,
	Background = "Also known as the Týn Court, the Ungelt was the royal customs house in Prague."
} )

DefineUniqueItem("rott", {
	Name = "Rott",
	Type = "unit_teutonic_smithy",
	Prefix = ?,
	Suffix = ?,
	Background = "The Rott ironmonger's shop was located in Prague."
} )

DefineUniqueItem("v-kotcich", {
	Name = "V Kotcich",
	Type = "unit-teuton-market",
	Prefix = ?,
	Suffix = ?,
	Background = "V Kotcich was a marketplace in Prague."
} )

DefineUniqueItem("the-lion-court", {
	Name = "The Lion Court",
	Type = "unit-teuton-stables",
	Prefix = ?,
	Suffix = ?,
	Background = "The Lion Court was a bestiary in Prague."
} )

DefineUniqueItem("cernin-palace", {
	Name = "Cernin Palace",
	Type = "unit-teuton-stronghold",
	Prefix = ?,
	Suffix = ?,
	Background = "The Černín Palace was built in the Loretánské Square in Prague for Humprecht Černín of Chudenice, the Holy Roman Empire's envoy to Venice."
} )

DefineUniqueItem("the-old-new-synanogue", {
	Name = "The Old New Synanogue",
	Type = "unit-teuton-temple",
	Prefix = ?,
	Suffix = ?,
	Background = "The Old New Synanogue lies in Prague."
} )

DefineUniqueItem("na-slovanech-monastery", {
	Name = "Na Slovanech Monastery",
	Type = "unit-teuton-temple", -- previously known as Emmaeus Monastery
	Prefix = ?,
	Suffix = ?,
	Background = ?
} )
--]]

-- Unique houses in Prague
-- "House of Death"
-- "House of the Golden Well"
-- "House of the Three Bells"
-- "House of the Three White Roses"; also known as House U Rotta (because of the Rott ironmonger's shop)
-- "The Chateau"; smallest house in the Golden Lane, which had once been inhabited by an elderly nobleman
-- Faust's House
-- U Myslíků ("At the Myslíks"); the protestant owner of this house and his family had to flee Prague after the Battle of the White Mountain in 1620

-- "U Jezurů" ("At the Lakes"); night tavern in Prague frequented by prostitutes, which was said to be haunted by a hairy ghost who killed prostitutes near the tavern

-- The Hunger Wall (wall in Prague)

-- Zikmund (unique bell in Prague)

-- Josef (legendary golem from Prague)

-- Bodn (jar which contained some of the mead of poetry)
-- Dainsleif (dwarven sword)
-- Gleipnir (fetter made by dwarves to bind the wolf Fenrir)
-- Naglering (sword forged by the dwarf Alberich)
-- Odrorir (cauldron which contained some of the mead of poetry)
-- Son (jar which contained some of the mead of poetry)
-- Thrymgjol (extraordinary gate crafted by the sons of the sun-blinded dwarf Solblindi)