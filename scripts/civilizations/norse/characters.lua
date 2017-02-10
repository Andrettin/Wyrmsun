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

DefineCharacter("fiolner-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 225-227.
	Name = "Fiolner", -- "Fiölner"
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Trait = "upgrade-mighty", -- described as powerful
	-- in the Ynglinga saga, Fiölner was a son of Yngve, but it isn't chronologically feasible for him to be a son of Yngve given how many generations there are between him and Halfdan the Black
	Quote = _("\"And when brave Frode came, he found\nSwithiod's dark chief, Fiolner, drowned.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
})

DefineCharacter("fridfrode-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 226-227.
	Name = "Fridfrode",
	FamilyName = "Skjoldung", -- presumably
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- ruled in Leidre
	-- he was a friend of Fiölner's
	-- described as brave
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "dane-tribe"
	}
})

DefineCharacter("svegdir-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 227-228; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 608.
	Name = "Svegdir", -- "Svegðir"; as given by Cleasby; in the Heimskringla translation it is given as "Swegder" instead
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "fiolner-yngling",
	Quote = _("\"The dauntless hero rushing on,\nPassed through the yawning mouth of stone:\nIt yawned - it shut - the hero fell\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
})

DefineCharacter("vana", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 227.
	Name = "Vana",
	Gender = "female",
	Type = "unit-germanic-archer",
	Civilization = "celt", -- from Vanaland/Vanaheim
	ProvinceOfOrigin = "Don"
	-- wife of Svegðir's
})

DefineCharacter("vanland-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 227-228.
	Name = "Vanland",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "svegdir-yngling",
	Mother = "vana",
	Quote = _("\"And Vanland, in a fatal hour,\nWas dragg'd by Grimhild's daughter's power\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
})

DefineCharacter("aud-the-rich", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 229.
	Name = "Aud",
	ExtraName = "the Rich",
	Gender = "female", -- presumably, since another character named "Aud" was a female
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden" -- presumably
})

DefineCharacter("visbur-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 228-229.
	Name = "Visbur",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Finland",
	Father = "vanland-yngling",
	Mother = "drisa",
	Quote = _("\"Have the fire-dogs' fierce tongues yelling\nLapt Visbur's blood on his own hearth?\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
	-- married the daughter of Aud the Rich
})

DefineCharacter("gisle-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 229.
	Name = "Gisle",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "visbur-yngling"
	-- his mother was the daughter of Aud the Rich
})

DefineCharacter("ond-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 229.
	Name = "Ond",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "visbur-yngling"
	-- his mother was the daughter of Aud the Rich
})

DefineCharacter("domald-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 229-230.
	Name = "Domald",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "visbur-yngling",
	Quote = _("\"But Domald dies by bloody arms,\nRaised not by foes in war's alarms,\nRaised by his Swedish liegeman's hand,\nTo bring good seasons to the land.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
})

DefineCharacter("domar-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 229-230.
	Name = "Domar",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "domald-yngling",
	Quote = _("\"I have asked wise men to tell\nWhere Domar rests, and they knew well.\nDomar, on Fyrie's wide-spread ground,\nWas burned, and laid on Yngve's mound.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
})

DefineCharacter("rig-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 231.
	Name = "Rig",
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- apparently from Denmark
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "dane-tribe" -- apparently
	}
})

DefineCharacter("daup-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 231.
	Name = "Daup",
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- apparently from Denmark
	Father = "rig-skjoldung",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "dane-tribe" -- apparently
	}
})

DefineCharacter("dan-mikillati-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 231.
	Name = "Dan",
	ExtraName = "Mikillati",
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	Father = "daup-skjoldung", -- presumably, since Dan Mikillati was Drott's brother, and she was a daughter of Daup
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "dane-tribe"
	}
})

DefineCharacter("drott-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 231.
	Name = "Drott",
	FamilyName = "Skjoldung", -- correct?
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- apparently from Denmark
	Father = "daup-skjoldung", 
})

DefineCharacter("dyggve-the-brave-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 230-231.
	Name = "Dyggve",
	ExtraName = "the Brave",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "domald-yngling",
	Mother = "drott-skjoldung",
	Quote = _("\"For Loke's daughter in her house\nOf Yngve's race would have a spouse;\nTherefore the fell-one snatched away\nBrave Dyggve from the light of day.\"\n- Thiodolf of Huine"),
	Trait = "upgrade-mighty", -- described as brave and mighty
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
})

DefineCharacter("dag-the-wise-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 231-233.
	Name = "Dag",
	ExtraName = "the Wise",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "dyggve-the-brave-yngling",
	Quote = _("\"Varva was ravaged, and the strife\nWas ended when the monarch's life\nWas ended too - the great Dag fell\nBy the hay-fork of a base thrall!\"\n- Thiodolf of Huine"),
	Trait = "upgrade-wise", -- described as wise, brave and mighty
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
})

DefineCharacter("agne-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 233-234.
	Name = "Agne",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "dag-the-wise-yngling",
	Quote = _("\"How do ye like her, Agne's men\nThink ye that any chief again\nWill court the fate your chief befell,\nTo ride on wooden horse to hell?\"\n- Thiodolf of Huine"),
	Trait = "upgrade-mighty", -- described as powerful, celebrated and expert
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
	-- Skialf was married to Agne after he invaded Finland, killed her father and took her and her brother to Sweden
})

DefineCharacter("skialf", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 233-234.
	Name = "Skialf", -- put her here rather than in the Finnish character file because that one is loaded before the Norse one, and she uses Agne Yngling as her date reference character
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "finnish", -- presumably
	ProvinceOfOrigin = "Finland",
	Father = "froste",
	-- Skialf was married to Agne Yngling after he invaded Finland, killed her father and took her and her brother to Sweden
	Quote = _("\"How do ye like the high-souled maid,\nWho, with the grim Fate-goddess' aid,\nAvenged her sire? Made Swithiod's king\nThrough air in golden halter swing?\"\n- Thiodolf of Huine")
})

DefineCharacter("alric-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 234.
	Name = "Alric",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- horseriding described as being customary for him; king
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "agne-yngling",
	Quote = _("\"Alric fell, by Eric slain,\nEric's life-blood dyed the plain.\nBrother fell by brother's hand\"\n- Thiodolf of Huine"),
	Trait = "upgrade-mighty", -- described as powerful and expert at all feats of arms
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe" -- Swedish king together with his brother Eric, but it was Alric's sons who went on to rule after their death
	}
})

DefineCharacter("eric-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 234.
	Name = "Eric",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- horseriding described as being customary for him; king
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "agne-yngling",
	Quote = _("\"Alric fell, by Eric slain,\nEric's life-blood dyed the plain.\nBrother fell by brother's hand\"\n- Thiodolf of Huine"),
	Trait = "upgrade-mighty", -- described as powerful and expert at all feats of arms
	-- Swedish king together with his brother Alric, but it was Alric's sons who went on to rule after their death
})

DefineCharacter("eymund", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Eymund", -- king of Holmgarth (i.e. Russia); described as "the strongest of men"
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- accurate?
	Trait = "upgrade-strong",
	ProvinceOfOrigin = "Russia"
})

DefineCharacter("halfdan-the-old-skjoldung", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 221-223.
	Name = "Halfdan", -- mythical king of Denmark; had an ice-cold sword; was strengthened by king Eymund of Holmgarth and slew Sigtrygg with the ice-cold sword; married Eymund's daughter Almveig
	ExtraName = "the Old",
	FamilyName = "Skjoldung", -- the text gives Halfdan the Old both as "the foremost of the Skjoldungs", and as a progenitor of the Skjoldungs (along with the Skilfings, Othlings and Ynglings) himself
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "denmark",
	ProvinceOfOrigin = "Zealand", -- since he is a Danish king
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "denmark"
	}
})

DefineCharacter("almveig", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Almveig", -- wife of Halfdan the Old Skjoldung; also known as Alvig; bore Halfdan the Old eighteen sons (nine of them being in a single birth); the nine who were the result of a single birth were all slain, while the other nine are held to be the ancestors of the most famous heroes in Norse myths
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse", -- accurate?
	ProvinceOfOrigin = "Russia", -- since her father was king there
	Father = "eymund"
})

DefineCharacter("authi", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 221-222.
	Name = "Authi", -- son of Halfdan the Old, from whom the Othlings spring
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "denmark",
	ProvinceOfOrigin = "Zealand", -- since his father was king of Denmark
	Father = "halfdan-the-old-skjoldung",
	Mother = "almveig" -- presumably, since she was married to Halfdan the Old
})

DefineCharacter("ali", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Ali",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "denmark",
	ProvinceOfOrigin = "Zealand", -- since his father was king of Denmark
	Father = "halfdan-the-old-skjoldung",
	Mother = "almveig" -- presumably, since she was married to Halfdan the Old
})

DefineCharacter("sigtrygg", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Sigtrygg", -- Halfdan the Old slew him with an ice-cold sword
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand" -- possible, since Halfdan the Old was the king of Denmark
})

DefineCharacter("dag-the-great", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 235.
	Name = "Dag", -- ancestor of the Daglings; married to Thora
	ExtraName = "the Great",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "denmark",
	ProvinceOfOrigin = "Zealand", -- since his father was king of Denmark
	Father = "halfdan-the-old-skjoldung",
	Mother = "almveig", -- presumably, since she was married to Halfdan the Old
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "dane-tribe" -- said to be a king in the Ynglinga Saga, and his ancestor was king of Denmark
	}
})

DefineCharacter("thora", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Thora", -- married to Dag, and bore him "the bravest of fighters"
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Faction = "denmark",
	ProvinceOfOrigin = "Zealand", -- since her husband's father was king of Denmark
})

DefineCharacter("frathmar-dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Frathmar",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "denmark",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
	Father = "dag-the-great",
	Mother = "thora"
})

DefineCharacter("gyrth-dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Gyrth",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "denmark",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
	Father = "dag-the-great",
	Mother = "thora"
})

DefineCharacter("frekis-dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Frekis",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "denmark",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
	Father = "dag-the-great",
	Mother = "thora"
})

DefineCharacter("frekis-ii-dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Frekis",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "denmark",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
	Father = "dag-the-great",
	Mother = "thora"
})

DefineCharacter("am-dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Am",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "denmark",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
	Father = "dag-the-great",
	Mother = "thora"
})

DefineCharacter("jofurmar-dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Jofurmar",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "denmark",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
	Father = "dag-the-great",
	Mother = "thora"
})

DefineCharacter("alf-the-old-dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Alf", -- apparently isn't the same Alf the Old who is father of Instein, since they have different fathers themselves
	ExtraName = "the Old",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "denmark",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
	Father = "dag-the-great",
	Mother = "thora"
})

DefineCharacter("dagrid-dagling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 235.
	Name = "Dagrid",
	FamilyName = "Dagling",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- presumably, since her father's father was a Danish king
	Father = "dag-the-great",
	Mother = "thora" -- presumably, since Dag was her father and Thora was the mother of his other children
})

DefineCharacter("yngve-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 235-236.
	Name = "Yngve",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "alric-yngling",
	Quote = _("\"How wretched Alf with bloody knife\nGored Yngve's heart, and Yngve's blade\nAlf on the bloody threshold laid.\"\n- Thiodolf of Huine"),
	Trait = "upgrade-strong" -- described as a great warrior, handsome expert in all exercises, strong and very sharp in battle, generous and full or mirth
	-- was king of Sweden together with his brother Alf, but it was Alf's son succeeded them
})

DefineCharacter("alf-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 235-236.
	Name = "Alf",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "alric-yngling",
	Mother = "dagrid-dagling",
	Quote = _("\"How wretched Alf with bloody knife\nGored Yngve's heart, and Yngve's blade\nAlf on the bloody threshold laid.\"\n- Thiodolf of Huine"),
	Trait = "upgrade-harsh", -- described as silent, harsh, unfriendly and wretched
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe" -- was king of Sweden together with his brother Yngve, and Alf's son succeeded them
	}
	-- married Bera
})

DefineCharacter("bera", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 235.
	Name = "Bera",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- presumably, since her husband is from there
	Quote = _("\"A deed of dreadful note I sing,\nHow by false Bera, wicked queen,\nThe murderous brother-hands were seen\nEach raised against a brother's life\"\n- Thiodolf of Huine"),
	-- married to Alf Yngling
	-- described as agreeable, very brisk and gay, but also false and wicked
})

DefineCharacter("hugleik-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 236.
	Name = "Hugleik",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "alf-yngling",
	Mother = "bera", -- his mother was presumably Bera, since she was Alf's wife
	-- described as very greedy
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
})

DefineCharacter("hake", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 236-238.
	Name = "Hake",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- correct?
	-- described as being a murderous combatant
	HistoricalTitles = {
		-- was king (of somewhere), and then invaded and conquered Sweden, becoming its king as well
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
	-- brother of Hagberd
})

DefineCharacter("hagberd", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 236.
	Name = "Hagberd",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden" -- correct?
	-- was king (of where?)
	-- brother of Hake
})

DefineCharacter("svipdag", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 236.
	Name = "Svipdag",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Trait = "upgrade-mighty", -- described as a powerful combatant
	-- came to the assistance of king Hugleik of Sweden when he was attacked by Hake
	-- brother of Geigad
})

DefineCharacter("geigad", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 236.
	Name = "Geigad",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Trait = "upgrade-mighty", -- described as a powerful combatant
	-- came to the assistance of king Hugleik of Sweden when he was attacked by Hake
	-- brother of Svipdag
})

DefineCharacter("starkod-the-old", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 236.
	Name = "Starkod",
	ExtraName = "the Old",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Trait = "upgrade-old",
	-- was a champion of Hake's
})

DefineCharacter("jorund-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 237-238.
	Name = "Jorund",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "yngve-yngling",
	Quote = _("\"Jorund has travelled far and wide,\nBut the same horse he must bestride\nOn which he made brave Gudlog ride.\nHe too must for a necklace wear\nHagbert's fell noose in middle air.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
})

DefineCharacter("eric-yngveson-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 237.
	Name = "Eric",
	ExtraName = "Yngveson", -- to differentiate him from the earlier Eric Yngling
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "yngve-yngling",
	Quote = _("\"By the fierce East-kings' cruel pride,\nGudlog must on the wild horse rider -\nThe wildest horse you e'er did see:\n'Tis Segur's steed - the gallows tree.\"\n- Eyvind Skaldaspiller")
})

DefineCharacter("gudlog", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 237-238.
	Name = "Gudlög",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Nordland",
	-- was captured in Denmark by Jorund and Eric Yngling, and then was killed by them
	Quote = _("\"By the fierce East-kings' cruel pride,\nGudlog must on the wild horse rider -\nThe wildest horse you e'er did see:\n'Tis Segur's steed - the gallows tree.\"\n- Eyvind Skaldaspiller"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "halogaland" -- was a king, presumably of Halogaland, since his son was king of that place
	}
})

DefineCharacter("gylog", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 238.
	Name = "Gylög",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Nordland",
	Father = "gudlog",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "halogaland"
	}
})

DefineCharacter("on-the-old-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 239-240.
	Name = "On", -- also known as Ane
	ExtraName = "the Old",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "jorund-yngling",
	Trait = "upgrade-cruel", -- described as wise and cruel
	Quote = _("\"In Upsal's town the cruel king\nSlaughtered his sons at Odin's shrine\nSlaughtered his sons with cruel knife,\nTo get from Odin length of life.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe" -- ruled intermittently at Västergotland when Uppsal was occupied by Danish invaders
	}
})

DefineCharacter("frode-mikillati-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 239.
	Name = "Frode",
	ExtraName = "Mikillati",
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	Father = "dan-mikillati-skjoldung",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "dane-tribe"
	}
	-- described as peace-loving
})

DefineCharacter("halfdan-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 239.
	Name = "Halfdan",
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	Father = "frode-mikillati-skjoldung",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "dane-tribe" -- ruled jointly with his brother Fridleif
	}
	-- described as a great warrior
})

DefineCharacter("fridleif-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 239.
	Name = "Fridleif",
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	Father = "frode-mikillati-skjoldung",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "dane-tribe" -- ruled jointly with his brother Halfdan
	}
	-- described as a great warrior
})

DefineCharacter("ole-the-bold-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 239.
	Name = "Ole",
	ExtraName = "the Bold",
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	Father = "fridleif-skjoldung",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe" -- ruled over the Swedes at Upsal for 25 years
	}
	-- was killed by Starkad the Old (probably the same as the Starkod the Old previously mentioned)
})

DefineCharacter("tunne", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 240-241.
	Name = "Tunne",
	Gender = "male",
	Type = "unit-teuton-worker",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	-- slave who was counsellor and treasurer to On the Old of Sweden
})

DefineCharacter("egil-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 240-241.
	Name = "Egil",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "on-the-old-yngling",
	Quote = _("\"The fair-haired son of Odin's race,\nWho fled before fierce Tunne's face,\nHas perished by the demon-beast\nWho roams the forests of the East.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
})

DefineCharacter("frode-the-bold-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 241-243.
	Name = "Frode",
	ExtraName = "the Bold",
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	-- helped Egil Yngling to defeat Tunne's forces
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "dane-tribe"
	}
})

DefineCharacter("ottar-vendelcrow-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 242-243.
	Name = "Ottar",
	ExtraName = "Vendelcrow", -- nickname because of the manner of his death
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "egil-yngling",
	Quote = _("\"By Danish arms the hero bold,\nOttar the Brave, lies stiff and cold.\nTo Vendel's plain the corpse was borne;\nBy eagles' claws the corpse is torn\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
	-- described as brave
})

DefineCharacter("vatte", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 243.
	Name = "Vätte",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	-- Vätte was an earl appointed by Frode the Bold to defend Denmark while he invaded Sweden
})

DefineCharacter("faste", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 243.
	Name = "Faste",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	-- Faste was an earl appointed by Frode the Bold to defend Denmark while he invaded Sweden
})

DefineCharacter("adils-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 243-245.
	Name = "Adils",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "ottar-vendelcrow-yngling",
	Quote = _("\"Witch-demons, I have heard men say,\nHave taken Adils' life away.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
})

DefineCharacter("helge-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 244-245.
	Name = "Helge",
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	Father = "halfdan-skjoldung", -- a king Halfdan of Denmark was his father, presumably the Halfdan previously mentioned
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "dane-tribe"
	}
})

DefineCharacter("ali-of-the-uplands", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 245.
	Name = "Ali",
	ExtraName = "of the Uplands",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- correct?
	-- fought against Adils Yngling, dying in battle
	-- was king of the Uplands
})

DefineCharacter("godgest", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 245.
	Name = "Godgest",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Nordland",
	-- Adils Yngling sent Godgest the horse Raven as a gift
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "halogaland"
	}
})

DefineCharacter("eystein-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 246.
	Name = "Eystein",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "adils-yngling",
	Quote = _("\"The raging tree-devourer fire\nRushed on the monarch its ire;\nFirst fell the castle timbers, then\nThe roof-beams - Eystein's funeral pyre.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
})

DefineCharacter("hogne-of-niardo", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 246.
	Name = "Hogne",
	ExtraName = "of Niardö",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "North Trondelag" -- from Niardö, an island in "North Drontheim" (North Trondheim)
})

DefineCharacter("solve", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 246.
	Name = "Solve",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- sea-king
	Civilization = "norse",
	ProvinceOfOrigin = "North Trondelag", -- from Niardö, an island in "North Drontheim" (North Trondheim)
	Father = "hogne-of-niardo",
	-- Solve slew Adils Yngling by burning
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe" -- Solve became king of Sweden after killing Adils Yngling, but eventually he was killed and Adils' son made king
		-- Solve had dominions in Jutland, but from the source it is not clear if he ruled over all of Jutland, or only a portion of it
	}
})

DefineCharacter("yngvar-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 246-247.
	Name = "Yngvar",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "eystein-yngling",
	Quote = _("\"On Esthland's strand, o'er Swedish graves,\nThe East Sea sings her song of waves;\nKing Yngvar's dirge is ocean's roar\nResounding on the rock-ribbed shore.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
})

DefineCharacter("onund-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 247-248.
	Name = "Onund",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "yngvar-yngling",
	Quote = _("\"Or else perhaps the wood-grown land,\nWhich long had felt his conquering hand,\nUprose at length in deadly strife,\nAnd pressed out Onund's hated life.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
})

DefineCharacter("ingiald-the-evil-adviser-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248-254.
	Name = "Ingiald",
	ExtraName = "the Evil-Adviser",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "onund-yngling",
	Quote = _("\"On his own hearth the fire he raised,\nA deed his foemen even praised;\nBy his own hand he perished so,\nAnd life for freedom did forego.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "swede-tribe"
	}
	-- married to Gauthild
})

DefineCharacter("yngvar", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248, 250.
	Name = "Yngvar",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- correct?
	-- lived during the reign of Onund over Sweden
	-- district-king of Fiadryndaland (in Sweden)
})

DefineCharacter("alf-yngvarson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248, 250.
	Name = "Alf",
	ExtraName = "Yngvarson", -- to differentiate him from the other Alf
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- correct?
	Father = "yngvar"
})

DefineCharacter("agnar-yngvarson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248, 250.
	Name = "Agnar",
	ExtraName = "Yngvarson", -- to differentiate him from the other Agnar
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- correct?
	Father = "yngvar"
})

DefineCharacter("svipdag-the-blind", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 248, 253.
	Name = "Svipdag",
	ExtraName = "the Blind",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- presumably from Fiundaland, where Upsal is located
	-- lived during the reign of Onund over Sweden
	-- district-king of Fiundaland (in Sweden)
	-- Ingiald Yngling's foster-father
})

DefineCharacter("gautvid", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248, 253.
	Name = "Gautvid",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "svipdag-the-blind"
	-- Ingiald Yngling's foster-brother
})

DefineCharacter("gaut", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248-249.
	Name = "Gaut",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland" -- presumably
})

DefineCharacter("gautrek-the-mild", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248-249.
	Name = "Gautrek",
	ExtraName = "the Mild",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- presumably
	Father = "gaut"
})

DefineCharacter("algaut", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248-249.
	Name = "Algaut",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- presumably
	Father = "gautrek-the-mild",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "geat-tribe" -- was a king - apparently of Got(a?)land
	}
})

DefineCharacter("olaf-skygne", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Olaf",
	ExtraName = "Skygne",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden" -- from Nerike
	-- king in Nerike
})

DefineCharacter("alofa", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Alofa",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- from Nerike
	Father = "olaf-skygne"
})

DefineCharacter("gauthild", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248-249, 255.
	Name = "Gauthild", -- name also written in the source as "Gautheld"
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- presumably
	Father = "algaut",
	Mother = "alofa"
})

DefineCharacter("spossniall", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 250.
	Name = "Spossniall",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	-- lived during the reign of Ingiald the Evil-Adviser over Sweden
	-- (district-)king of Nerike (in Sweden)
})

DefineCharacter("sighvat", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 250.
	Name = "Sighvat",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- correct?
	-- lived during the reign of Ingiald the Evil-Adviser over Sweden
	-- (district-)king of Aattundaland (in Sweden)
})

DefineCharacter("granmar", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 250-252.
	Name = "Granmar",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	-- lived during the reign of Ingiald the Evil-Adviser over Sweden
	-- (district-)king of Sondermanland (in Sweden)
	-- married to Hilda
})

DefineCharacter("hogne", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 252.
	Name = "Hogne",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland",
	-- lived during the reign of Ingiald the Evil-Adviser over Sweden
	-- ruled over East Gotaland
})

DefineCharacter("hildur", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 252.
	Name = "Hildur",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland",
	Father = "hogne"
})

DefineCharacter("hilda", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 252.
	Name = "Hilda",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "hogne"
	-- married to Granmar
})

DefineCharacter("folkvid", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 251.
	Name = "Folkvid",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- presumably from Fiundaland (where his father ruled), where Upsal is located
	Father = "svipdag-the-blind"
})

DefineCharacter("hylvid", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 251, 253.
	Name = "Hylvid",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- presumably from Fiundaland (where his father ruled), where Upsal is located
	Father = "svipdag-the-blind"
})

DefineCharacter("ylfing", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 251.
	Name = "Ylfing",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = -- ?
})

DefineCharacter("hiorvard-ylfing", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 251-252.
	Name = "Hiorvard",
	FamilyName = "Ylfing",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = -- ?
	Father = "ylfing",
	-- lived during the reign of Ingiald the Evil-Adviser over Sweden
	-- was a king (of where?)
	-- married to Hildigunna
})

DefineCharacter("hildigunna", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 251-252.
	Name = "Hildigunna",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "granmar",
	Mother = "hilda"
	-- described as beautiful
	-- married to Hiorvard Ylfing
})

DefineCharacter("aasa-the-evil-adviser-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 253-254.
	Name = "Aasa",
	ExtraName = "the Evil-Adviser",
	FamilyName = "Yngling",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "ingiald-the-evil-adviser-yngling",
	Mother = "gauthild"
	-- married Gudrod (king of Scania)
})

DefineCharacter("olaf-treefeller-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 253-256.
	Name = "Olaf",
	ExtraName = "Treefeller",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "ingiald-the-evil-adviser-yngling",
	Mother = "gauthild",
	Quote = _("\"The temple wolf, by the lake shores,\nThe corpse of Olaf now devours.\nThe clearer of forests died\nAt Odin's shrine by the lake side.\"\n- Thiodolf of Huine"), -- "temple wolf" in this instance means the fire which burned Olaf's body
	-- his foster-father was Bove, who lived in West Gotland
	-- married to Solveig
})

DefineCharacter("bove", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 253-254.
	Name = "Bove",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- from West Gotaland
	-- Gauthild sent her son to be fostered by Bove
})

DefineCharacter("savre-flettir", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 253-254.
	Name = "Savre",
	ExtraName = "Flettir",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- from West Gotaland
	Father = "bove"
})

DefineCharacter("gudrod", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 254.
	Name = "Gudrod",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Scania",
	-- lived during the reign of Ingiald the Evil-Adviser over Sweden
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "scania" -- king of Scania
	}
	-- married Aasa Yngling
})

DefineCharacter("halfdan", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 254.
	Name = "Halfdan",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Scania",
	-- Gudrod's brother
})

DefineCharacter("ivar-vidfadme", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 254-255.
	Name = "Ivar",
	ExtraName = "Vidfadme",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Scania",
	Father = "halfdan",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "scania", -- king of Scania
		"head-of-state", 0, 0, "norse", "swede-tribe" -- conquered Sweden
	}
})

DefineCharacter("solve-the-old", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Solve",
	ExtraName = "the Old",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hedmark" -- correct? from the Soloer Islands
	-- settled the Soloer Islands
})

DefineCharacter("solve-solvesson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Solve",
	ExtraName = "Solvesson",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hedmark", -- correct? from the Soloer Islands
	Father = "solve-the-old"
})

DefineCharacter("halfdan-guldtand", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Halfdan",
	ExtraName = "Guldtand",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hedmark", -- correct? from the Soloer Islands
	Father = "solve-solvesson"
})

DefineCharacter("solveig", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Solveig", -- also known as Solva
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Hedmark", -- correct? from the Soloer Islands
	Father = "halfdan-guldtand",
	-- married to Olaf Treefeller Yngling
})

DefineCharacter("ingiald-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 255, 257.
	Name = "Ingiald",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Varmland", -- (apparently) from Vermeland
	Father = "olaf-treefeller-yngling",
	Mother = "solveig"
	-- king of Værmeland (after his death his possessions went to his brother Halfdan)
})

DefineCharacter("halfdan-huitbein-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 255-257.
	Name = "Halfdan",
	ExtraName = "Huitbein",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Varmland", -- (apparently) from Vermeland
	Father = "olaf-treefeller-yngling",
	Mother = "solveig",
	Quote = _("\"Halfdan, esteemed by friends and foes,\nReceives at last life's deep repose:\nThe aged man at last, though late,\nYielded in Thoten to stern fate.\"\n- Thiodolf of Huine")
	-- ruled over Hedemark, and conquered Thoten, Hadeland and much of Westfold
	-- married to Asa
})

DefineCharacter("eystein-the-severe", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 257.
	Name = "Eystein",
	ExtraName = "the Severe",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Oppland" -- king of the Upland people (in Norway, so presumably Oppland)
})

DefineCharacter("asa", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 257.
	Name = "Asa",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Oppland", -- daughter of the "king of the Upland people" (in Norway, so presumably Oppland)
	Father = "eystein-the-severe"
	-- married to Halfdan Huitbein Yngling
})

DefineCharacter("eystein-halfdanson-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 257-258.
	Name = "Eystein",
	ExtraName = "Halfdanson", -- to differentiate him from the other Eystein Yngling
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hedmark", -- his father ruled over Hedemark
	Father = "halfdan-huitbein-yngling",
	Mother = "asa",
	Quote = _("\"Grim Hel, clutched his soul away;\nAnd now where Vodle's ocean bay\nReceives the ice-cold stream, the grave\nOf Eystein stands, the good, the brave!\"\n- Thiodolf of Huine")
	-- became king in Raumarige and Westfold after his father's death
	-- married to Hilde, daughter of Eric Agnarson
})

DefineCharacter("gudrod-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 257.
	Name = "Gudrod",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hedmark", -- his father ruled over Hedemark
	Father = "halfdan-huitbein-yngling",
	Mother = "asa"
})

DefineCharacter("sigtryg", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 257-258.
	Name = "Sigtryg",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = ? -- was king in the "Vend district" (where?)
})

DefineCharacter("agnar-sigtrygson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 257-258.
	Name = "Agnar",
	ExtraName = "Sigtrygson", -- to differentiate him from the other Agnar
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = ? -- his father was king in the "Vend district" (where?)
	Father = "sigtryg"
})

DefineCharacter("eric-agnarson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 257-258.
	Name = "Eric",
	ExtraName = "Agnarson", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Vestfold", -- king in Westfold
	Father = "agnar-sigtrygson"
	-- had no son, so his dominions were taken over by Halfdan Huitbein and his son Eystein after his death (Eystein was married to Eric's daughter Hilde)
})

DefineCharacter("hilde", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 257.
	Name = "Hilde",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Vestfold", -- her father was king in Westfold
	Father = "eric-agnarson"
})

DefineCharacter("skiold", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 258.
	Name = "Skiold",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- was a great warlock
	Civilization = "norse",
--	ProvinceOfOrigin = ? -- lived in Varna (where?)
	-- Eystein Yngling, son of Halfdan Huitbein, went with ships and raided Varna
	-- was a king
})

DefineCharacter("halfdan-the-mild-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 259.
	Name = "Halfdan",
	ExtraName = "the Mild", -- also knowns as "the Bad Entertainer"
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Vestfold", -- his father ruled over Vestfold
	Father = "eystein-halfdanson-yngling",
	Mother = "hilde", -- presumably, since Hilde was married to Eystein
	Trait = "upgrade-generous", -- described as generous, and as a great warrior
	Quote = _("\"By Hel's summons, a great king\nWas called away to Odin's Thing:\nKing Halfdan, he who dwelt of late\nAt Holtar, must obey grim Fate.\"\n- Thiodolf of Huine")
	-- married to Hlif, daughter of King Dag of Westmor
	-- his chief house was Holtar (in Vestfold, Norway)
})

DefineCharacter("dag-of-westmor", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 259.
	Name = "Dag",
	ExtraName = "of Westmor", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = ?, -- was king of Westmor (where?)
	-- married to Halfdan the Mild Yngling
})

DefineCharacter("hlif", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 259.
	Name = "Hlif",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
--	ProvinceOfOrigin = ?, -- her father was king of Westmor (where?)
	Father = "dag-of-westmor"
})

DefineCharacter("gudrod-the-magnificent-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 259-260.
	Name = "Gudrod",
	ExtraName = "the Magnificent", -- also knowns as "the Hunter"
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Vestfold", -- his father ruled over Vestfold
	Father = "halfdan-the-mild-yngling",
	Mother = "hlif", -- presumably, since Hlif was married to Halfdan
	-- died murdered by a man under the orders of his wife Aasa
	Quote = _("\"Gudrod is gone to his long rest,\nDespite of all his haughty pride,\nA traitor's spear has pierced his side\"\n- Thiodolf of Huine")
	-- married to Alfhild, and after her death married Aasa (daughter of Harald Redbeard)
	-- described as proud
})

DefineCharacter("alfarin", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 259.
	Name = "Alfarin",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Ostfold" -- king of Alfheim (the land between Glommen and Gotha rivers)
})

DefineCharacter("alfhild", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 259.
	Name = "Alfhild",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Ostfold", -- her father was king of Alfheim (the land between Glommen and Gotha rivers)
	Father = "alfarin"
})

DefineCharacter("olaf-geirstad-alf-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 259-261.
	Name = "Olaf",
	ExtraName = "Geirstad-Alf",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Vestfold", -- his father ruled over Vestfold
	Father = "gudrod-the-magnificent-yngling",
	Mother = "alfhild",
	Trait = "upgrade-strong", -- described as remarkably handsome, very strong and large of growth
	Quote = _("\"Long while this branch of Odin's stem\nWas the stout prop of Norway's realm;\nLong while King Olaf with just pride\nRuled over Westfold far and wide.\"\n- Thiodolf of Huine")
})

DefineCharacter("harald-redbeard", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 259-260.
	Name = "Harald",
	ExtraName = "Redbeard",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Agder", -- ruled over Agder
	HairVariation = "red-hair" -- presumably
})

DefineCharacter("aasa", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 259-260.
	Name = "Aasa",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Agder", -- her father ruled over Agder
	Father = "harald-redbeard",
	Trait = "upgrade-cruel" -- described as cruel
	-- married Gudrod the Magnificent Yngling
})

DefineCharacter("gyrder", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 259-260.
	Name = "Gyrder",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Agder",
	Father = "harald-redbeard"
})

DefineCharacter("halfdan-the-black-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 260-262.
	Name = "Halfdan",
	ExtraName = "the Black",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Vestfold", -- his father ruled over Vestfold
	Father = "gudrod-the-magnificent-yngling",
	Mother = "aasa",
	HairVariation = "black-hair",
	Year = 841, -- reign began
	DeathYear = 863 -- reign ended
})

DefineCharacter("alfgeir", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 260.
	Name = "Alfgeir",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Ostfold" -- ruled over (at least) Vingulmark
})

DefineCharacter("gandalf-of-vingulmark", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 260.
	Name = "Gandalf",
	ExtraName = "of Vingulmark", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Ostfold", -- ruled over Vingulmark
	Father = "alfgeir"
	-- he lived during Olaf Geirstad-Alf Yngling's reign
})

DefineCharacter("eystein-the-great", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 261.
	Name = "Eystein",
	ExtraName = "the Great",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Oppland" -- was king of Oppland
})

DefineCharacter("hogne-eysteinson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 261.
	Name = "Hogne",
	ExtraName = "Eysteinson", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Oppland", -- his father was king of Oppland
	Father = "eystein-the-great"
	-- he lived during Olaf Geirstad-Alf Yngling's reign
})

DefineCharacter("rognvald-mountain-high-yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 261.
	Name = "Rognvald",
	ExtraName = "Mountain-High",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Vestfold", -- his father ruled over Vestfold
	Father = "olaf-geirstad-alf-yngling",
	Quote = _("\"Rognvald, who knew so well to guide\nThe wild sea-horses through the tide:\nThe 'Mountain-high' was the proud name\nBy which the king was known to fame.\"\n- Thiodolf of Huine") -- "wild sea-horses" means ships
})

DefineCharacter("thiodolf-of-huine", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 227, 261.
	Name = "Thiodolf",
	ExtraName = "of Huine",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Vestfold", -- he composed the Ynglingatal for Rognvald Mountain-High Yngling of Vestfold
	-- composed the Ynglingatal for Rognvald
	AuthoredWorks = {"upgrade-work-ynglingatal"}
})

DefineCharacter("svan-the-red", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Svan",
	ExtraName = "the Red",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- one of his descendants was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("saefari", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Saefari",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- one of his descendants was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "svan-the-red"
})

DefineCharacter("ulf", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Ulf",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- his grandson was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "saefari"
})

DefineCharacter("alf-the-old", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Alf",
	ExtraName = "the Old",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- his son was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "ulf"
})

DefineCharacter("instein", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 100-101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Instein", -- one of the warriors of King Half of Horthaland
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "hordaland",
	ProvinceOfOrigin = "Hordaland",
--	Year = ?,
--	DeathYear = ?,
	Father = "alf-the-old"
})

DefineCharacter("saekonung", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101.
	Name = "Saekonung",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("svava", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101.
	Name = "Svava",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("klypp", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Klypp",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("ketil-hortha-kari", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Ketil", -- married to Hildigun; the semi-mythical Ketil Hortha-Kari, ancestor of many Icelandic families
	ExtraName = "Hortha-Kari",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "klypp"
})

DefineCharacter("hildigun", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Hildigun", -- married to Ketil; also known as Hildiguth
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "saekonung",
	Mother = "svava"
})

DefineCharacter("frodi", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Frodi",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?
})
-- "Frodi came before Kari" is said later; could this be the same Frodi as this one? The Kari here is perhaps Ketil Hortha-Kari, but he came before this Frodi, not after; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 223-224.

DefineCharacter("friaut", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Friaut",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "ketil-hortha-kari",
	Mother = "hildigun"
})

DefineCharacter("hledis", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Hledis", -- adorned with golden bracelets
	Gender = "female",
	Type = "unit-teuton-priest", -- priestess
	Civilization = "norse",
	Faction = "hordaland",
	ProvinceOfOrigin = "Hordaland", -- her husband was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "frodi",
	Mother = "friaut"
})

DefineCharacter("ottar", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 100-101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Ottar", -- in the Norse myths, human lover of the goddess Freya; made a bet with Argantyr for who had the better lineage
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "hordaland",
	ProvinceOfOrigin = "Hordaland", -- his father was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "instein",
	Mother = "hledis"
})

DefineCharacter("nokkvi", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Nokkvi",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("nanna", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Nanna", -- her son married Instein's sister
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "nokkvi"
})

DefineCharacter("skekil", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Skekil", -- also known as Skekkil
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("olmod", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Olmod", -- married to Skurhold; also known as Olmoth
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "ketil-hortha-kari"
})

DefineCharacter("skurhold", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 101-102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Skurhold", -- married to Olmod; also known as Skurhild
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "skekil"
})

DefineCharacter("isulf", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Isulf", -- also known as Isolf
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "olmod",
	Mother = "skurhold" -- presumably, since she was the wife of his father
})

DefineCharacter("osulf", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Osulf", -- also known as Osolf
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "olmod",
	Mother = "skurhold" -- presumably, since she was the wife of his father
})

DefineCharacter("hild", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 223-224.
	Name = "Hild",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("half", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Half", -- also known as Hoalf; king of Horthaland (the Halfsrekkar); Instein was one of his warriors
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "hordaland",
	ProvinceOfOrigin = "Hordaland",
--	Year = ?,
--	DeathYear = ?,
	Mother = "hild"
})

DefineCharacter("arngrim", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102.
	Name = "Arngrim", -- married to Eyfura
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- his sons were born in the island of Bolmsö off Smaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("eyfura", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102.
	Name = "Eyfura", -- married to Arngrim
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- her sons were born in the island of Bolmsö off Smaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("hervard", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Hervard", -- berserk; born in the island of Bolmsö long before Ottar's time; also known as Hervarth
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("hjorvard", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 225, 227.
	Name = "Hjorvard", -- berserk; born in the island of Bolmsö long before Ottar's time; also known as Hjorvarth
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("hrani", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Hrani", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("argantyr", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Argantyr", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("bui", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Bui", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("brami", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Brami", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("barri", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Barri", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("reifnir", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Reifnir", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("tind", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Tind", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("tyrfing", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Tyrfing", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("hadding", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Hadding", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("hadding-ii", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Hadding", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("hvedna", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Hvedna", -- wife of king Halfdan of Denmark (likely to not be Halfdan the Old, who had another wife)
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- her father (if indeed the same as the previously-mentioned berserk) was born in the island of Bolmsö off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "hjorvard" -- her father was called Hjorvard; presumably the same berserk mentioned previously
})

DefineCharacter("haki", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Haki", -- the best of Hvedna's sons
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- his grandfather (if indeed the same as the previously-mentioned berserk) was born in the island of Bolmsö off Smaland
--	Year = ?,
--	DeathYear = ?,
	Mother = "hvedna"
})

DefineCharacter("hrorek-the-ring-giver", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Hrorek", -- also known as Hrörek; was killed by his father-in-law Ivar
	ExtraName = "the Ring Giver", -- or "Ring-Giver"
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- his father-in-law was king of Sweden
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("ivar", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Ivar", -- king of Sweden
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "sweden",
	ProvinceOfOrigin = "Sweden",
--	Year = ?,
--	DeathYear = ?,
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "sweden"
	}
})

DefineCharacter("aud-the-profound", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Aud", -- wife of Hrorek the Ring Giver; after her father Ivar killed her husband, she fled with her son Harald to Russia and married King Rathbard
	ExtraName = "the Profound",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Faction = "sweden",
	ProvinceOfOrigin = "Sweden", -- her father was king of Sweden
--	Year = ?,
--	DeathYear = ?,
	Father = "ivar"
})

DefineCharacter("harald-war-tooth", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Harald", -- had a warring career in Norway; died in Bravalla-field at the hands of his nephew, Sigurd Ring (son of Randver)
	ExtraName = "War Tooth", -- or "Battle-Tooth"
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "sweden",
	ProvinceOfOrigin = "Sweden", -- his grandfather was king of Sweden
--	Year = ?,
--	DeathYear = ?,
	Father = "hrorek-the-ring-giver",
	Mother = "aud-the-profound"
})

DefineCharacter("rathbard", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Rathbard", -- king
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- correct?
	ProvinceOfOrigin = "Russia", -- from Russia
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("randver", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Randver",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- correct?
	ProvinceOfOrigin = "Russia", -- his father was a king from Russia
--	Year = ?,
--	DeathYear = ?,
	Father = "rathbard",
	Mother = "aud-the-profound"
})

DefineCharacter("sigurd-ring", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Sigurd",
	ExtraName = "Ring",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- correct?
	ProvinceOfOrigin = "Russia", -- his grandfather was a king from Russia
--	Year = ?,
--	DeathYear = ?,
	Father = "randver"
})

DefineCharacter("skelfir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 221.
	Name = "Skelfir", -- a mythical king in "the East", from whom the Skilfings spring
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("helgi-hundingsbane-ylfing", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 221.
	Name = "Helgi",
	ExtraName = "Hundingsbane",
	FamilyName = "Ylfing",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("gautrek", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Gautrek",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- his son was king of Gautland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("hrolf-the-old", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Hrolf", -- King Hrolf Gautreksson of Gautland, also known as Hrolf the Old
	ExtraName = "the Old",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "gautland",
	ProvinceOfOrigin = "Gotaland",
--	Year = ?,
--	DeathYear = ?,
	Father = "gautrek",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "gautland"
	}
})

DefineCharacter("gunnar-the-bulwark", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Gunnar",
	ExtraName = "the Bulwark",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "gautland",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("thorkel", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Thorkel",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "gautland",
	ProvinceOfOrigin = "Gotaland", -- his son was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("grim-the-hardy", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Grim",
	ExtraName = "the Hardy",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "gautland",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?,
	Father = "thorkel"
})

DefineCharacter("thorir-the-iron-shield", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Thorir",
	ExtraName = "the Iron-Shield",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "gautland",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("ulf-the-gaper", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Ulf",
	ExtraName = "the Gaper",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "gautland",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("brodd", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Brodd",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "gautland",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("horvir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Hörvir",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "gautland",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("eric-red", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 161.
	Name = "Eric",
	ExtraName = "Red",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Iceland",
	Year = 986 -- in the Spring of 986 Eric Red migrated from Iceland to Greenland with Heriulf Bardson, settling in Brattalid (in Ericsfiord)
})

DefineCharacter("heriulf-bardson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 161.
	Name = "Heriulf",
	ExtraName = "Bardson",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Iceland",
	Year = 986 -- in the Spring of 986 migrated from Iceland to Greenland with Eric Red, settling in Heriulfsness
})

DefineCharacter("biorne", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 161.
	Name = "Biorne",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Iceland", -- correct?
	Father = "heriulf-bardson",
	Year = 986 -- was in Norway when his father Heriulf Bardson migrated from Iceland to Greenland in the Spring of 986
})

DefineCharacter("leif", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 162-163.
	Name = "Leif",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Iceland", -- correct?
	Father = "eric-red",
	Year = 1000 -- went forth from Greenland c. 1000 with a ship he bought from Biorne to find the lands Biorne had seen; Leif's crew had 35 men
	-- Leif named three countries he found: Hellaland (a plain of flat slaty stones), Markland (a wooded country with many cliffs of white sand) and Vinland (a country with vines and grapes)
})

DefineCharacter("thorwald", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 163.
	Name = "Thorwald",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Iceland", -- correct?
	Father = "eric-red", -- presumably, since he was Leif's brother
	Year = 1002 -- went forth from Greenland in 1002 with Leif's ship to Vinland
	-- Thorwald named a headland Kialarness
	-- Thorwald died in an attack from the Skraelings (probably Indians), and was buried at a place named Crossness
})

DefineCharacter("swerre", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 115.
	Name = "Swerre", -- king (presumably) of Norway
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "norway",
	ProvinceOfOrigin = "Akershus", -- put the character in the province where the Norwegian capital is, since we don't know from where in Norway he came
	Year = 1177, -- reign began
	DeathYear = 1203, -- reign ended
	HistoricalTitles = {
		"head-of-state", 1177, 1203, "norse", "norway"
	}
})

DefineCharacter("magnus-the-saint", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 125, 128.
	Name = "Magnus", -- Earl (presumably) of Orkney, his sister was married to Koll; in his youth carried the dishes to the royal table
	ExtraName = "the Saint",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "orkney",
	ProvinceOfOrigin = "Orkney", -- presumably
	DeathYear = 1129, -- presumably, since this is the date Kala was made Earl of Orkney
	HistoricalTitles = {
		"head-of-state", 0, 1129, "norse", "orkney"
	}
})

DefineCharacter("koll", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 125.
	Name = "Koll", -- husband of the sister of Earl Magnus the Saint
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "orkney",
	ProvinceOfOrigin = "Orkney" -- since his son was Earl of Orkney
})

DefineCharacter("kala", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 125.
	Name = "Kala", -- Earl of Orkney; was made earl under the name of Earl Rognvald
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "orkney",
	ProvinceOfOrigin = "Orkney", -- presumably
	Year = 1129, -- was made Earl of Orkney
	Father = "koll",
	HistoricalTitles = {
		"head-of-state", 1129, 0, "norse", "orkney"
	}
})

DefineCharacter("arnold", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Arnold", -- Bishop of Greenland
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- presumably
	ProvinceOfOrigin = "Scania", -- presumably, since he was ordained there
	Deities = {"christian-god"},
	Year = 1121 -- ordained Bishop of Greenland by the Archbishop of Lund (in Scania)
})

DefineCharacter("sturla-thordarson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 188.
	Name = "Sturla",
	ExtraName = "Thordarson",
	Gender = "male",
	Type = "unit-teuton-priest", -- he was a Godar (a function which was originally both priest and judge, but eventually became more and more only the latter)
	Civilization = "norse",
	ProvinceOfOrigin = "Iceland" -- presumably, since his son was from there
})

DefineCharacter("snorri-sturlson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 12, 188, 192, 195-196, 198-199; Source: Snorri Sturlson, "The Prose Edda", 1916, p. XI.
	Name = "Snorri",
	ExtraName = "Sturlson",
	Gender = "male",
	Type = "unit-teuton-priest", -- since his father was a Godar and that was a hereditary position; was a learned man in a number of old legends and mythologies
	Civilization = "norse",
	ProvinceOfOrigin = "Iceland",
	Father = "sturla-thordarson",
	Trait = "upgrade-ambitious", -- described as greedy, selfish, ambitious, rapacious, bold, unprincipled and of intellectual powers far above that of his contemporaries
	Year = 1178, -- born in 1178 at Hvam, in western Iceland
	DeathYear = 1241, -- Snorri was murdered by his three sons-in-law, Gizurr Thórvaldsson, Kolbein and Arne, in Iceland in September 1241
	ViolentDeath = true
})

DefineCharacter("hakon", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Hakon", -- his son was King of Norway, so presumably he was too
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "norway",
	ProvinceOfOrigin = "Akershus", -- put the character in the province where the Norwegian capital is, since we don't know from where in Norway he came
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "norway" -- his son was King of Norway, so presumably he was too; date estimated; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	}
})

DefineCharacter("hakon-hakonson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Hakon", -- King of Norway
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "norway",
	ProvinceOfOrigin = "Akershus", -- put the character in the province where the Norwegian capital is, since we don't know from where in Norway he came
	Year = 1261, -- annexed the Norse settlements in Greenland to Norway in 1261 AD
	Father = "hakon",
	HistoricalTitles = {
		"head-of-state", 1261, 0, "norse", "norway"
	}
})

DefineCharacter("alf", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Alf", -- also known as Alfus; officiated in Greenland; presumably was Bishop of Greenland
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- presumably
	Deities = {"christian-god"},
--	ProvinceOfOrigin = "Greenland", -- possibly he was from elsewhere, but we have no information about that
	DeathYear = 1378 -- died in Greenland
})

DefineCharacter("margaret", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 146-147.
	Name = "Margaret", -- Queen of Denmark, Sweden and Norway
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Faction = "denmark",
--	ProvinceOfOrigin = "?",
	Year = 1387, -- the three northern crowns devolved to her in 1387 AD
	HistoricalTitles = {
		"head-of-state", 1387, 0, "norse", "denmark", -- the three northern crowns devolved to her in 1387 AD
		"head-of-state", 1387, 0, "norse", "sweden",
		"head-of-state", 1387, 0, "norse", "norway"
	}
})

DefineCharacter("henry-of-greenland", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Henry", -- appointed Bishop of Greenland, but never arrived there
	ExtraName = "of Greenland", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- presumably
	Deities = {"christian-god"},
--	ProvinceOfOrigin = "?",
	Year = 1389 -- appointed Bishop of Greenland
})

DefineCharacter("askil", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Askil", -- appointed Bishop of Greenland to succeed Henry in case he was dead; never reached Greenland
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- presumably
	Deities = {"christian-god"},
--	ProvinceOfOrigin = "?",
	Year = 1406 -- appointed Bishop of Greenland to succeed Henry in case he was dead
})

DefineCharacter("andreas", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Andreas",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- presumably
--	ProvinceOfOrigin = "Greenland" -- accurate? his son was Bishop of Greenland
})

DefineCharacter("endrede", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Endrede", -- Bishop of Greenland
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- presumably
	Deities = {"christian-god"},
--	ProvinceOfOrigin = "Greenland", -- accurate?
	Year = 1409, -- executed a marriage settlement at Garda (the episcopal seat of Greenland) in 1409
	Father = "andreas"
})

DefineCharacter("magnus-eyolfson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 159.
	Name = "Magnus",
	ExtraName = "Eyolfson",
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- correct?
	Deities = {"christian-god"},
	ProvinceOfOrigin = "Iceland", -- correct?
	Year = 1477 -- was bishop of Skalholt (in Iceland) in 1477
})

DefineCharacter("thormod-torfaeus", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 154-155.
	Name = "Thormod",
	FamilyName = "Torfaeus", -- "Torfæus"
	Gender = "male",
	Type = "unit-teuton-priest", -- put as a priest since there isn't any other unit type more appropriate for a writer
	Civilization = "norse",
	ProvinceOfOrigin = "Akershus", -- Norwegian? put the character in the province where the Norwegian capital is, since we don't know from where in Norway he came (if he's Norwegian at all)
	Year = 1707, -- his "Historiae Vinlandiae Antiquae" dates from 1707
	AuthoredWorks = {"upgrade-work-historiae-vinlandiae-antiquae"}
})

DefineCharacter("hans-egide", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 147.
	Name = "Hans", -- Norwegian minister who settled in Greenland
	FamilyName = "Egide",
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse",
	Deities = {"christian-god"},
	ProvinceOfOrigin = "Akershus", -- put the character in the province where the Norwegian capital is, since we don't know from where in Norway he came
	Year = 1721 -- settled in Greenland amongst the eskimos as a missionary in 1721
})
