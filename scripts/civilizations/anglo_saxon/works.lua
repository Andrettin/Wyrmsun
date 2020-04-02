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
--      (c) Copyright 2016-2020 by Andrettin
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

DefineUpgrade("upgrade-work-aecer-bot", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 172-175.
	Name = "Land-Remedy", -- "Æcer-Bōt"
	Work = "scroll",
	Quote = "\"All hail, Earth, mother of men!\nBe fruitful in God's embracing arm,\nFilled with food for the needs of men.\""
})

DefineUpgrade("upgrade-work-be-galdorstafum", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 202-203.
	Name = "Concerning Magic Writings", -- "Be Galdorstafum"
	Work = "scroll"
})

DefineUpgrade("upgrade-work-blodseten", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 200-203.
	Name = "For Stanching Blood", -- "Blōdseten"
	Work = "scroll",
--	Quote = "\"For stanching blood in horse or man.\""
})

DefineUpgrade("upgrade-work-feld-bot", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 204-205.
	Name = "A Field Remedy", -- "Feld-Bōt"
	Work = "scroll",
	Quote = "\"Cont apes ut salui sint and in corda eorum.\""
})

DefineUpgrade("upgrade-work-gagates-craeftas", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 200-201.
	Name = "The Virtues of Jet", -- "Gagātes Cræftas"
	Work = "scroll"
})

DefineUpgrade("upgrade-work-historia-ecclesiastica-venerabilis-bedae", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 34.
	Name = "Historia Ecclesiastica Venerabilis Bedae",
	Work = "book",
	Year = 731
})

DefineUpgrade("upgrade-work-nigon-wyrta-galdor", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 190-195.
	Name = "Nine Herbs Charm", -- "Nigon Wyrta Galdor"
	Work = "scroll",
	Quote = "\"Now these nine herbs avail against nine accursed spirits\""
})

DefineUpgrade("upgrade-work-sidgaldor", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 176-179.
	Name = "A Journey Spell", -- "Sīðgaldor"
	Work = "scroll",
	Quote = "\"Forth I wander, friends I shall find,\nAll the encouragement of angels through the teaching of the blessed.\""
})

DefineUpgrade("upgrade-work-wid-aelfadle", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 190-191, 226.
	Name = "For Elf-Disease", -- "Wið Ælfadle"
	Work = "scroll",
--	Quote = "\"Then go in silence, and, though something of a fearful kind or a man should come upon you, say not a single word to it until you reach the herb you marked the night before.\"" -- original
	Quote = "\"Then go in silence, and, though something of a fearful kind or a person should come upon you, say not a single word to it until you reach the herb you marked the night before.\""
	-- "Elf-Disease" = bewitchment by elves
})

DefineUpgrade("upgrade-work-wid-aelfcynne", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 210-211.
	Name = "Against the Elfin Race", -- Wið Ælfcynne
	Work = "scroll",
	Quote = "\"Make a salve against the elfin race\""
})

DefineUpgrade("upgrade-work-wid-aelfe-and-wid-sidsan", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 212-213.
	Name = "Against an Elf and Against Charm-Magic", -- "Wið Ælfe and Wið Sidsan"
	Work = "scroll"
})

DefineUpgrade("upgrade-work-wid-aelfsogothan", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 186-189.
	Name = "For Elf Hiccup", -- "Wið Ælfsogoþan"
	Work = "scroll",
	Quote = "\"If a person has elf hiccup, their eyes will be yellow where they should be red.\""
})

DefineUpgrade("upgrade-work-wid-aswollenum-eagum", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 198-199.
	Name = "For Swollen Eyes", -- "Wið Āswollenum Ēagum"
	Work = "scroll"
})

DefineUpgrade("upgrade-work-wid-blaece", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 196-197.
	Name = "For Scabies", -- "Wið Blæce"
	Work = "scroll",
	Quote = "\"Take this evil, and move away with it.\""
})

DefineUpgrade("upgrade-work-wid-blodrene-of-nosu", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 210-211.
	Name = "For Nose-Bleed", -- "Wið Blōdrene of Nosu"
	Work = "scroll"
})

DefineUpgrade("upgrade-work-wid-ceapes-lyre", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 184-187.
	Name = "For Loss of Cattle", -- "Wið Cēapes Lyre"
	Work = "scroll",
	Quote = "\"So may this act among men grow famed\nThrough the Holy Rood of Christ. Amen.\""
})

DefineUpgrade("upgrade-work-wid-ceapes-theofende", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 184-185.
	Name = "For Theft of Cattle", -- "Wið Cēapes Þēofende"
	Work = "scroll",
	Quote = "\"So may this act among men become well-known, per crucem Christi.\""
})

DefineUpgrade("upgrade-work-wid-corn", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 170-171.
	Name = "For Corns", -- "Wið Corn"
	Work = "scroll",
	Quote = "\"Geneon genetron genitul\ncatalon care trist pabist\""
})

DefineUpgrade("upgrade-work-wid-cyrnel", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 170-171.
	Name = "For a Kernel", -- "Wið Cyrnel"
	Work = "scroll",
	Quote = "\"And the two to one\nAnd the one to nothing\""
})

DefineUpgrade("upgrade-work-wid-cyrnla", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 194-197.
	Name = "For Kernels", -- "Wið Cyrnla"
	Work = "scroll",
	Quote = "\"Ecce dolgula medit dudum\""
})

DefineUpgrade("upgrade-work-wid-da-blacan-blegene", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 182-183.
	Name = "For Black Ulcers", -- "Wið Ða Blacan Blēgene"
	Work = "scroll",
	Quote = "\"Tigad tigad tigad\ncalicet aclu\""
})

DefineUpgrade("upgrade-work-wid-deofolseocnesse", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 188-189.
	Name = "Against Demoniacal Possession", -- "Wið Dēofolsēocnesse"
	Work = "scroll",
	Quote = "\"I pray you, vinca pervinca - to be had for your many advantages - that you come to me joyously, blooming with your virtues, that you endow me with such qualities that I shall be shielded and ever prosperous and unharmed by poisons and by rage.\""
})

DefineUpgrade("upgrade-work-wid-dweorg", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 212-213.
	Name = "Against a Dwarf III", -- "Wið Dweorg"
	Work = "scroll",
	Quote = "\"To drive away a dwarf\""
})

DefineUpgrade("upgrade-work-wid-dweorh", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 166-167.
	Name = "Against a Dwarf", -- "Wið Dweorh"
	Work = "scroll",
	Quote = "\"That this should never scathe the sick,\nNor him who might this charm acquire,\nNor him who could this charm intone.\""
--	Quote = "\"As soon as from the land they came,\nThey then began to cool.\""
})

DefineUpgrade("upgrade-work-wid-dweorh-2", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 210-211.
	Name = "Against a Dwarf II", -- "Wið Dweorh"
	Work = "scroll",
	Quote = "\"Against a dwarf, write this along the arms\""
})

DefineUpgrade("upgrade-work-wid-faerstice", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 164-167.
	Name = "For a Sudden Stitch", -- "Wið Fǣrstice"
	Work = "scroll",
	Quote = "\"If herein be aught of iron,\nWork of witches, it shall melt!\""
})

DefineUpgrade("upgrade-work-wid-feondes-costunge", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 200-201.
	Name = "Against the Assaults of the Fiend", -- "Wið Fēondes Costunge"
	Work = "scroll"
})

DefineUpgrade("upgrade-work-wid-feos-lyre", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 178-181.
	Name = "For Loss of Cattle", -- "Wið Fēos Lyre"
	Work = "scroll",
	Quote = "\"Act as I admonish: stay with yours\nAnd leave me with mine; nothing of yours do I desire\""
})

DefineUpgrade("upgrade-work-wid-feos-nimunge", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 180-183.
	Name = "For Theft of Cattle", -- "Wið Fēos Nimunge"
	Work = "scroll",
	Quote = "\"Garmund, servitor of God,\nFind those kine, and fetch those kine\""
})

DefineUpgrade("upgrade-work-wid-fleogendan-attre", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 198-199.
	Name = "Against Infectious Disease", -- "Wið Flēogendan Āttre"
	Work = "scroll",
	Quote = "\"Contriue deus omnem malum et nequitiam, per uirtutem patris et filii et spiritus sancti.\""
})

DefineUpgrade("upgrade-work-wid-fleogendum-attre", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 196-197.
	Name = "For Infectious Disease", -- "Wið Flēogendum Āttre"
	Work = "scroll",
	Quote = "\"Sing over it nine times a litany, and nine times the Paternoster, and nine times this charm\""
})

DefineUpgrade("upgrade-work-wid-heafodece", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 200-201.
	Name = "For Headache", -- "Wið Hēafodece"
	Work = "scroll"
})

DefineUpgrade("upgrade-work-wid-hors-oman", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 172-173.
	Name = "For Erysipelas", -- "Wið Hors Ōman"
	Work = "scroll",
	Quote = "\"Crux mihi uita et tibi mors inimico; alfa et o, initium et finis, dicit dominus.\""
})

DefineUpgrade("upgrade-work-wid-hors-wreccunge", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 184-185.
	Name = "For a Horse's Sprain", -- "Wið Hors-Wreccunge"
	Work = "scroll",
	Quote = "\"Naborrede, unde uenisti\""
})

DefineUpgrade("upgrade-work-wid-huntan-bite", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 198-199.
	Name = "For a Spider-Bite", -- "Wið Huntan Bite"
	Work = "scroll"
})

DefineUpgrade("upgrade-work-wid-laetbyrde", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 206-209.
	Name = "For Delayed Birth", -- "Wið Lætbyrde"
	Work = "scroll",
	Quote = "\"Always have I carried with me this great strong hero\""
})

DefineUpgrade("upgrade-work-wid-lenctenadle", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 182-185.
	Name = "Against Ague", -- "Wið Lenctenādle"
	Work = "scroll",
	Quote = "\"In nomine domini summi sit benedictum.\""
})

DefineUpgrade("upgrade-work-wid-lenctenadle-2", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 202-203.
	Name = "For Ague", -- "Wið Lenctenādle"
	Work = "scroll"
})

DefineUpgrade("upgrade-work-wid-leodrunan", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 202-203.
	Name = "Against a Sorceress", -- "Wið Lēodrūnan"
	Work = "scroll"
})

DefineUpgrade("upgrade-work-wid-lidwaerce", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 184-185.
	Name = "For Pain in the Limbs", -- "Wið Liðwærce"
	Work = "scroll",
	Quote = "\"Malignus obligavit, angelus curavit, dominus saluavit.\""
})

DefineUpgrade("upgrade-work-wid-maran", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 198-199.
	Name = "Against an Incubus", -- "Wið Maran"
	Work = "scroll"
})

DefineUpgrade("upgrade-work-wid-miclum-gonge", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 190-191.
	Name = "For Much Travelling", -- "Wið Miclum Gonge"
	Work = "scroll",
	Quote = "\"Tollam te artemesia, ne lassus sim in via.\""
})

DefineUpgrade("upgrade-work-wid-monadseocnesse", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 208-209.
	Name = "For Lunacy", -- "Wið Mōnaðsēocnesse"
	Work = "scroll"
})

DefineUpgrade("upgrade-work-wid-naedran-bite", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 212-213.
	Name = "Against Snake-Bite", -- "Wið Nǣdran Bite"
	Work = "scroll",
	Quote = "\"Against snake-bite, some advise us to pronounce one word\""
})

DefineUpgrade("upgrade-work-wid-oman", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 172-173.
	Name = "For Erysipelas", -- "Wið Ōman"
	Work = "scroll",
	Quote = "\"O pars et o rillia pars et pars iniopia est alfa et o initium.\""
})

DefineUpgrade("upgrade-work-wid-onfealle", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 200-201.
	Name = "For a Swelling", -- "Wið Onfealle"
	Work = "scroll"
})

DefineUpgrade("upgrade-work-wid-swina-faer-steorfan", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 208-209.
	Name = "For Sudden Pestilence Among Swine", -- "Wið Swīna Fǣr-Steorfan"
	Work = "scroll"
})

DefineUpgrade("upgrade-work-wid-theofende", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 206-207.
	Name = "Against Theft", -- "Wið Þēofende"
	Work = "scroll",
--	Quote = "\"When a man steals anything from you, write this silently\"" -- original
	Quote = "\"When a person steals anything from you, write this silently\""
})

DefineUpgrade("upgrade-work-wid-theofentum", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 168-169.
	Name = "Against Thefts", -- "Wið Þēofentum"
	Work = "scroll",
	Quote = "\"Giug farig fidig\ndelou delupih\""
})

DefineUpgrade("upgrade-work-wid-todece", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 170-171.
	Name = "For Toothache", -- "Wið Tōðece"
	Work = "scroll",
	Quote = "\"Lilumenne, it aches beyond telling when he lies down; it cools when on earth it burns most fiercely; finit, amen.\""
})

DefineUpgrade("upgrade-work-wid-uncudum-swyle", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 186-187.
	Name = "For a Strange Swelling", -- "Wið Uncūðum Swyle"
	Work = "scroll",
	Quote = "\"Quando natus est Christus, fugit dolor.\""
})

DefineUpgrade("upgrade-work-wid-utsiht", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 170-171.
	Name = "Ecce Dolgola", -- "Wið Ūtsiht" ("For Diarrhea")
	Work = "scroll",
	Quote = "\"Ecce dolgola nedit dudum\nbethecunda braethecunda\""
})

DefineUpgrade("upgrade-work-wid-utsihte", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 204-205.
	Name = "Ranmigan Adonai", -- "Wið Ūtsihte" ("For Diarrhea")
	Work = "scroll",
	Quote = "\"Ranmigan adonai eltheos mur.\""
})

DefineUpgrade("upgrade-work-wid-waeteraelfadle", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 194-195.
	Name = "For the Water-Elf Disease", -- "Wið Wæterælfādle"
	Work = "scroll",
	Quote = "\"Round the wounds I have wreathed the best of healing amulets,\nThat the wounds may neither burn nor burst\""
})

DefineUpgrade("upgrade-work-wid-wambewaerce", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 198-199.
	Name = "For Bowel-Pain", -- "Wið Wambewærce"
	Work = "scroll",
	Quote = "\"Remedium facio ad ventris dolorem.\""
})

DefineUpgrade("upgrade-work-wid-wennum", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 166-167.
	Name = "Against Wens", -- "Wið Wennum"
	Work = "scroll",
	Quote = "\"Wen, wen, little wen,\nHere you shall not build, nor any dwelling have\""
})

DefineUpgrade("upgrade-work-wid-wennum-2", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 212-213.
	Name = "For Wens", -- "Wið Wennum"
	Work = "scroll",
	Quote = "\"Do this so for nine days: he will soon be well.\""
})

DefineUpgrade("upgrade-work-wid-wifgemaedlan", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 212-213.
	Name = "Against a Witch's Spell", -- "Wið Wīfgemædlan"
	Work = "scroll",
	Quote = "\"On that day the spell will not have the power to harm you.\""
})

DefineUpgrade("upgrade-work-wid-wyrme", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 168-169.
	Name = "For a Worm", -- "Wið Wyrme"
	Work = "scroll",
	Quote = "\"Gonomil orgomil marbumil,\nmarbsairamum tofed tengo\""
})

DefineUpgrade("upgrade-work-wid-wyrt-forbore", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 212-213.
	Name = "Wid Wyrt-Forbore", -- "Wið Wyrt-Forbore" ("For Sexual Constriction")
	Work = "scroll"
})

DefineUpgrade("upgrade-work-wid-ylfa-gescotum", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 208-209.
	Name = "For Elf-Shot", -- "Wið Ylfa Gescotum"
	Work = "scroll",
	Quote = "\"Be the elf who he may, this will suffice as a cure\""
})

DefineUpgrade("upgrade-work-wid-ymbe", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 168-169.
	Name = "Against a Swarm of Bees", -- "Wið Ymbe"
	Work = "scroll",
	Quote = "\"Alight, victory-dames, sink to the ground!\nNever fly to the woodland!\""
})

DefineUpgrade("upgrade-work-with-tha-stithestan-feferas", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 210-211.
	Name = "For the Stubbornest Fevers", -- "Wiþ Þā Stīþestan Fēferas"
	Work = "scroll"
})

DefineModifier("upgrade-work-aecer-bot",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-be-galdorstafum",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-blodseten",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-feld-bot",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-gagates-craeftas",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-historia-ecclesiastica-venerabilis-bedae",
	{"KnowledgeMagic", 5}
)

DefineModifier("upgrade-work-nigon-wyrta-galdor",
	{"KnowledgeMagic", 1} -- could also be herbology
)

DefineModifier("upgrade-work-sidgaldor",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-aelfadle",
	{"KnowledgeMagic", 1} -- could also be herbology
)

DefineModifier("upgrade-work-wid-aelfcynne",
	{"KnowledgeMagic", 1} -- could also be herbology
)

DefineModifier("upgrade-work-wid-aelfe-and-wid-sidsan",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-aelfsogothan",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-aswollenum-eagum",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-blaece",
	{"KnowledgeMagic", 1} -- could also be herbology
)

DefineModifier("upgrade-work-wid-blodrene-of-nosu",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-ceapes-lyre",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-ceapes-theofende",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-corn",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-cyrnel",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-cyrnla",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-da-blacan-blegene",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-deofolseocnesse",
	{"KnowledgeMagic", 1} -- could also be herbology
)

DefineModifier("upgrade-work-wid-dweorg",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-dweorh",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-dweorh-2",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-faerstice",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-feondes-costunge",
	{"KnowledgeMagic", 1} -- could also be herbology
)

DefineModifier("upgrade-work-wid-feos-lyre",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-feos-nimunge",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-fleogendan-attre",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-fleogendum-attre",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-heafodece",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-hors-oman",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-hors-wreccunge",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-huntan-bite",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-laetbyrde",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-lenctenadle",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-lenctenadle-2",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-leodrunan",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-lidwaerce",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-maran",
	{"KnowledgeMagic", 1} -- could also be herbology
)

DefineModifier("upgrade-work-wid-miclum-gonge",
	{"KnowledgeMagic", 1} -- could also be herbology
)

DefineModifier("upgrade-work-wid-monadseocnesse",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-naedran-bite",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-oman",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-onfealle",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-swina-faer-steorfan",
	{"KnowledgeMagic", 1} -- could also be herbology
)

DefineModifier("upgrade-work-wid-theofende",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-theofentum",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-todece",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-uncudum-swyle",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-utsiht",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-utsihte",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-waeteraelfadle",
	{"KnowledgeMagic", 1} -- could also be herbology
)

DefineModifier("upgrade-work-wid-wambewaerce",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-wennum",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-wennum-2",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-wifgemaedlan",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-wyrme",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-wyrt-forbore",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-ylfa-gescotum",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-ymbe",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-with-tha-stithestan-feferas",
	{"KnowledgeMagic", 1} -- could also be herbology
)

-- the Anglo-Saxon charms should be available for any Germanic civilization (since we lack literary works for the others) or for fictional civilizations as appropriate; since these are charms, they should all require temples

DefineDependency("upgrade-work-aecer-bot",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple", "unit-dwarven-mushroom-farm"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple", "unit-gnomish-farm"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple", "unit-goblin-farm"}
)

DefineDependency("upgrade-work-be-galdorstafum",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-blodseten",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-feld-bot",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple", "unit-dwarven-mushroom-farm"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple", "unit-gnomish-farm"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple", "unit-goblin-farm"}
)

DefineDependency("upgrade-work-gagates-craeftas",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-nigon-wyrta-galdor",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-historia-ecclesiastica-venerabilis-bedae",
	{"upgrade-deity-christian-god", "upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-deity-christian-god", "upgrade-english-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-sidgaldor",
	{"upgrade-deity-christian-god", "upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-deity-christian-god", "upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-deity-christian-god", "upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-deity-christian-god", "upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-deity-christian-god", "upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-deity-christian-god", "upgrade-gothic-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-wid-aelfadle",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-wid-aelfcynne",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-wid-aelfe-and-wid-sidsan",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-wid-aelfsogothan",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-wid-aswollenum-eagum",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-blaece",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-blodrene-of-nosu",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-ceapes-lyre", -- not available for fictional civilizations, since their worlds don't have cattle; requires a farm because the charm would only have reason to be available if livestock is kept
	{"upgrade-anglo-saxon-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-english-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-frankish-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-suebi-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-teuton-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-gothic-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"}
)

DefineDependency("upgrade-work-wid-ceapes-theofende", -- not available for fictional civilizations, since their worlds don't have cattle; requires a farm because the charm would only have reason to be available if livestock is kept
	{"upgrade-anglo-saxon-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-english-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-frankish-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-suebi-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-teuton-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-gothic-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"}
)

DefineDependency("upgrade-work-wid-corn",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-cyrnel",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-cyrnla",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-da-blacan-blegene",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-deofolseocnesse",
	{"upgrade-deity-christian-god", "upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-deity-christian-god", "upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-deity-christian-god", "upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-deity-christian-god", "upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-deity-christian-god", "upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-deity-christian-god", "upgrade-gothic-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-wid-dweorg", -- not available for dwarves, since it is an anti-dwarven spell which implies dwarves to be another sort of being
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-dweorh", -- not available for dwarves, since it is an anti-dwarven spell which implies dwarves to be another sort of being
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-dweorh-2", -- not available for dwarves, since it is an anti-dwarven spell which implies dwarves to be another sort of being
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-faerstice",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-feondes-costunge",
	{"upgrade-anglo-saxon-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-wid-feos-lyre", -- not available for fictional civilizations, since their worlds don't have cattle; requires a farm because the charm would only have reason to be available if livestock is kept
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple", "unit-teuton-farm"}
)

DefineDependency("upgrade-work-wid-feos-nimunge", -- not available for fictional civilizations, since their worlds don't have ; requires a farm because the charm would only have reason to be available if livestock is kept
	{"upgrade-anglo-saxon-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-english-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-frankish-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-suebi-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-teuton-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-gothic-civilization", "upgrade-deity-christian-god", "unit-teuton-temple", "unit-teuton-farm"}
)

DefineDependency("upgrade-work-wid-fleogendan-attre", -- has a Latin passage mentioning God
	{"upgrade-anglo-saxon-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-wid-fleogendum-attre",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-heafodece",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-hors-oman",
	{"upgrade-anglo-saxon-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "upgrade-deity-christian-god", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-wid-hors-wreccunge", -- not available for fictional civilizations, since their worlds don't have horses; requires a stables because the charm would only have reason to be available if stables are kept
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple", "unit-teuton-stables"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple", "unit-teuton-stables"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple", "unit-teuton-stables"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple", "unit-teuton-stables"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple", "unit-teuton-stables"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple", "unit-teuton-stables"}
)

DefineDependency("upgrade-work-wid-huntan-bite", -- mentions spiders, but fictional civilizations may have their own exotic species of spider in their worlds
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-laetbyrde",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-lenctenadle", -- contains a passage in Latin mentioning God
	{"upgrade-deity-christian-god", "unit-teuton-temple", "upgrade-anglo-saxon-civilization"},
	"or", {"upgrade-deity-christian-god", "unit-teuton-temple", "upgrade-english-civilization"},
	"or", {"upgrade-deity-christian-god", "unit-teuton-temple", "upgrade-frankish-civilization"},
	"or", {"upgrade-deity-christian-god", "unit-teuton-temple", "upgrade-suebi-civilization"},
	"or", {"upgrade-deity-christian-god", "unit-teuton-temple", "upgrade-teuton-civilization"},
	"or", {"upgrade-deity-christian-god", "unit-teuton-temple", "upgrade-gothic-civilization"}
)

DefineDependency("upgrade-work-wid-lenctenadle-2",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-leodrunan",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-lidwaerce",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple", "upgrade-deity-christian-god"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple", "upgrade-deity-christian-god"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple", "upgrade-deity-christian-god"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple", "upgrade-deity-christian-god"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple", "upgrade-deity-christian-god"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple", "upgrade-deity-christian-god"}
)

DefineDependency("upgrade-work-wid-maran",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-miclum-gonge",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-monadseocnesse",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-naedran-bite", -- mentions snakes
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-wid-oman", -- contains Latin passages
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-wid-onfealle",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-swina-faer-steorfan", -- mentions swines
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple", "unit-teuton-farm"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple", "unit-teuton-farm"}
)

DefineDependency("upgrade-work-wid-theofende",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-theofentum",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-todece",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-uncudum-swyle",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple", "upgrade-deity-christian-god"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple", "upgrade-deity-christian-god"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple", "upgrade-deity-christian-god"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple", "upgrade-deity-christian-god"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple", "upgrade-deity-christian-god"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple", "upgrade-deity-christian-god"}
)

DefineDependency("upgrade-work-wid-utsiht",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-utsihte",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-waeteraelfadle",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-wid-wambewaerce", -- contains a Latin passage
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-wid-wennum",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-wennum-2",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-wifgemaedlan",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-wyrme", -- not available for fictional civilizations, since their worlds don't have worms
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-wid-wyrt-forbore",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)

DefineDependency("upgrade-work-wid-ylfa-gescotum",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-wid-ymbe", -- not available for fictional civilizations, since their worlds don't have bees
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-with-tha-stithestan-feferas",
	{"upgrade-anglo-saxon-civilization", "unit-teuton-temple"},
	"or", {"upgrade-english-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-gothic-civilization", "unit-teuton-temple"},
	"or", {"upgrade-dwarven-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-gnomish-civilization", "unit-dwarven-temple"},
	"or", {"upgrade-goblin-civilization", "unit-goblin-temple"}
)
