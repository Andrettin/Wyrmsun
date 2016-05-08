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
	Quote = _("\"And when brave Frode came, he found / Swithiod's dark chief, Fiolner, drowned.\" - Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
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

DefineCharacter("Swegder Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 227-228.
	Name = "Swegder",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Fiölner Yngling",
	Quote = _("\"The dauntless hero rushing on, / Passed through the yawning mouth of stone: / It yawned - it shut - the hero fell\" - Thiodolf of Huine"),
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
	-- wife of Swegder's
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
	Father = "Swegder Yngling",
	Mother = "Vana",
	Quote = _("\"And Vanland, in a fatal hour, / Was dragg'd by Grimhild's daughter's power\" - Thiodolf of Huine"),
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
	Quote = _("\"Have the fire-dogs' fierce tongues yelling / Lapt Visbur's blood on his own hearth?\" - Thiodolf of Huine"),
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
	Quote = _("\"But Domald dies by bloody arms, / Raised not by foes in war's alarms, / Raised by his Swedish liegeman's hand, / To bring good seasons to the land.\" - Thiodolf of Huine"),
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
	Quote = _("\"I have asked wise men to tell / Where Domar rests, and they knew well. / Domar, on Fyrie's wide-spread ground, / Was burned, and laid on Yngve's mound.\" - Thiodolf of Huine"),
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
	Quote = _("\"For Loke's daughter in her house / Of Yngve's race would have a spouse; / Therefore the fell-one snatched away / Brave Dyggve from the light of day.\" - Thiodolf of Huine"),
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
	Quote = _("\"Varva was ravaged, and the strife / Was ended when the monarch's life / Was ended too - the great Dag fell / By the hay-fork of a base thrall!\" - Thiodolf of Huine"),
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
	Quote = _("\"How do ye like her, Agne's men / Think ye that any chief again / Will court the fate your chief befell, / To ride on wooden horse to hell?\" - Thiodolf of Huine"),
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
	Quote = _("\"How do ye like the high-souled maid, / Who, with the grim Fate-goddess' aid, / Avenged her sire? Made Swithiod's king / Through air in golden halter swing?\" - Thiodolf of Huine")
})

DefineCharacter("Alric Yngling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 234.
	Name = "Alric",
	FamilyName = "Yngling",
	Gender = "male",
	Type = "unit-teuton-ritter", -- horseriding described as being customary for him
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
	Father = "Agne Yngling",
	Quote = _("\"Alric fell, by Eric slain, / Eric's life-blood dyed the plain. / Brother fell by brother's hand\" - Thiodolf of Huine"),
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
	Quote = _("\"Alric fell, by Eric slain, / Eric's life-blood dyed the plain. / Brother fell by brother's hand\" - Thiodolf of Huine"),
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
	Quote = _("\"How wretched Alf with bloody knife / Gored Yngve's heart, and Yngve's blade / Alf on the bloody threshold laid.\" - Thiodolf of Huine"),
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
	Quote = _("\"How wretched Alf with bloody knife / Gored Yngve's heart, and Yngve's blade / Alf on the bloody threshold laid.\" - Thiodolf of Huine"),
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
	Quote = _("\"A deed of dreadful note I sing, / How by false Bera, wicked queen, / The murderous brother-hands were seen / Each raised against a brother's life\" - Thiodolf of Huine"),
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
	Quote = _("\"Jorund has travelled far and wide, / But the same horse he must bestride / On which he made brave Gudlog ride. / He too must for a necklace wear / Hagbert's fell noose in middle air.\" - Thiodolf of Huine"),
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
	Quote = _("\"By the fierce East-kings' cruel pride, / Gudlog must on the wild horse rider - / The wildest horse you e'er did see: / 'Tis Segur's steed - the gallows tree.\" - Eyvind Skaldaspiller")
})

DefineCharacter("Gudlög", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 237-238.
	Name = "Gudlög",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Nordland",
	DateReferenceCharacter = "Jorund Yngling", -- was captured in Denmark by Jorund and Eric Yngling, and then was killed by them
	Quote = _("\"By the fierce East-kings' cruel pride, / Gudlog must on the wild horse rider - / The wildest horse you e'er did see: / 'Tis Segur's steed - the gallows tree.\" - Eyvind Skaldaspiller"),
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
	Quote = _("\"In Upsal's town the cruel king / Slaughtered his sons at Odin's shrine / Slaughtered his sons with cruel knife, / To get from Odin length of life.\" - Thiodolf of Huine"),
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
	Quote = _("\"The fair-haired son of Odin's race, / Who fled before fierce Tunne's face, / Has perished by the demon-beast / Who roams the forests of the East.\" - Thiodolf of Huine"),
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
	Quote = _("\"By Danish arms the hero bold, / Ottar the Brave, lies stiff and cold. / To Vendel's plain the corpse was borne; / By eagles' claws the corpse is torn\" - Thiodolf of Huine"),
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
	Quote = _("\"Witch-demons, I have heard men say, / Have taken Adils' life away.\" - Thiodolf of Huine"),
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
	Quote = _("\"The raging tree-devourer fire / Rushed on the monarch its ire; / First fell the castle timbers, then / The roof-beams - Eystein's funeral pyre.\" - Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
})

DefineCharacter("Hogne", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 246.
	Name = "Hogne", -- Hogne of Niardö
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Nordland" -- actually from Niardö, an island in "North Drontheim" (North Trondheim), but that province isn't in the game yet
})

DefineCharacter("Solve", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 246.
	Name = "Solve",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- sea-king
	Civilization = "norse",
	ProvinceOfOrigin = "Nordland", -- actually from Niardö, an island in "North Drontheim" (North Trondheim), but that province isn't in the game yet
	Father = "Hogne",
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
	Quote = _("\"On Esthland's strand, o'er Swedish graves, / The East Sea sings her song of waves; / King Yngvar's dirge is ocean's roar / Resounding on the rock-ribbed shore.\" - Thiodolf of Huine"),
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Swede Tribe"
	}
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
	NameElements = {
		"word", "old-norse", "noun", "Ulfr" -- presumably
	},
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
	Name = "Hledis", -- priestess; adorned with golden bracelets
	Gender = "female",
	Type = "unit-teuton-archer", -- should be priestess
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
	ProvinceOfOrigin = "Hordaland", -- accurate? either way this is the only Norwegian province in the game, so it makes sense to set it as the province of origin
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
	Type = "unit-teuton-swordsman", -- should be priest
	Civilization = "norse", -- presumably
	ProvinceOfOrigin = "Scania", -- presumably, since he was ordained there
	Year = 1121 -- ordained Bishop of Greenland by the Archbishop of Lund (in Scania)
})

DefineCharacter("Sturla Thordarson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 188.
	Name = "Sturla",
	ExtraName = "Thordarson",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be priest; he was a Godar (a function which was originally both priest and judge, but eventually became more and more only the latter)
	Civilization = "norse",
	ProvinceOfOrigin = "Iceland" -- presumably, since his son was from there
})

DefineCharacter("Snorri Sturlson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 12, 188, 192, 195-196, 198-199; Source: Snorri Sturlson, "The Prose Edda", 1916, p. XI.
	Name = "Snorri",
	ExtraName = "Sturlson",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should probably be priest, since his father was a Godar and that was a hereditary position; was a learned man in a number of old legends and mythologies
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
	ProvinceOfOrigin = "Hordaland", -- only province implemented that is part of Norway; but Akershus/Oslo would be a better fit: since we only know he came from Norway, it makes sense to set the capital as his province of origin
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
	ProvinceOfOrigin = "Hordaland", -- only province implemented that is part of Norway; but Akershus/Oslo would be a better fit: since we only know he came from Norway, it makes sense to set the capital as his province of origin
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
	Type = "unit-teuton-swordsman", -- should be priest
	Civilization = "norse", -- presumably
	ProvinceOfOrigin = "Greenland", -- possibly he was from elsewhere, but we have no information about that
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

DefineCharacter("Henry", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Henry", -- appointed Bishop of Greenland, but never arrived there
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be priest
	Civilization = "norse", -- presumably
--	ProvinceOfOrigin = "?",
	Year = 1389 -- appointed Bishop of Greenland
})

DefineCharacter("Askil", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Askil", -- appointed Bishop of Greenland to succeed Henry in case he was dead; never reached Greenland
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be priest
	Civilization = "norse", -- presumably
--	ProvinceOfOrigin = "?",
	Year = 1406 -- appointed Bishop of Greenland to succeed Henry in case he was dead
})

DefineCharacter("Andreas", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Andreas",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- presumably
	ProvinceOfOrigin = "Greenland" -- accurate? his son was Bishop of Greenland
})

DefineCharacter("Endrede", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Endrede", -- Bishop of Greenland
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be priest
	Civilization = "norse", -- presumably
	ProvinceOfOrigin = "Greenland", -- accurate?
	Year = 1409, -- executed a marriage settlement at Garda (the episcopal seat of Greenland) in 1409
	Father = "Andreas"
})

DefineCharacter("Magnus Eyolfson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 159.
	Name = "Magnus",
	ExtraName = "Eyolfson",
	Gender = "male",
	Type = "unit-teuton-worker", -- should be priest
	Civilization = "norse", -- correct?
	ProvinceOfOrigin = "Iceland", -- correct?
	Year = 1477 -- was bishop of Skalholt (in Iceland) in 1477
})

DefineCharacter("Thormod Torfæus", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 154-155.
	Name = "Thormod",
	FamilyName = "Torfæus",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be something more appropriate for a writer, such as a priest
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- Norwegian? if so, he should be where Oslo is; but since for the moment Hordaland is the only Norwegian province in the game, set it as the province of origin
	Year = 1707, -- his "Historiae Vinlandiae Antiquae" dates from 1707
	AuthoredWorks = {"upgrade-work-historiae-vinlandiae-antiquae"}
})

DefineCharacter("Hans Egide", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 147.
	Name = "Hans", -- Norwegian minister who settled in Greenland
	FamilyName = "Egide",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be priest
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- Norwegian, so he should be where Oslo is; but since for the moment Hordaland is the only Norwegian province in the game, set it as the province of origin
	Year = 1721 -- settled in Greenland amongst the eskimos as a missionary in 1721
})
