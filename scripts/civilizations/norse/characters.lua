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

DefineCharacter("Fiölner Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 225-227.
	Name = "Fiölner",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Trait = "upgrade-mighty", -- described as powerful
	-- in the Ynglinga saga, Fiölner was a son of Yngve, but it isn't chronologically feasible for him to be a son of Yngve given how many generations there are between him and Halfdan the Black
	Quote = _("\"And when brave Frode came, he found\nSwithiod's dark chief, Fiolner, drowned.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	},
	LiteraryAppearances = {"upgrade-work-ynglingatal"}
})

DefineCharacter("Fridfrode Skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 226-227.
	Name = "Fridfrode",
	NameElements = {
		"compound", "prefix", "old-norse", "noun", "no-case", "Friđr", -- presumably
--		"compound", "suffix", -- ?
	},
	FamilyName = "Skjoldung", -- presumably
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- ruled in Leidre
	DateReferenceCharacter = "Fiölner Yngling", -- he was a friend of Fiölner's
	-- described as brave
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Dane Tribe"
	}
})

DefineCharacter("Svegðir Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 227-228; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 608.
	Name = "Svegðir", -- as given by Cleasby; in the Heimskringla translation it is given as "Swegder" instead
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Fiölner Yngling",
	Quote = _("\"The dauntless hero rushing on,\nPassed through the yawning mouth of stone:\nIt yawned - it shut - the hero fell\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
})

DefineCharacter("Vana", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 227.
	Name = "Vana",
	Gender = "female",
	Type = "unit-germanic-archer",
	Civilization = "celt", -- from Vanaland/Vanaheim
	ProvinceOfOrigin = "Don"
	-- wife of Svegðir's
})

DefineCharacter("Vanland Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 227-228.
	Name = "Vanland",
	NameElements = {
--		"compound", "prefix", -- ?
		"compound", "suffix", "old-norse", "noun", "Land" -- presumably
	},
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Svegðir Yngling",
	Mother = "Vana",
	Quote = _("\"And Vanland, in a fatal hour,\nWas dragg'd by Grimhild's daughter's power\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
})

DefineCharacter("Aud the Rich", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 229.
	Name = "Aud",
	ExtraName = "the Rich",
	Gender = "female", -- presumably, since another character named "Aud" was a female
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden" -- presumably
})

DefineCharacter("Visbur Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 228-229.
	Name = "Visbur",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Finland",
	Father = "Vanland Yngling",
	Mother = "Drisa",
	Quote = _("\"Have the fire-dogs' fierce tongues yelling\nLapt Visbur's blood on his own hearth?\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
	-- married the daughter of Aud the Rich
})

DefineCharacter("Gisle Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 229.
	Name = "Gisle",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Visbur Yngling"
	-- his mother was the daughter of Aud the Rich
})

DefineCharacter("Ond Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 229.
	Name = "Ond",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Visbur Yngling"
	-- his mother was the daughter of Aud the Rich
})

DefineCharacter("Domald Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 229-230.
	Name = "Domald",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Visbur Yngling",
	Quote = _("\"But Domald dies by bloody arms,\nRaised not by foes in war's alarms,\nRaised by his Swedish liegeman's hand,\nTo bring good seasons to the land.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
})

DefineCharacter("Domar Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 229-230.
	Name = "Domar",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Domald Yngling",
	Quote = _("\"I have asked wise men to tell\nWhere Domar rests, and they knew well.\nDomar, on Fyrie's wide-spread ground,\nWas burned, and laid on Yngve's mound.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
})

DefineCharacter("Rig Skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 231.
	Name = "Rig",
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- apparently from Denmark
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Dane Tribe" -- apparently
	}
})

DefineCharacter("Daup Skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 231.
	Name = "Daup",
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- apparently from Denmark
	Father = "Rig Skjoldung",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Dane Tribe" -- apparently
	}
})

DefineCharacter("Dan Mikillati Skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 231.
	Name = "Dan",
	ExtraName = "Mikillati",
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	Father = "Daup Skjoldung", -- presumably, since Dan Mikillati was Drott's brother, and she was a daughter of Daup
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Dane Tribe"
	}
})

DefineCharacter("Drott Skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 231.
	Name = "Drott",
	FamilyName = "Skjoldung", -- correct?
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- apparently from Denmark
	Father = "Daup Skjoldung", 
})

DefineCharacter("Dyggve the Brave Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 230-231.
	Name = "Dyggve",
	ExtraName = "the Brave",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Domald Yngling",
	Mother = "Drott Skjoldung",
	Quote = _("\"For Loke's daughter in her house\nOf Yngve's race would have a spouse;\nTherefore the fell-one snatched away\nBrave Dyggve from the light of day.\"\n- Thiodolf of Huine"),
	Trait = "upgrade-mighty", -- described as brave and mighty
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
})

DefineCharacter("Dag the Wise Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 231-233.
	Name = "Dag",
	NameElements = {"word", "old-norse", "noun", "Dagr"}, -- presumably
	ExtraName = "the Wise",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Dyggve the Brave Yngling",
	Quote = _("\"Varva was ravaged, and the strife\nWas ended when the monarch's life\nWas ended too - the great Dag fell\nBy the hay-fork of a base thrall!\"\n- Thiodolf of Huine"),
	Trait = "upgrade-wise", -- described as wise, brave and mighty
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
})

DefineCharacter("Agne Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 233-234.
	Name = "Agne",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Dag the Wise Yngling",
	Quote = _("\"How do ye like her, Agne's men\nThink ye that any chief again\nWill court the fate your chief befell,\nTo ride on wooden horse to hell?\"\n- Thiodolf of Huine"),
	Trait = "upgrade-mighty", -- described as powerful, celebrated and expert
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
	-- Skialf was married to Agne after he invaded Finland, killed her father and took her and her brother to Sweden
})

DefineCharacter("Skialf", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 233-234.
	Name = "Skialf", -- put her here rather than in the Finnish character file because that one is loaded before the Norse one, and she uses Agne Yngling as her date reference character
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "finnish", -- presumably
	ProvinceOfOrigin = "Finland",
	Father = "Froste",
	DateReferenceCharacter = "Agne Yngling", -- Skialf was married to Agne after he invaded Finland, killed her father and took her and her brother to Sweden
	Quote = _("\"How do ye like the high-souled maid,\nWho, with the grim Fate-goddess' aid,\nAvenged her sire? Made Swithiod's king\nThrough air in golden halter swing?\"\n- Thiodolf of Huine")
})

DefineCharacter("Alric Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 234.
	Name = "Alric",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-ritter", -- horseriding described as being customary for him
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Agne Yngling",
	Quote = _("\"Alric fell, by Eric slain,\nEric's life-blood dyed the plain.\nBrother fell by brother's hand\"\n- Thiodolf of Huine"),
	Trait = "upgrade-mighty", -- described as powerful and expert at all feats of arms
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe" -- Swedish king together with his brother Eric, but it was Alric's sons who went on to rule after their death
	}
})

DefineCharacter("Eric Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 234.
	Name = "Eric",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-ritter", -- horseriding described as being customary for him
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Agne Yngling",
	Quote = _("\"Alric fell, by Eric slain,\nEric's life-blood dyed the plain.\nBrother fell by brother's hand\"\n- Thiodolf of Huine"),
	Trait = "upgrade-mighty", -- described as powerful and expert at all feats of arms
	-- Swedish king together with his brother Alric, but it was Alric's sons who went on to rule after their death
})

DefineCharacter("Eymund", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Eymund", -- king of Holmgarth (i.e. Russia); described as "the strongest of men"
	NameElements = {
--		"compound", "prefix", -- ?
		"compound", "suffix", "old-norse", "noun", "Mund" -- presumably (could also be "Mundr")
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- accurate?
	Trait = "upgrade-strong",
	ProvinceOfOrigin = "Russia"
})

DefineCharacter("Halfdan the Old Skjoldung", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 221-223.
	Name = "Halfdan", -- mythical king of Denmark; had an ice-cold sword; was strengthened by king Eymund of Holmgarth and slew Sigtrygg with the ice-cold sword; married Eymund's daughter Almveig
	NameElements = {
		"compound", "prefix", "old-norse", "adjective", "no-case", "Halfr", -- presumably; used "no-case" to avoid the nominative ending "-r"
--		"compound", "suffix", -- ?
	},
	ExtraName = "the Old",
	FamilyName = "Skjoldung", -- the text gives Halfdan the Old both as "the foremost of the Skjoldungs", and as a progenitor of the Skjoldungs (along with the Skilfings, Othlings and Ynglings) himself
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Denmark",
	ProvinceOfOrigin = "Zealand", -- since he is a Danish king
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Denmark"
	}
})

DefineCharacter("Almveig", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Almveig", -- wife of Halfdan the Old Skjoldung; also known as Alvig; bore Halfdan the Old eighteen sons (nine of them being in a single birth); the nine who were the result of a single birth were all slain, while the other nine are held to be the ancestors of the most famous heroes in Norse myths
	NameElements = {
		"compound", "prefix", "old-norse", "noun", "no-case", "Almr", -- presumably
		"compound", "suffix", "old-norse", "noun", "Veig" -- presumably
	},
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse", -- accurate?
	ProvinceOfOrigin = "Russia", -- since her father was king there
	Father = "Eymund"
})

DefineCharacter("Authi", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 221-222.
	Name = "Authi", -- son of Halfdan the Old, from whom the Othlings spring
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Denmark",
	ProvinceOfOrigin = "Zealand", -- since his father was king of Denmark
	Father = "Halfdan the Old Skjoldung",
	Mother = "Almveig" -- presumably, since she was married to Halfdan the Old
})

DefineCharacter("Ali", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Ali",
	NameElements = {"word", "old-norse", "verb", "present", "Ali"}, -- presumably; also, not certain if that is the present participle of the verb, or another participle form
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Denmark",
	ProvinceOfOrigin = "Zealand", -- since his father was king of Denmark
	Father = "Halfdan the Old Skjoldung",
	Mother = "Almveig" -- presumably, since she was married to Halfdan the Old
})

DefineCharacter("Sigtrygg", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Sigtrygg", -- Halfdan the Old slew him with an ice-cold sword
	NameElements = {
		"compound", "prefix", "old-norse", "noun", "no-case", "Sigr", -- presumably; used "no-case" to avoid the nominative ending "-r"
		"compound", "suffix", "old-norse", "adjective", "Tryggr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand" -- possible, since Halfdan the Old was the king of Denmark
})

DefineCharacter("Dag the Great", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 235.
	Name = "Dag", -- ancestor of the Daglings; married to Thora
	NameElements = {"word", "old-norse", "noun", "Dagr"}, -- presumably
	ExtraName = "the Great",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Denmark",
	ProvinceOfOrigin = "Zealand", -- since his father was king of Denmark
	Father = "Halfdan the Old Skjoldung",
	Mother = "Almveig", -- presumably, since she was married to Halfdan the Old
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Dane Tribe" -- said to be a king in the Ynglinga Saga, and his ancestor was king of Denmark
	}
})

DefineCharacter("Thora", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Thora", -- married to Dag, and bore him "the bravest of fighters"
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Faction = "Denmark",
	ProvinceOfOrigin = "Zealand", -- since her husband's father was king of Denmark
})

DefineCharacter("Frathmar Dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Frathmar",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Denmark",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
	Father = "Dag the Great",
	Mother = "Thora"
})

DefineCharacter("Gyrth Dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Gyrth",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Denmark",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
	Father = "Dag the Great",
	Mother = "Thora"
})

DefineCharacter("Frekis Dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Frekis",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Denmark",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
	Father = "Dag the Great",
	Mother = "Thora"
})

DefineCharacter("Frekis II Dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Frekis",
	ExtraName = "II", -- to differentiate him from his brother
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Denmark",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
	Father = "Dag the Great",
	Mother = "Thora"
})

DefineCharacter("Am Dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Am",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Denmark",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
	Father = "Dag the Great",
	Mother = "Thora"
})

DefineCharacter("Jofurmar Dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Jofurmar",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Denmark",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
	Father = "Dag the Great",
	Mother = "Thora"
})

DefineCharacter("Alf the Old Dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Alf", -- apparently isn't the same Alf the Old who is father of Instein, since they have different fathers themselves
	NameElements = {
		"word", "old-norse", "noun", "Alfr" -- presumably
	},
	ExtraName = "the Old",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Denmark",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
	Father = "Dag the Great",
	Mother = "Thora"
})

DefineCharacter("Dagrid Dagling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 235.
	Name = "Dagrid",
	NameElements = {
		"compound", "prefix", "old-norse", "noun", "no-case", "Dagr", -- presumably
--		"compound", "suffix", -- ?
	},
	FamilyName = "Dagling",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- presumably, since her father's father was a Danish king
	Father = "Dag the Great",
	Mother = "Thora" -- presumably, since Dag was her father and Thora was the mother of his other children
})

DefineCharacter("Yngve Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 235-236.
	Name = "Yngve",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Alric Yngling",
	Quote = _("\"How wretched Alf with bloody knife\nGored Yngve's heart, and Yngve's blade\nAlf on the bloody threshold laid.\"\n- Thiodolf of Huine"),
	Trait = "upgrade-strong" -- described as a great warrior, handsome expert in all exercises, strong and very sharp in battle, generous and full or mirth
	-- was king of Sweden together with his brother Alf, but it was Alf's son succeeded them
})

DefineCharacter("Alf Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 235-236.
	Name = "Alf",
	NameElements = {"word", "old-norse", "noun", "Alfr"}, -- presumably
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Alric Yngling",
	Mother = "Dagrid Dagling",
	Quote = _("\"How wretched Alf with bloody knife\nGored Yngve's heart, and Yngve's blade\nAlf on the bloody threshold laid.\"\n- Thiodolf of Huine"),
	Trait = "upgrade-harsh", -- described as silent, harsh, unfriendly and wretched
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe" -- was king of Sweden together with his brother Yngve, and Alf's son succeeded them
	}
	-- married Bera
})

DefineCharacter("Bera", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 235.
	Name = "Bera",
	NameElements = {"word", "old-norse", "noun", "Bera"}, -- presumably
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- presumably, since her husband is from there
	Quote = _("\"A deed of dreadful note I sing,\nHow by false Bera, wicked queen,\nThe murderous brother-hands were seen\nEach raised against a brother's life\"\n- Thiodolf of Huine"),
	-- married to Alf Yngling
	-- described as agreeable, very brisk and gay, but also false and wicked
})

DefineCharacter("Hugleik Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 236.
	Name = "Hugleik",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Alf Yngling",
	Mother = "Bera", -- his mother was presumably Bera, since she was Alf's wife
	-- described as very greedy
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
})

DefineCharacter("Hake", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 236-238.
	Name = "Hake",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- correct?
	DateReferenceCharacter = "Hugleik Yngling",
	-- described as being a murderous combatant
	HistoricalTitles = {
		-- was king (of somewhere), and then invaded and conquered Sweden, becoming its king as well
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
	-- brother of Hagberd
})

DefineCharacter("Hagberd", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 236.
	Name = "Hagberd",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- correct?
	-- was king (of where?)
	DateReferenceCharacter = "Hake" -- brother of Hake
})

DefineCharacter("Svipdag", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 236.
	Name = "Svipdag",
	NameElements = {
--		"compound", "prefix", -- ?
		"compound", "suffix", "old-norse", "noun", "Dagr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Trait = "upgrade-mighty", -- described as a powerful combatant
	DateReferenceCharacter = "Hugleik Yngling" -- came to the assistance of king Hugleik of Sweden when he was attacked by Hake
	-- brother of Geigad
})

DefineCharacter("Geigad", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 236.
	Name = "Geigad",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Trait = "upgrade-mighty", -- described as a powerful combatant
	DateReferenceCharacter = "Hugleik Yngling" -- came to the assistance of king Hugleik of Sweden when he was attacked by Hake
	-- brother of Svipdag
})

DefineCharacter("Starkod the Old", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 236.
	Name = "Starkod",
	ExtraName = "the Old",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Trait = "upgrade-old",
	DateReferenceCharacter = "Hake" -- was a champion of Hake's
})

DefineCharacter("Jorund Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 237-238.
	Name = "Jorund",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Yngve Yngling",
	Quote = _("\"Jorund has travelled far and wide,\nBut the same horse he must bestride\nOn which he made brave Gudlog ride.\nHe too must for a necklace wear\nHagbert's fell noose in middle air.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
})

DefineCharacter("Eric Yngveson Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 237.
	Name = "Eric",
	ExtraName = "Yngveson", -- to differentiate him from the earlier Eric Yngling
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Yngve Yngling",
	Quote = _("\"By the fierce East-kings' cruel pride,\nGudlog must on the wild horse rider -\nThe wildest horse you e'er did see:\n'Tis Segur's steed - the gallows tree.\"\n- Eyvind Skaldaspiller")
})

DefineCharacter("Gudlög", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 237-238.
	Name = "Gudlög",
	NameElements = {
		"compound", "prefix", "old-norse", "noun", {"God"}, "Guð" -- presumably
--		"compound", "suffix" -- ?
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Nordland",
	DateReferenceCharacter = "Jorund Yngling", -- was captured in Denmark by Jorund and Eric Yngling, and then was killed by them
	Quote = _("\"By the fierce East-kings' cruel pride,\nGudlog must on the wild horse rider -\nThe wildest horse you e'er did see:\n'Tis Segur's steed - the gallows tree.\"\n- Eyvind Skaldaspiller"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Halogaland" -- was a king, presumably of Halogaland, since his son was king of that place
	}
})

DefineCharacter("Gylög", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 238.
	Name = "Gylög",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Nordland",
	Father = "Gudlög",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Halogaland"
	}
})

DefineCharacter("On the Old Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 239-240.
	Name = "On", -- also known as Ane
	ExtraName = "the Old",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Jorund Yngling",
	Trait = "upgrade-cruel", -- described as wise and cruel
	Quote = _("\"In Upsal's town the cruel king\nSlaughtered his sons at Odin's shrine\nSlaughtered his sons with cruel knife,\nTo get from Odin length of life.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe" -- ruled intermittently at Västergotland when Uppsal was occupied by Danish invaders
	}
})

DefineCharacter("Frode Mikillati Skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 239.
	Name = "Frode",
	ExtraName = "Mikillati",
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	Father = "Dan Mikillati Skjoldung",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Dane Tribe"
	}
	-- described as peace-loving
})

DefineCharacter("Halfdan Skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 239.
	Name = "Halfdan",
	NameElements = {
		"compound", "prefix", "old-norse", "adjective", "no-case", "Halfr", -- presumably
--		"compound", "suffix", -- ?
	},
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	Father = "Frode Mikillati Skjoldung",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Dane Tribe" -- ruled jointly with his brother Fridleif
	}
	-- described as a great warrior
})

DefineCharacter("Fridleif Skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 239.
	Name = "Fridleif",
	NameElements = {
		"compound", "prefix", "old-norse", "noun", "no-case", "Friđr", -- presumably
--		"compound", "suffix", -- ?
	},
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	Father = "Frode Mikillati Skjoldung",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Dane Tribe" -- ruled jointly with his brother Halfdan
	}
	-- described as a great warrior
})

DefineCharacter("Ole the Bold Skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 239.
	Name = "Ole",
	ExtraName = "the Bold",
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	Father = "Fridleif Skjoldung",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe" -- ruled over the Swedes at Upsal for 25 years
	}
	-- was killed by Starkad the Old (probably the same as the Starkod the Old previously mentioned)
})

DefineCharacter("Tunne", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 240-241.
	Name = "Tunne",
	Gender = "male",
	Type = "unit-teuton-worker",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	DateReferenceCharacter = "On the Old Yngling" -- slave who was counsellor and treasurer to On the Old of Sweden
})

DefineCharacter("Egil Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 240-241.
	Name = "Egil",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "On the Old Yngling",
	Quote = _("\"The fair-haired son of Odin's race,\nWho fled before fierce Tunne's face,\nHas perished by the demon-beast\nWho roams the forests of the East.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
})

DefineCharacter("Frode the Bold Skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 241-243.
	Name = "Frode",
	ExtraName = "the Bold",
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	DateReferenceCharacter = "Egil Yngling", -- helped Egil Yngling to defeat Tunne's forces
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Dane Tribe"
	}
})

DefineCharacter("Ottar Vendelcrow Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 242-243.
	Name = "Ottar",
	ExtraName = "Vendelcrow", -- nickname because of the manner of his death
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Egil Yngling",
	Quote = _("\"By Danish arms the hero bold,\nOttar the Brave, lies stiff and cold.\nTo Vendel's plain the corpse was borne;\nBy eagles' claws the corpse is torn\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
	-- described as brave
})

DefineCharacter("Vätte", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 243.
	Name = "Vätte",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	DateReferenceCharacter = "Frode the Bold Skjoldung", -- Vätte was an earl appointed by Frode the Bold to defend Denmark while he invaded Sweden
})

DefineCharacter("Faste", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 243.
	Name = "Faste",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	DateReferenceCharacter = "Frode the Bold Skjoldung", -- Faste was an earl appointed by Frode the Bold to defend Denmark while he invaded Sweden
})

DefineCharacter("Adils Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 243-245.
	Name = "Adils",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Ottar Vendelcrow Yngling",
	Quote = _("\"Witch-demons, I have heard men say,\nHave taken Adils' life away.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
})

DefineCharacter("Helge Skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 244-245.
	Name = "Helge",
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	Father = "Halfdan Skjoldung", -- a king Halfdan of Denmark was his father, presumably the Halfdan previously mentioned
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Dane Tribe"
	}
})

DefineCharacter("Ali of the Uplands", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 245.
	Name = "Ali",
	NameElements = {"word", "old-norse", "verb", "present", "Ali"}, -- presumably; also, not certain if that is the present participle of the verb, or another participle form
	ExtraName = "of the Uplands",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- correct?
	DateReferenceCharacter = "Adils Yngling", -- fought against Adils, dying in battle
	-- was king of the Uplands
})

DefineCharacter("Godgest", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 245.
	Name = "Godgest",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Nordland",
	DateReferenceCharacter = "Adils Yngling", -- Adils sent Godgest the horse Raven as a gift
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Halogaland"
	}
})

DefineCharacter("Eystein Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 246.
	Name = "Eystein",
	NameElements = {
--		"compound", "prefix" -- ?
		"compound", "suffix", "old-norse", "noun", "Steinn" -- presumably
	},
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Adils Yngling",
	Quote = _("\"The raging tree-devourer fire\nRushed on the monarch its ire;\nFirst fell the castle timbers, then\nThe roof-beams - Eystein's funeral pyre.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
})

DefineCharacter("Hogne of Niardö", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 246.
	Name = "Hogne",
	ExtraName = "of Niardö",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "North Trondelag" -- from Niardö, an island in "North Drontheim" (North Trondheim)
})

DefineCharacter("Solve", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 246.
	Name = "Solve",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- sea-king
	Civilization = "norse",
	ProvinceOfOrigin = "North Trondelag", -- from Niardö, an island in "North Drontheim" (North Trondheim)
	Father = "Hogne of Niardö",
	DateReferenceCharacter = "Adils Yngling", -- Solve slew Adils by burning
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe" -- Solve became king of Sweden after killing Adils Yngling, but eventually he was killed and Adils' son made king
		-- Solve had dominions in Jutland, but from the source it is not clear if he ruled over all of Jutland, or only a portion of it
	}
})

DefineCharacter("Yngvar Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 246-247.
	Name = "Yngvar",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Eystein Yngling",
	Quote = _("\"On Esthland's strand, o'er Swedish graves,\nThe East Sea sings her song of waves;\nKing Yngvar's dirge is ocean's roar\nResounding on the rock-ribbed shore.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
})

DefineCharacter("Onund Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 247-248.
	Name = "Onund",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Yngvar Yngling",
	Quote = _("\"Or else perhaps the wood-grown land,\nWhich long had felt his conquering hand,\nUprose at length in deadly strife,\nAnd pressed out Onund's hated life.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
})

DefineCharacter("Ingiald the Evil-Adviser Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248-254.
	Name = "Ingiald",
	ExtraName = "the Evil-Adviser",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Onund Yngling",
	Quote = _("\"On his own hearth the fire he raised,\nA deed his foemen even praised;\nBy his own hand he perished so,\nAnd life for freedom did forego.\"\n- Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
	-- married to Gauthild
})

DefineCharacter("Yngvar", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248, 250.
	Name = "Yngvar",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- correct?
	DateReferenceCharacter = "Onund Yngling" -- lived during the reign of Onund over Sweden
	-- district-king of Fiadryndaland (in Sweden)
})

DefineCharacter("Alf Yngvarson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248, 250.
	Name = "Alf",
	ExtraName = "Yngvarson", -- to differentiate him from the other Alf
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- correct?
	Father = "Yngvar"
})

DefineCharacter("Agnar Yngvarson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248, 250.
	Name = "Agnar",
	ExtraName = "Yngvarson", -- to differentiate him from the other Agnar
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- correct?
	Father = "Yngvar"
})

DefineCharacter("Svipdag the Blind", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 248, 253.
	Name = "Svipdag",
	ExtraName = "the Blind",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- presumably from Fiundaland, where Upsal is located
	DateReferenceCharacter = "Onund Yngling" -- lived during the reign of Onund over Sweden
	-- district-king of Fiundaland (in Sweden)
	-- Ingiald Yngling's foster-father
})

DefineCharacter("Gautvid", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248, 253.
	Name = "Gautvid",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Svipdag the Blind"
	-- Ingiald Yngling's foster-brother
})

DefineCharacter("Gaut", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248-249.
	Name = "Gaut",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland" -- presumably
})

DefineCharacter("Gautrek the Mild", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248-249.
	Name = "Gautrek",
	ExtraName = "the Mild",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- presumably
	Father = "Gaut"
})

DefineCharacter("Algaut", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248-249.
	Name = "Algaut",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- presumably
	Father = "Gautrek the Mild",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Geat Tribe" -- was a king - apparently of Got(a?)land
	}
})

DefineCharacter("Olaf Skygne", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Olaf",
	ExtraName = "Skygne",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden" -- from Nerike
	-- king in Nerike
})

DefineCharacter("Alofa", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Alofa",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- from Nerike
	Father = "Olaf Skygne"
})

DefineCharacter("Gauthild", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248-249, 255.
	Name = "Gauthild", -- name also written in the source as "Gautheld"
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- presumably
	Father = "Algaut",
	Mother = "Alofa"
})

DefineCharacter("Spossniall", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 250.
	Name = "Spossniall",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	DateReferenceCharacter = "Ingiald the Evil-Adviser Yngling" -- lived during the reign of Ingiald over Sweden
	-- (district-)king of Nerike (in Sweden)
})

DefineCharacter("Sighvat", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 250.
	Name = "Sighvat",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- correct?
	DateReferenceCharacter = "Ingiald the Evil-Adviser Yngling" -- lived during the reign of Ingiald over Sweden
	-- (district-)king of Aattundaland (in Sweden)
})

DefineCharacter("Granmar", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 250-252.
	Name = "Granmar",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	DateReferenceCharacter = "Ingiald the Evil-Adviser Yngling" -- lived during the reign of Ingiald over Sweden
	-- (district-)king of Sondermanland (in Sweden)
	-- married to Hilda
})

DefineCharacter("Hogne", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 252.
	Name = "Hogne",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland",
	DateReferenceCharacter = "Ingiald the Evil-Adviser Yngling" -- lived during the reign of Ingiald over Sweden
	-- ruled over East Gotaland
})

DefineCharacter("Hildur", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 252.
	Name = "Hildur",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland",
	Father = "Hogne"
})

DefineCharacter("Hilda", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 252.
	Name = "Hilda",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Hogne"
	-- married to Granmar
})

DefineCharacter("Folkvid", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 251.
	Name = "Folkvid",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- presumably from Fiundaland (where his father ruled), where Upsal is located
	Father = "Svipdag the Blind"
})

DefineCharacter("Hylvid", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 251, 253.
	Name = "Hylvid",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- presumably from Fiundaland (where his father ruled), where Upsal is located
	Father = "Svipdag the Blind"
})

DefineCharacter("Ylfing", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 251.
	Name = "Ylfing",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = -- ?
})

DefineCharacter("Hiorvard Ylfing", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 251-252.
	Name = "Hiorvard",
	FamilyName = "Ylfing",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = -- ?
	Father = "Ylfing",
	DateReferenceCharacter = "Ingiald the Evil-Adviser Yngling" -- lived during the reign of Ingiald over Sweden
	-- was a king (of where?)
	-- married to Hildigunna
})

DefineCharacter("Hildigunna", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 251-252.
	Name = "Hildigunna",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Granmar",
	Mother = "Hilda"
	-- described as beautiful
	-- married to Hiorvard Ylfing
})

DefineCharacter("Aasa the Evil-Adviser Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 253-254.
	Name = "Aasa",
	ExtraName = "the Evil-Adviser",
	FamilyName = "Yngling",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Ingiald the Evil-Adviser Yngling",
	Mother = "Gauthild"
	-- married Gudrod (king of Scania)
})

DefineCharacter("Olaf Treefeller Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 253-256.
	Name = "Olaf",
	ExtraName = "Treefeller",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Ingiald the Evil-Adviser Yngling",
	Mother = "Gauthild",
	Quote = _("\"The temple wolf, by the lake shores,\nThe corpse of Olaf now devours.\nThe clearer of forests died\nAt Odin's shrine by the lake side.\"\n- Thiodolf of Huine"), -- "temple wolf" in this instance means the fire which burned Olaf's body
	-- his foster-father was Bove, who lived in West Gotland
	-- married to Solveig
})

DefineCharacter("Bove", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 253-254.
	Name = "Bove",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- from West Gotaland
	DateReferenceCharacter = "Gauthild" -- Gauthild sent her son to be fostered by Bove
})

DefineCharacter("Savre Flettir", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 253-254.
	Name = "Savre",
	ExtraName = "Flettir",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- from West Gotaland
	Father = "Bove"
})

DefineCharacter("Gudrod", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 254.
	Name = "Gudrod",
	NameElements = {
		"compound", "prefix", "old-norse", "noun", {"God"}, "Guð" -- presumably
--		"compound", "suffix" -- ?
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Scania",
	DateReferenceCharacter = "Ingiald the Evil-Adviser Yngling", -- lived during the reign of Ingiald over Sweden
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Scania" -- king of Scania
	}
	-- married Aasa Yngling
})

DefineCharacter("Halfdan", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 254.
	Name = "Halfdan",
	NameElements = {
		"compound", "prefix", "old-norse", "adjective", "no-case", "Halfr", -- presumably; used "no-case" to avoid the nominative ending "-r"
--		"compound", "suffix", -- ?
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Scania",
	DateReferenceCharacter = "Gudrod" -- Gudrod's brother
})

DefineCharacter("Ivar Vidfadme", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 254-255.
	Name = "Ivar",
	ExtraName = "Vidfadme",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Scania",
	Father = "Halfdan",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Scania", -- king of Scania
		"head-of-state", 0, 0, "norse", "Swede Tribe" -- conquered Sweden
	}
})

DefineCharacter("Solve the Old", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Solve",
	ExtraName = "the Old",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hedmark" -- correct? from the Soloer Islands
	-- settled the Soloer Islands
})

DefineCharacter("Solve Solvesson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Solve",
	ExtraName = "Solvesson",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hedmark", -- correct? from the Soloer Islands
	Father = "Solve the Old"
})

DefineCharacter("Halfdan Guldtand", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Halfdan",
	ExtraName = "Guldtand",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hedmark", -- correct? from the Soloer Islands
	Father = "Solve Solvesson"
})

DefineCharacter("Solveig", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Solveig", -- also known as Solva
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Hedmark", -- correct? from the Soloer Islands
	Father = "Halfdan Guldtand",
	DateReferenceCharacter = "Olaf Treefeller Yngling" -- married to Olaf Yngling
})

DefineCharacter("Ingiald Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 255, 257.
	Name = "Ingiald",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Varmland", -- (apparently) from Vermeland
	Father = "Olaf Treefeller Yngling",
	Mother = "Solveig"
	-- king of Værmeland (after his death his possessions went to his brother Halfdan)
})

DefineCharacter("Halfdan Huitbein Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 255-257.
	Name = "Halfdan",
	NameElements = {
		"compound", "prefix", "old-norse", "adjective", "no-case", "Halfr", -- presumably; used "no-case" to avoid the nominative ending "-r"
--		"compound", "suffix", -- ?
	},
	ExtraName = "Huitbein",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Varmland", -- (apparently) from Vermeland
	Father = "Olaf Treefeller Yngling",
	Mother = "Solveig",
	Quote = _("\"Halfdan, esteemed by friends and foes,\nReceives at last life's deep repose:\nThe aged man at last, though late,\nYielded in Thoten to stern fate.\"\n- Thiodolf of Huine")
	-- ruled over Hedemark, and conquered Thoten, Hadeland and much of Westfold
	-- married to Asa
})

DefineCharacter("Eystein the Severe", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 257.
	Name = "Eystein",
	NameElements = {
--		"compound", "prefix" -- ?
		"compound", "suffix", "old-norse", "noun", "Steinn" -- presumably
	},
	ExtraName = "the Severe",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Oppland" -- king of the Upland people (in Norway, so presumably Oppland)
})

DefineCharacter("Asa", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 257.
	Name = "Asa",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Oppland", -- daughter of the "king of the Upland people" (in Norway, so presumably Oppland)
	Father = "Eystein the Severe"
	-- married to Halfdan Huitbein Yngling
})

DefineCharacter("Eystein Halfdanson Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 257-258.
	Name = "Eystein",
	NameElements = {
--		"compound", "prefix" -- ?
		"compound", "suffix", "old-norse", "noun", "Steinn" -- presumably
	},
	ExtraName = "Halfdanson", -- to differentiate him from the other Eystein Yngling
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hedmark", -- his father ruled over Hedemark
	Father = "Halfdan Huitbein Yngling",
	Mother = "Asa",
	Quote = _("\"Grim Hel, clutched his soul away;\nAnd now where Vodle's ocean bay\nReceives the ice-cold stream, the grave\nOf Eystein stands, the good, the brave!\"\n- Thiodolf of Huine")
	-- became king in Raumarige and Westfold after his father's death
	-- married to Hilde, daughter of Eric Agnarson
})

DefineCharacter("Gudrod Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 257.
	Name = "Gudrod",
	NameElements = {
		"compound", "prefix", "old-norse", "noun", {"God"}, "Guð" -- presumably
--		"compound", "suffix" -- ?
	},
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hedmark", -- his father ruled over Hedemark
	Father = "Halfdan Huitbein Yngling",
	Mother = "Asa"
})

DefineCharacter("Sigtryg", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 257-258.
	Name = "Sigtryg",
	NameElements = {
		"compound", "prefix", "old-norse", "noun", "no-case", "Sigr", -- presumably
		"compound", "suffix", "old-norse", "adjective", "Tryggr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = ? -- was king in the "Vend district" (where?)
})

DefineCharacter("Agnar Sigtrygson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 257-258.
	Name = "Agnar",
	ExtraName = "Sigtrygson", -- to differentiate him from the other Agnar
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = ? -- his father was king in the "Vend district" (where?)
	Father = "Sigtryg"
})

DefineCharacter("Eric Agnarson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 257-258.
	Name = "Eric",
	ExtraName = "Agnarson", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Vestfold", -- king in Westfold
	Father = "Agnar Sigtrygson"
	-- had no son, so his dominions were taken over by Halfdan Huitbein and his son Eystein after his death (Eystein was married to Eric's daughter Hilde)
})

DefineCharacter("Hilde", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 257.
	Name = "Hilde",
	NameElements = {"word", "old-norse", "noun", "Hildr"}, -- presumably
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Vestfold", -- her father was king in Westfold
	Father = "Eric Agnarson"
})

DefineCharacter("Skiold", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 258.
	Name = "Skiold",
	NameElements = {"word", "old-norse", "noun", "Skjǫldr"}, -- presumably
	Gender = "male",
	Type = "unit-teuton-swordsman", -- was a great warlock
	Civilization = "norse",
--	ProvinceOfOrigin = ? -- lived in Varna (where?)
	DateReferenceCharacter = "Eystein Halfdanson Yngling" -- Eystein Yngling, son of Halfdan Huitbein, went with ships and raided Varna
	-- was a king
})

DefineCharacter("Halfdan the Mild Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 259.
	Name = "Halfdan",
	NameElements = {
		"compound", "prefix", "old-norse", "adjective", "no-case", "Halfr", -- presumably; used "no-case" to avoid the nominative ending "-r"
--		"compound", "suffix", -- ?
	},
	ExtraName = "the Mild", -- also knowns as "the Bad Entertainer"
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Vestfold", -- his father ruled over Vestfold
	Father = "Eystein Halfdanson Yngling",
	Mother = "Hilde", -- presumably, since Hilde was married to Eystein
	Trait = "upgrade-generous", -- described as generous, and as a great warrior
	Quote = _("\"By Hel's summons, a great king\nWas called away to Odin's Thing:\nKing Halfdan, he who dwelt of late\nAt Holtar, must obey grim Fate.\"\n- Thiodolf of Huine")
	-- married to Hlif, daughter of King Dag of Westmor
	-- his chief house was Holtar (in Vestfold, Norway)
})

DefineCharacter("Dag of Westmor", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 259.
	Name = "Dag",
	NameElements = {"word", "old-norse", "noun", "Dagr"}, -- presumably
	ExtraName = "of Westmor", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = ?, -- was king of Westmor (where?)
	-- married to Halfdan the Mild Yngling
})

DefineCharacter("Hlif", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 259.
	Name = "Hlif",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
--	ProvinceOfOrigin = ?, -- her father was king of Westmor (where?)
	Father = "Dag of Westmor"
})

DefineCharacter("Gudrod the Magnificent Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 259-260.
	Name = "Gudrod",
	NameElements = {
		"compound", "prefix", "old-norse", "noun", {"God"}, "Guð" -- presumably
--		"compound", "suffix" -- ?
	},
	ExtraName = "the Magnificent", -- also knowns as "the Hunter"
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Vestfold", -- his father ruled over Vestfold
	Father = "Halfdan the Mild Yngling",
	Mother = "Hlif", -- presumably, since Hlif was married to Halfdan
	-- died murdered by a man under the orders of his wife Aasa
	Quote = _("\"Gudrod is gone to his long rest,\nDespite of all his haughty pride,\nA traitor's spear has pierced his side\"\n- Thiodolf of Huine")
	-- married to Alfhild, and after her death married Aasa (daughter of Harald Redbeard)
	-- described as proud
})

DefineCharacter("Alfarin", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 259.
	Name = "Alfarin",
	NameElements = {
		"compound", "prefix", "old-norse", "noun", "no-case", "Alfr", -- presumably; used "no-case" to avoid the nominative ending "-r"
--		"compound", "suffix" -- ?
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Ostfold" -- king of Alfheim (the land between Glommen and Gotha rivers)
})

DefineCharacter("Alfhild", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 259.
	Name = "Alfhild",
	NameElements = {
		"compound", "prefix", "old-norse", "noun", "no-case", "Alfr", -- presumably; used "no-case" to avoid the nominative ending "-r"
		"compound", "suffix", "old-norse", "noun", "Hildr" -- presumably
	},
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Ostfold", -- her father was king of Alfheim (the land between Glommen and Gotha rivers)
	Father = "Alfarin"
})

DefineCharacter("Olaf Geirstad-Alf Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 259-261.
	Name = "Olaf",
	ExtraName = "Geirstad-Alf",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Vestfold", -- his father ruled over Vestfold
	Father = "Gudrod the Magnificent Yngling",
	Mother = "Alfhild",
	Trait = "upgrade-strong", -- described as remarkably handsome, very strong and large of growth
	Quote = _("\"Long while this branch of Odin's stem\nWas the stout prop of Norway's realm;\nLong while King Olaf with just pride\nRuled over Westfold far and wide.\"\n- Thiodolf of Huine")
})

DefineCharacter("Harald Redbeard", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 259-260.
	Name = "Harald",
	ExtraName = "Redbeard",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Agder", -- ruled over Agder
	HairVariation = "red-hair" -- presumably
})

DefineCharacter("Aasa", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 259-260.
	Name = "Aasa",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Agder", -- her father ruled over Agder
	Father = "Harald Redbeard",
	Trait = "upgrade-cruel" -- described as cruel
	-- married Gudrod the Magnificent Yngling
})

DefineCharacter("Gyrder", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 259-260.
	Name = "Gyrder",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Agder",
	Father = "Harald Redbeard"
})

DefineCharacter("Halfdan the Black Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 260-262.
	Name = "Halfdan",
	NameElements = {
		"compound", "prefix", "old-norse", "adjective", "no-case", "Halfr", -- presumably; used "no-case" to avoid the nominative ending "-r"
--		"compound", "suffix", -- ?
	},
	ExtraName = "the Black",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Vestfold", -- his father ruled over Vestfold
	Father = "Gudrod the Magnificent Yngling",
	Mother = "Aasa",
	HairVariation = "black-hair",
	Year = 841, -- reign began
	DeathYear = 863 -- reign ended
})

DefineCharacter("Alfgeir", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 260.
	Name = "Alfgeir",
	NameElements = {
		"compound", "prefix", "old-norse", "noun", "no-case", "Alfr", -- presumably; used "no-case" to avoid the nominative ending "-r"
--		"compound", "suffix" -- ?
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Ostfold" -- ruled over (at least) Vingulmark
})

DefineCharacter("Gandalf", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 260.
	Name = "Gandalf",
	NameElements = {
--		"compound", "prefix" -- ?
		"compound", "suffix", "old-norse", "noun", "Alfr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Ostfold", -- ruled over Vingulmark
	Father = "Alfgeir",
	DateReferenceCharacter = "Olaf Geirstad-Alf Yngling" -- he lived during Olaf's reign
})

DefineCharacter("Eystein the Great", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 261.
	Name = "Eystein",
	ExtraName = "the Great",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Oppland" -- was king of Oppland
})

DefineCharacter("Hogne Eysteinson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 261.
	Name = "Hogne",
	ExtraName = "Eysteinson", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Oppland", -- his father was king of Oppland
	Father = "Eystein the Great",
	DateReferenceCharacter = "Olaf Geirstad-Alf Yngling" -- he lived during Olaf's reign
})

DefineCharacter("Rognvald Mountain-High Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 261.
	Name = "Rognvald",
	ExtraName = "Mountain-High",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Vestfold", -- his father ruled over Vestfold
	Father = "Olaf Geirstad-Alf Yngling",
	Quote = _("\"Rognvald, who knew so well to guide\nThe wild sea-horses through the tide:\nThe 'Mountain-high' was the proud name\nBy which the king was known to fame.\"\n- Thiodolf of Huine") -- "wild sea-horses" means ships
})

DefineCharacter("Thiodolf of Huine", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 227, 261.
	Name = "Thiodolf",
	ExtraName = "of Huine",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Vestfold", -- he composed the Ynglingatal for Rognvald Mountain-High Yngling of Vestfold
	DateReferenceCharacter = "Rognvald Mountain-High Yngling", -- composed the Ynglingatal for Rognvald
	AuthoredWorks = {"upgrade-work-ynglingatal"}
})

DefineCharacter("Svan the Red", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Svan",
	ExtraName = "the Red",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- one of his descendants was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Saefari", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Saefari",
	NameElements = {
		"compound", "prefix", "old-norse", "noun", "no-case", "Sær" -- presumably; used "no-case" to avoid the nominative ending "-r"
--		"compound", "suffix" -- ?
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- one of his descendants was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Svan the Red"
})

DefineCharacter("Ulf", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Ulf",
	NameElements = {"word", "old-norse", "noun", "Ulfr"}, -- presumably
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- his grandson was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Saefari"
})

DefineCharacter("Alf the Old", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Alf",
	NameElements = {
		"word", "old-norse", "noun", "Alfr" -- presumably
	},
	ExtraName = "the Old",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- his son was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Ulf"
})

DefineCharacter("Instein", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 100-101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Instein", -- one of the warriors of King Half of Horthaland
	NameElements = {
--		"compound", "prefix" -- ?
		"compound", "suffix", "old-norse", "noun", "Steinn" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Hordaland",
	ProvinceOfOrigin = "Hordaland",
--	Year = ?,
--	DeathYear = ?,
	Father = "Alf the Old"
})

DefineCharacter("Saekonung", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101.
	Name = "Saekonung",
	NameElements = {
		"compound", "prefix", "old-norse", "noun", "no-case", "Sær", -- presumably; used "no-case" to avoid the nominative ending "-r"
		"compound", "suffix", "old-norse", "noun", "Konungr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Svava", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101.
	Name = "Svava",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Klypp", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Klypp",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Ketil Hortha-Kari", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Ketil", -- married to Hildigun; the semi-mythical Ketil Hortha-Kari, ancestor of many Icelandic families
	ExtraName = "Hortha-Kari",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Klypp"
})

DefineCharacter("Hildigun", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Hildigun", -- married to Ketil; also known as Hildiguth
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Saekonung",
	Mother = "Svava"
})

DefineCharacter("Frodi", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Frodi",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?
})
-- "Frodi came before Kari" is said later; could this be the same Frodi as this one? The Kari here is perhaps Ketil Hortha-Kari, but he came before this Frodi, not after; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 223-224.

DefineCharacter("Friaut", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Friaut",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Ketil Hortha-Kari",
	Mother = "Hildigun"
})

DefineCharacter("Hledis", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Hledis", -- adorned with golden bracelets
	Gender = "female",
	Type = "unit-teuton-priest", -- priestess
	Civilization = "norse",
	Faction = "Hordaland",
	ProvinceOfOrigin = "Hordaland", -- her husband was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Frodi",
	Mother = "Friaut"
})

DefineCharacter("Ottar", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 100-101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Ottar", -- in the Norse myths, human lover of the goddess Freya; made a bet with Argantyr for who had the better lineage
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Hordaland",
	ProvinceOfOrigin = "Hordaland", -- his father was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Instein",
	Mother = "Hledis"
})

DefineCharacter("Nokkvi", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Nokkvi",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Nanna", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Nanna", -- her son married Instein's sister
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Nokkvi"
})

DefineCharacter("Skekil", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Skekil", -- also known as Skekkil
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Olmod", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Olmod", -- married to Skurhold; also known as Olmoth
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Ketil Hortha-Kari"
})

DefineCharacter("Skurhold", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 101-102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Skurhold", -- married to Olmod; also known as Skurhild
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Skekil"
})

DefineCharacter("Isulf", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Isulf", -- also known as Isolf
	NameElements = {
--		"compound", "prefix", -- ?
		"compound", "suffix", "old-norse", "noun", "Ulfr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Olmod",
	Mother = "Skurhold" -- presumably, since she was the wife of his father
})

DefineCharacter("Osulf", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Osulf", -- also known as Osolf
	NameElements = {
--		"compound", "prefix", -- ?
		"compound", "suffix", "old-norse", "noun", "Ulfr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Olmod",
	Mother = "Skurhold" -- presumably, since she was the wife of his father
})

DefineCharacter("Hild", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 223-224.
	Name = "Hild",
	NameElements = {
		"word", "old-norse", "noun", "Hildr" -- presumably
	},
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Half", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Half", -- also known as Hoalf; king of Horthaland (the Halfsrekkar); Instein was one of his warriors
	NameElements = {
		"word", "old-norse", "adjective", "Halfr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Hordaland",
	ProvinceOfOrigin = "Hordaland",
--	Year = ?,
--	DeathYear = ?,
	Mother = "Hild"
})

DefineCharacter("Arngrim", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102.
	Name = "Arngrim", -- married to Eyfura
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- his sons were born in the island of Bolmsö off Smaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Eyfura", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102.
	Name = "Eyfura", -- married to Arngrim
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- her sons were born in the island of Bolmsö off Smaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Hervard", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Hervard", -- berserk; born in the island of Bolmsö long before Ottar's time; also known as Hervarth
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Hjorvard", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 225, 227.
	Name = "Hjorvard", -- berserk; born in the island of Bolmsö long before Ottar's time; also known as Hjorvarth
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Hrani", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Hrani", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Argantyr", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Argantyr", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Bui", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Bui", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Brami", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Brami", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Barri", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Barri", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Reifnir", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Reifnir", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Tind", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Tind", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Tyrfing", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Tyrfing", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Hadding", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Hadding", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Hadding II", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Hadding", -- berserk; born in the island of Bolmsö long before Ottar's time
	ExtraName = "II", -- to differentiate from his brother of the same name
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Hvedna", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Hvedna", -- wife of king Halfdan of Denmark (likely to not be Halfdan the Old, who had another wife)
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- her father (if indeed the same as the previously-mentioned berserk) was born in the island of Bolmsö off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Hjorvard" -- her father was called Hjorvard; presumably the same berserk mentioned previously
})

DefineCharacter("Haki", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Haki", -- the best of Hvedna's sons
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- his grandfather (if indeed the same as the previously-mentioned berserk) was born in the island of Bolmsö off Smaland
--	Year = ?,
--	DeathYear = ?,
	Mother = "Hvedna"
})

DefineCharacter("Hrorek the Ring Giver", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Hrorek", -- also known as Hrörek; was killed by his father-in-law Ivar
	ExtraName = "the Ring Giver", -- or "Ring-Giver"
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- his father-in-law was king of Sweden
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Ivar", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Ivar", -- king of Sweden
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Sweden",
	ProvinceOfOrigin = "Sweden",
--	Year = ?,
--	DeathYear = ?,
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Sweden"
	}
})

DefineCharacter("Aud the Profound", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Aud", -- wife of Hrorek the Ring Giver; after her father Ivar killed her husband, she fled with her son Harald to Russia and married King Rathbard
	ExtraName = "the Profound",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Faction = "Sweden",
	ProvinceOfOrigin = "Sweden", -- her father was king of Sweden
--	Year = ?,
--	DeathYear = ?,
	Father = "Ivar"
})

DefineCharacter("Harald War Tooth", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Harald", -- had a warring career in Norway; died in Bravalla-field at the hands of his nephew, Sigurd Ring (son of Randver)
	ExtraName = "War Tooth", -- or "Battle-Tooth"
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Sweden",
	ProvinceOfOrigin = "Sweden", -- his grandfather was king of Sweden
--	Year = ?,
--	DeathYear = ?,
	Father = "Hrorek the Ring Giver",
	Mother = "Aud the Profound"
})

DefineCharacter("Rathbard", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Rathbard", -- king
	NameElements = {
		"compound", "prefix", "old-norse", "noun", "Râđ", -- presumably
		"compound", "suffix", "old-norse", "noun", "Barđ" -- presumably
	},	
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- correct?
	ProvinceOfOrigin = "Russia", -- from Russia
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Randver", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Randver",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- correct?
	ProvinceOfOrigin = "Russia", -- his father was a king from Russia
--	Year = ?,
--	DeathYear = ?,
	Father = "Rathbard",
	Mother = "Aud the Profound"
})

DefineCharacter("Sigurd Ring", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Sigurd",
	NameElements = {
		"compound", "prefix", "old-norse", "noun", "no-case", "Sigr" -- presumably
--		"compound", "suffix" -- ?
	},
	ExtraName = "Ring",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- correct?
	ProvinceOfOrigin = "Russia", -- his grandfather was a king from Russia
--	Year = ?,
--	DeathYear = ?,
	Father = "Randver"
})

DefineCharacter("Skelfir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 221.
	Name = "Skelfir", -- a mythical king in "the East", from whom the Skilfings spring
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Helgi Hundingsbane Ylfing", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 221.
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

DefineCharacter("Gautrek", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Gautrek",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- his son was king of Gautland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Hrolf the Old", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Hrolf", -- King Hrolf Gautreksson of Gautland, also known as Hrolf the Old
	ExtraName = "the Old",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Gautland",
	ProvinceOfOrigin = "Gotaland",
--	Year = ?,
--	DeathYear = ?,
	Father = "Gautrek",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Gautland"
	}
})

DefineCharacter("Gunnar the Bulwark", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Gunnar",
	ExtraName = "the Bulwark",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Gautland",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Thorkel", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Thorkel",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Gautland",
	ProvinceOfOrigin = "Gotaland", -- his son was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Grim the Hardy", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Grim",
	ExtraName = "the Hardy",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Gautland",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?,
	Father = "Thorkel"
})

DefineCharacter("Thorir the Iron-Shield", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Thorir",
	ExtraName = "the Iron-Shield",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Gautland",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Ulf the Gaper", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Ulf",
	NameElements = {
		"word", "old-norse", "noun", "Ulfr" -- presumably
	},
	ExtraName = "the Gaper",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Gautland",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Brodd", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Brodd",
	NameElements = {
		"word", "old-norse", "noun", "Broddr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Gautland",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Hörvir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Hörvir",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Gautland",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Eric Red", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 161.
	Name = "Eric",
	ExtraName = "Red",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Iceland",
	Year = 986 -- in the Spring of 986 Eric Red migrated from Iceland to Greenland with Heriulf Bardson, settling in Brattalid (in Ericsfiord)
})

DefineCharacter("Heriulf Bardson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 161.
	Name = "Heriulf",
	ExtraName = "Bardson",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Iceland",
	Year = 986 -- in the Spring of 986 migrated from Iceland to Greenland with Eric Red, settling in Heriulfsness
})

DefineCharacter("Biorne", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 161.
	Name = "Biorne",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Iceland", -- correct?
	Father = "Heriulf Bardson",
	Year = 986 -- was in Norway when his father Heriulf Bardson migrated from Iceland to Greenland in the Spring of 986
})

DefineCharacter("Leif", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 162-163.
	Name = "Leif",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Iceland", -- correct?
	Father = "Eric Red",
	Year = 1000 -- went forth from Greenland c. 1000 with a ship he bought from Biorne to find the lands Biorne had seen; Leif's crew had 35 men
	-- Leif named three countries he found: Hellaland (a plain of flat slaty stones), Markland (a wooded country with many cliffs of white sand) and Vinland (a country with vines and grapes)
})

DefineCharacter("Thorwald", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 163.
	Name = "Thorwald",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Iceland", -- correct?
	Father = "Eric Red", -- presumably, since he was Leif's brother
	Year = 1002 -- went forth from Greenland in 1002 with Leif's ship to Vinland
	-- Thorwald named a headland Kialarness
	-- Thorwald died in an attack from the Skraelings (probably Indians), and was buried at a place named Crossness
})

DefineCharacter("Swerre", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 115.
	Name = "Swerre", -- king (presumably) of Norway
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Norway",
	ProvinceOfOrigin = "Akershus", -- put the character in the province where the Norwegian capital is, since we don't know from where in Norway he came
	Year = 1177, -- reign began
	DeathYear = 1203, -- reign ended
	HistoricalTitles = {
		"head-of-state", 1177, 1203, "norse", "Norway"
	}
})

DefineCharacter("Magnus the Saint", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 125, 128.
	Name = "Magnus", -- Earl (presumably) of Orkney, his sister was married to Koll; in his youth carried the dishes to the royal table
	ExtraName = "the Saint",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Orkney",
	ProvinceOfOrigin = "Orkney", -- presumably
	DeathYear = 1129, -- presumably, since this is the date Kala was made Earl of Orkney
	HistoricalTitles = {
		"head-of-state", 0, 1129, "norse", "Orkney"
	}
})

DefineCharacter("Koll", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 125.
	Name = "Koll", -- husband of the sister of Earl Magnus the Saint
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Orkney",
	ProvinceOfOrigin = "Orkney" -- since his son was Earl of Orkney
})

DefineCharacter("Kala", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 125.
	Name = "Kala", -- Earl of Orkney; was made earl under the name of Earl Rognvald
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Orkney",
	ProvinceOfOrigin = "Orkney", -- presumably
	Year = 1129, -- was made Earl of Orkney
	Father = "Koll",
	HistoricalTitles = {
		"head-of-state", 1129, 0, "norse", "Orkney"
	}
})

DefineCharacter("Arnold", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Arnold", -- Bishop of Greenland
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- presumably
	ProvinceOfOrigin = "Scania", -- presumably, since he was ordained there
	Year = 1121 -- ordained Bishop of Greenland by the Archbishop of Lund (in Scania)
})

DefineCharacter("Sturla Thordarson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 188.
	Name = "Sturla",
	ExtraName = "Thordarson",
	Gender = "male",
	Type = "unit-teuton-priest", -- he was a Godar (a function which was originally both priest and judge, but eventually became more and more only the latter)
	Civilization = "norse",
	ProvinceOfOrigin = "Iceland" -- presumably, since his son was from there
})

DefineCharacter("Snorri Sturlson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 12, 188, 192, 195-196, 198-199; Source: Snorri Sturlson, "The Prose Edda", 1916, p. XI.
	Name = "Snorri",
	ExtraName = "Sturlson",
	Gender = "male",
	Type = "unit-teuton-priest", -- since his father was a Godar and that was a hereditary position; was a learned man in a number of old legends and mythologies
	Civilization = "norse",
	ProvinceOfOrigin = "Iceland",
	Father = "Sturla Thordarson",
	Trait = "upgrade-ambitious", -- described as greedy, selfish, ambitious, rapacious, bold, unprincipled and of intellectual powers far above that of his contemporaries
	Year = 1178, -- born in 1178 at Hvam, in western Iceland
	DeathYear = 1241, -- Snorri was murdered by his three sons-in-law, Gizurr Thórvaldsson, Kolbein and Arne, in Iceland in September 1241
	ViolentDeath = true
})

DefineCharacter("Hakon", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Hakon", -- his son was King of Norway, so presumably he was too
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Norway",
	ProvinceOfOrigin = "Akershus", -- put the character in the province where the Norwegian capital is, since we don't know from where in Norway he came
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Norway" -- his son was King of Norway, so presumably he was too; date estimated; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	}
})

DefineCharacter("Hakon Hakonson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Hakon", -- King of Norway
	ExtraName = "Hakonson", -- to differentiate his full name from his father's
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "Norway",
	ProvinceOfOrigin = "Akershus", -- put the character in the province where the Norwegian capital is, since we don't know from where in Norway he came
	Year = 1261, -- annexed the Norse settlements in Greenland to Norway in 1261 AD
	Father = "Hakon",
	HistoricalTitles = {
		"head-of-state", 1261, 0, "norse", "Norway"
	}
})

DefineCharacter("Alf", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Alf", -- also known as Alfus; officiated in Greenland; presumably was Bishop of Greenland
	NameElements = {
		"word", "old-norse", "noun", "Alfr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- presumably
--	ProvinceOfOrigin = "Greenland", -- possibly he was from elsewhere, but we have no information about that
	DeathYear = 1378 -- died in Greenland
})

DefineCharacter("Margaret", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 146-147.
	Name = "Margaret", -- Queen of Denmark, Sweden and Norway
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Faction = "Denmark",
--	ProvinceOfOrigin = "?",
	Year = 1387, -- the three northern crowns devolved to her in 1387 AD
	HistoricalTitles = {
		"head-of-state", 1387, 0, "norse", "Denmark", -- the three northern crowns devolved to her in 1387 AD
		"head-of-state", 1387, 0, "norse", "Sweden",
		"head-of-state", 1387, 0, "norse", "Norway"
	}
})

DefineCharacter("Henry of Greenland", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Henry", -- appointed Bishop of Greenland, but never arrived there
	ExtraName = "of Greenland", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- presumably
--	ProvinceOfOrigin = "?",
	Year = 1389 -- appointed Bishop of Greenland
})

DefineCharacter("Askil", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Askil", -- appointed Bishop of Greenland to succeed Henry in case he was dead; never reached Greenland
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- presumably
--	ProvinceOfOrigin = "?",
	Year = 1406 -- appointed Bishop of Greenland to succeed Henry in case he was dead
})

DefineCharacter("Andreas", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Andreas",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- presumably
--	ProvinceOfOrigin = "Greenland" -- accurate? his son was Bishop of Greenland
})

DefineCharacter("Endrede", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Endrede", -- Bishop of Greenland
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- presumably
--	ProvinceOfOrigin = "Greenland", -- accurate?
	Year = 1409, -- executed a marriage settlement at Garda (the episcopal seat of Greenland) in 1409
	Father = "Andreas"
})

DefineCharacter("Magnus Eyolfson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 159.
	Name = "Magnus",
	ExtraName = "Eyolfson",
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- correct?
	ProvinceOfOrigin = "Iceland", -- correct?
	Year = 1477 -- was bishop of Skalholt (in Iceland) in 1477
})

DefineCharacter("Thormod Torfæus", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 154-155.
	Name = "Thormod",
	FamilyName = "Torfæus",
	Gender = "male",
	Type = "unit-teuton-priest", -- put as a priest since there isn't any other unit type more appropriate for a writer
	Civilization = "norse",
	ProvinceOfOrigin = "Akershus", -- Norwegian? put the character in the province where the Norwegian capital is, since we don't know from where in Norway he came (if he's Norwegian at all)
	Year = 1707, -- his "Historiae Vinlandiae Antiquae" dates from 1707
	AuthoredWorks = {"upgrade-work-historiae-vinlandiae-antiquae"}
})

DefineCharacter("Hans Egide", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 147.
	Name = "Hans", -- Norwegian minister who settled in Greenland
	FamilyName = "Egide",
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse",
	ProvinceOfOrigin = "Akershus", -- put the character in the province where the Norwegian capital is, since we don't know from where in Norway he came
	Year = 1721 -- settled in Greenland amongst the eskimos as a missionary in 1721
})
