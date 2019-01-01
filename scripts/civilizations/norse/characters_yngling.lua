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
--      (c) Copyright 2015-2019 by Andrettin
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

DefineCharacter("fiolner-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 225-227.
	Name = "Fiolner", -- "Fiölner"
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Trait = "upgrade-mighty", -- described as powerful
	-- in the Ynglinga saga, Fiölner was a son of Yngve, but it isn't chronologically feasible for him to be a son of Yngve given how many generations there are between him and Halfdan the Black
	Quote = "\"And when brave Frode came, he found\nSwithiod's dark chief, Fiolner, drowned.\"\n- Thiodolf of Huine",
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
})

DefineCharacter("svegdir-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 227-228; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 608.
	Name = "Svegdir", -- "Svegðir"; as given by Cleasby; in the Heimskringla translation it is given as "Swegder" instead
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "fiolner-yngling",
	Quote = "\"The dauntless hero rushing on,\nPassed through the yawning mouth of stone:\nIt yawned - it shut - the hero fell\"\n- Thiodolf of Huine",
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
})

DefineCharacter("vanland-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 227-228.
	Name = "Vanland",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "svegdir-yngling",
	Mother = "vana",
	Quote = "\"And Vanland, in a fatal hour,\nWas dragg'd by Grimhild's daughter's power\"\n- Thiodolf of Huine",
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
})

DefineCharacter("visbur-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 228-229.
	Name = "Visbur",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "vanland-yngling",
	Mother = "drisa",
	Quote = "\"Have the fire-dogs' fierce tongues yelling\nLapt Visbur's blood on his own hearth?\"\n- Thiodolf of Huine",
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
	-- married the daughter of Aud the Rich
})

DefineCharacter("gisle-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 229.
	Name = "Gisle",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "visbur-yngling"
	-- his mother was the daughter of Aud the Rich
})

DefineCharacter("ond-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 229.
	Name = "Ond",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "visbur-yngling"
	-- his mother was the daughter of Aud the Rich
})

DefineCharacter("domald-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 229-230.
	Name = "Domald",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "visbur-yngling",
	Quote = "\"But Domald dies by bloody arms,\nRaised not by foes in war's alarms,\nRaised by his Swedish liegeman's hand,\nTo bring good seasons to the land.\"\n- Thiodolf of Huine",
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
})

DefineCharacter("domar-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 229-230.
	Name = "Domar",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "domald-yngling",
	Quote = "\"I have asked wise men to tell\nWhere Domar rests, and they knew well.\nDomar, on Fyrie's wide-spread ground,\nWas burned, and laid on Yngve's mound.\"\n- Thiodolf of Huine",
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
})

DefineCharacter("dyggve-the-brave-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 230-231.
	Name = "Dyggve",
	ExtraName = "the Brave",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "domald-yngling",
	Mother = "drott-skjoldung",
	Quote = "\"For Loke's daughter in her house\nOf Yngve's race would have a spouse;\nTherefore the fell-one snatched away\nBrave Dyggve from the light of day.\"\n- Thiodolf of Huine",
	Trait = "upgrade-mighty", -- described as brave and mighty
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
})

DefineCharacter("dag-the-wise-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 231-233.
	Name = "Dag",
	ExtraName = "the Wise",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "dyggve-the-brave-yngling",
	Quote = "\"Varva was ravaged, and the strife\nWas ended when the monarch's life\nWas ended too - the great Dag fell\nBy the hay-fork of a base thrall!\"\n- Thiodolf of Huine",
	Trait = "upgrade-wise", -- described as wise, brave and mighty
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
})

DefineCharacter("agne-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 233-234.
	Name = "Agne",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "dag-the-wise-yngling",
	Quote = "\"How do ye like her, Agne's men\nThink ye that any chief again\nWill court the fate your chief befell,\nTo ride on wooden horse to hell?\"\n- Thiodolf of Huine",
	Trait = "upgrade-mighty", -- described as powerful, celebrated and expert
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
	-- Skialf was married to Agne after he invaded Finland, killed her father and took her and her brother to Sweden
})

DefineCharacter("alric-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 234.
	Name = "Alric",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- horseriding described as being customary for him; king
	Civilization = "norse",
	Faction = "swede-tribe",
	Father = "agne-yngling",
	Quote = "\"Alric fell, by Eric slain,\nEric's life-blood dyed the plain.\nBrother fell by brother's hand\"\n- Thiodolf of Huine",
	Trait = "upgrade-mighty", -- described as powerful and expert at all feats of arms
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe" -- Swedish king together with his brother Eric, but it was Alric's sons who went on to rule after their death
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "swede-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("eric-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 234.
	Name = "Eric",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- horseriding described as being customary for him; king
	Civilization = "norse",
	Faction = "swede-tribe",
	Father = "agne-yngling",
	Quote = "\"Alric fell, by Eric slain,\nEric's life-blood dyed the plain.\nBrother fell by brother's hand\"\n- Thiodolf of Huine",
	Trait = "upgrade-mighty", -- described as powerful and expert at all feats of arms
	-- Swedish king together with his brother Alric, but it was Alric's sons who went on to rule after their death
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "swede-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("alf-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 235-236.
	Name = "Alf",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "swede-tribe",
	Father = "alric-yngling",
	Mother = "dagrid-dagling",
	Quote = "\"How wretched Alf with bloody knife\nGored Yngve's heart, and Yngve's blade\nAlf on the bloody threshold laid.\"\n- Thiodolf of Huine",
	Trait = "upgrade-harsh", -- described as silent, harsh, unfriendly and wretched
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe" -- was king of Sweden together with his brother Yngve, and Alf's son who succeeded them
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "swede-tribe") then
			return true
		end
		return false
	end
	-- married Bera
})

DefineCharacter("yngve-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 235-236.
	Name = "Yngve",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "alric-yngling",
	Quote = "\"How wretched Alf with bloody knife\nGored Yngve's heart, and Yngve's blade\nAlf on the bloody threshold laid.\"\n- Thiodolf of Huine",
	Trait = "upgrade-strong" -- described as a great warrior, handsome expert in all exercises, strong and very sharp in battle, generous and full or mirth
	-- was king of Sweden together with his brother Alf, but it was Alf's son who succeeded them
})

DefineCharacter("hugleik-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 236.
	Name = "Hugleik",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "swede-tribe",
	Father = "alf-yngling",
	Mother = "bera", -- his mother was presumably Bera, since she was Alf's wife
	-- described as very greedy
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
})

DefineCharacter("jorund-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 237-238.
	Name = "Jorund",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "yngve-yngling",
	Quote = "\"Jorund has travelled far and wide,\nBut the same horse he must bestride\nOn which he made brave Gudlog ride.\nHe too must for a necklace wear\nHagbert's fell noose in middle air.\"\n- Thiodolf of Huine",
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
})

DefineCharacter("eric-yngveson-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 237.
	Name = "Eric",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "yngve-yngling",
	Quote = "\"By the fierce East-kings' cruel pride,\nGudlog must on the wild horse rider -\nThe wildest horse you e'er did see:\n'Tis Segur's steed - the gallows tree.\"\n- Eyvind Skaldaspiller"
})

DefineCharacter("on-the-old-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 239-240.
	Name = "On", -- also known as Ane
	ExtraName = "the Old",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "jorund-yngling",
	Trait = "upgrade-cruel", -- described as wise and cruel
	Quote = "\"In Upsal's town the cruel king\nSlaughtered his sons at Odin's shrine\nSlaughtered his sons with cruel knife,\nTo get from Odin length of life.\"\n- Thiodolf of Huine",
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe" -- ruled intermittently at Västergotland when Uppsal was occupied by Danish invaders
	}
})

DefineCharacter("egil-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 240-241.
	Name = "Egil",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "on-the-old-yngling",
	Quote = "\"The fair-haired son of Odin's race,\nWho fled before fierce Tunne's face,\nHas perished by the demon-beast\nWho roams the forests of the East.\"\n- Thiodolf of Huine",
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
})

DefineCharacter("ottar-vendelcrow-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 242-243.
	Name = "Ottar",
	ExtraName = "Vendelcrow", -- nickname because of the manner of his death
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "egil-yngling",
	Quote = "\"By Danish arms the hero bold,\nOttar the Brave, lies stiff and cold.\nTo Vendel's plain the corpse was borne;\nBy eagles' claws the corpse is torn\"\n- Thiodolf of Huine",
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
	-- described as brave
})

DefineCharacter("adils-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 243-245.
	Name = "Adils",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "swede-tribe",
	Father = "ottar-vendelcrow-yngling",
	Quote = "\"Witch-demons, I have heard men say,\nHave taken Adils' life away.\"\n- Thiodolf of Huine",
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
})

DefineCharacter("eystein-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 246.
	Name = "Eystein",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "swede-tribe",
	Father = "adils-yngling",
	Quote = "\"The raging tree-devourer fire\nRushed on the monarch its ire;\nFirst fell the castle timbers, then\nThe roof-beams - Eystein's funeral pyre.\"\n- Thiodolf of Huine",
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
})

DefineCharacter("yngvar-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 246-247.
	Name = "Yngvar",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "swede-tribe",
	Father = "eystein-yngling",
	Quote = "\"On Esthland's strand, o'er Swedish graves,\nThe East Sea sings her song of waves;\nKing Yngvar's dirge is ocean's roar\nResounding on the rock-ribbed shore.\"\n- Thiodolf of Huine",
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
})

DefineCharacter("onund-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 247-248.
	Name = "Onund",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "swede-tribe",
	Father = "yngvar-yngling",
	Quote = "\"Or else perhaps the wood-grown land,\nWhich long had felt his conquering hand,\nUprose at length in deadly strife,\nAnd pressed out Onund's hated life.\"\n- Thiodolf of Huine",
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
})

DefineCharacter("ingiald-the-evil-adviser-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248-254.
	Name = "Ingiald",
	ExtraName = "the Evil-Adviser",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "swede-tribe",
	Father = "onund-yngling",
	Quote = "\"On his own hearth the fire he raised,\nA deed his foemen even praised;\nBy his own hand he perished so,\nAnd life for freedom did forego.\"\n- Thiodolf of Huine",
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe"
	}
	-- married to Gauthild
})

DefineCharacter("aasa-the-evil-adviser-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 253-254.
	Name = "Aasa",
	ExtraName = "the Evil-Adviser",
	FamilyName = "Yngling",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Father = "ingiald-the-evil-adviser-yngling",
	Mother = "gauthild"
	-- married Gudrod (king of Scania)
})

DefineCharacter("olaf-treefeller-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 253-256.
	Name = "Olaf",
	ExtraName = "Treefeller",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "ingiald-the-evil-adviser-yngling",
	Mother = "gauthild",
	Quote = "\"The temple wolf, by the lake shores,\nThe corpse of Olaf now devours.\nThe clearer of forests died\nAt Odin's shrine by the lake side.\"\n- Thiodolf of Huine", -- "temple wolf" in this instance means the fire which burned Olaf's body
	-- his foster-father was Bove, who lived in West Gotland
	-- married to Solveig
})

DefineCharacter("ingiald-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 255, 257.
	Name = "Ingiald",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	-- (apparently) from Vermeland
	Father = "olaf-treefeller-yngling",
	Mother = "solveig"
	-- king of Værmeland (after his death his possessions went to his brother Halfdan)
})

DefineCharacter("halfdan-huitbein-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 255-257.
	Name = "Halfdan",
	ExtraName = "Huitbein",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	-- (apparently) from Vermeland
	Father = "olaf-treefeller-yngling",
	Mother = "solveig",
	Quote = "\"Halfdan, esteemed by friends and foes,\nReceives at last life's deep repose:\nThe aged man at last, though late,\nYielded in Thoten to stern fate.\"\n- Thiodolf of Huine"
	-- ruled over Hedemark, and conquered Thoten, Hadeland and much of Westfold
	-- married to Asa
})

DefineCharacter("eystein-halfdanson-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 257-258.
	Name = "Eystein",
	ExtraName = "Halfdanson", -- to differentiate him from the other Eystein Yngling
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	-- his father ruled over Hedemark
	Father = "halfdan-huitbein-yngling",
	Mother = "asa",
	Quote = "\"Grim Hel, clutched his soul away;\nAnd now where Vodle's ocean bay\nReceives the ice-cold stream, the grave\nOf Eystein stands, the good, the brave!\"\n- Thiodolf of Huine"
	-- became king in Raumarige and Westfold after his father's death
	-- married to Hilde, daughter of Eric Agnarson
})

DefineCharacter("gudrod-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 257.
	Name = "Gudrod",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	-- his father ruled over Hedemark
	Father = "halfdan-huitbein-yngling",
	Mother = "asa"
})

DefineCharacter("halfdan-the-mild-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 259.
	Name = "Halfdan",
	ExtraName = "the Mild", -- also knowns as "the Bad Entertainer"
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	-- his father ruled over Vestfold
	Father = "eystein-halfdanson-yngling",
	Mother = "hilde", -- presumably, since Hilde was married to Eystein
	Trait = "upgrade-generous", -- described as generous, and as a great warrior
	Quote = "\"By Hel's summons, a great king\nWas called away to Odin's Thing:\nKing Halfdan, he who dwelt of late\nAt Holtar, must obey grim Fate.\"\n- Thiodolf of Huine"
	-- married to Hlif, daughter of King Dag of Westmor
	-- his chief house was Holtar (in Vestfold, Norway)
})

DefineCharacter("gudrod-the-magnificent-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 259-260, 262.
	Name = "Gudrod",
	ExtraName = "the Magnificent", -- also knowns as "the Hunter"
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	-- his father ruled over Vestfold
	Father = "halfdan-the-mild-yngling",
	Mother = "hlif", -- presumably, since Hlif was married to Halfdan
	-- died murdered by a man under the orders of his wife Aasa
	DeathDate = 824, -- Halfdan the Black was one year old when Gudrod died
	Quote = "\"Gudrod is gone to his long rest,\nDespite of all his haughty pride,\nA traitor's spear has pierced his side\"\n- Thiodolf of Huine"
	-- married to Alfhild, and after her death married Aasa (daughter of Harald Redbeard)
	-- described as proud
})

DefineCharacter("olaf-geirstad-alf-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 259-261.
	Name = "Olaf",
	ExtraName = "Geirstad-Alf",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman", -- king
	Civilization = "norse",
	Faction = "vestfold",
	-- king of Vestfold
	Father = "gudrod-the-magnificent-yngling",
	Mother = "alfhild",
	Trait = "upgrade-strong", -- described as remarkably handsome, very strong and large of growth
	Quote = "\"Long while this branch of Odin's stem\nWas the stout prop of Norway's realm;\nLong while King Olaf with just pride\nRuled over Westfold far and wide.\"\n- Thiodolf of Huine",
	-- Olaf was 20 years old when his father Gudrod died, so he would have been born in 804
	StartDate = 824, -- date his father died, and thus when his reign over Vestfold began
	HistoricalTitles = {
		"head-of-state", 824, 0, "vestfold"
	},
	HistoricalLocations = {
		824, "earth", "tonsberg"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "vestfold" or GetPlayerData(trigger_player, "Faction") == "norway") then
			return true
		end
		return false
	end
})

DefineCharacter("halfdan-the-black-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 260-262.
	Name = "Halfdan",
	ExtraName = "the Black",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman", -- king
	Civilization = "norse",
	Faction = "agder",
	-- his father ruled over Vestfold
	Father = "gudrod-the-magnificent-yngling",
	Mother = "aasa",
	HairVariation = "black-hair",
	-- began his reign when he was 18 years old, so he would have been born in 823
	StartDate = 841, -- reign began
	DeathDate = 863, -- reign ended
	Trait = "upgrade-strong", -- described as stout and strong
	HistoricalTitles = {
		"head-of-state", 841, 863, "agder"
	},
	HistoricalLocations = {
		841, "earth", "arendal" -- became king of Agder in 841, and Arendal seems like a reasonably good location to place him
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "agder" or GetPlayerData(trigger_player, "Faction") == "norway") then
			return true
		end
		return false
	end
})

DefineCharacter("rognvald-mountain-high-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 261.
	Name = "Rognvald",
	ExtraName = "Mountain-High",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	-- his father ruled over Vestfold
	Father = "olaf-geirstad-alf-yngling",
	Quote = "\"Rognvald, who knew so well to guide\nThe wild sea-horses through the tide:\nThe 'Mountain-high' was the proud name\nBy which the king was known to fame.\"\n- Thiodolf of Huine" -- "wild sea-horses" means ships
})

