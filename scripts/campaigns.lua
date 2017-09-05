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
--      (c) Copyright 2016-2017 by Andrettin
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

DefineCampaign("the-first-dwarves", {
	Name = "The First Dwarves",
	Description = "A clan of dwarves led by Modsognir has arrived in Svarinshaug, seeking a new home. Beset by hostile forces, can they survive for long?",
	Faction = "brising-clan",
	StartYear = -3000,
	MapTemplate = "nidavellir",
--	MapTemplateStartPos = {525, 132},
	MapTemplateStartPos = {475, 90},
	MapSize = {256, 256}
})

DefineCampaign("a-home-in-the-fields-of-sand", {
	Name = "A Home in the Fields of Sand",
	Description = "As Svarinshaug proves too small for the growing dwarven population, the Goldhoof clan must move away and seek a new home.",
	Faction = "goldhoof-clan",
	StartYear = -2800,
	MapTemplate = "nidavellir",
	MapTemplateStartPos = {655, 155},
})

--[[
DefineCampaign("the-mead-of-poetry", {
	Name = "The Mead of Poetry",
	Description = "The dwarven brothers Fjalar and Galar conspire to kill the wise god Kvasir and brew his blood into a powerful mead.",
	Faction = "shadowcharm-clan",
	StartYear = -2800
})

DefineCampaign("freys-messenger", {
	Name = "Frey's Messenger",
	Description = "Skirnir, the human servant of the god Frey, must perform important deeds for his master.",
	Faction = "yngling-tribe", -- Yngve is identified with Frey
	StartYear = -2800 -- when Scandinavia was historically settled by Indo-Europeans; Yngve ruled over the Swedes in the Ynglinga saga soon after Odin's people settled Scandinavia in that saga; since Skirnir was a servant of Frey in mythology, let's make him a contemporary of Yngve
})
--]]

DefineCampaign("heimdalls-progeny", {
	Name = "Haimadala's Progeny",
	Description = "The young warrior Erala believes his true father to be the god Haimadala. Feeling that his divine heritage has fated him to rule over vast lands, Erala sets off to establish a hall and gather followers...", -- in the original myth his parents were "Fathir" and "Mothir"; "Fadēr" is the word which gave origin to "Fathir", while "Môder" gave origin to "Mothir"
	Faction = "jarling-tribe",
	StartYear = -1600, -- the introduction of stronger social differentiation occurred in Scandinavia around 1600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 73. As such, it makes sense to make the Rig myth (in which the different Scandinavian social classes are originated) take place around this time
	MapTemplate = "earth",
	MapTemplateStartPos = {4022, 667},
	MapSize = {256, 256}
})

--[[
DefineCampaign("thors-servant", {
	Name = "Thunraz's Servant",
	Description = "Terrified by a calamitous thunderstorm, Thialfi's parents pledged him to the service of the lightning god Thunraz when he was still a boy. Now a grown man, during a dream he heard the deity command him to sail to an undiscovered island...",
	Faction = "thielung-tribe",
	StartYear = -1101, -- 1100 BC was the first occupation of Gotland (by presumably pre-Germanic or Germanic speakers) we have found through research so far, so we place the campaign start at just before that
	MapTemplate = "earth",
	MapTemplateStartPos = {4022, 667},
	MapSize = {256, 256}
})
--]]

--[[
DefineCampaign("ariovistus-ambition", {
	Name = "Ariovistus' Ambition",
	Description = "Under the leadership of Ariovistus, the Suebi have crossed the Rhine to aid the Sequani and the Arverni in defeating the Aedui. The Suebi leader has, however, greater ambitions than his allies suppose... he wishes to conquer the entirety of Gaul.",
	Faction = "suebi-tribe",
	StartYear = -61,
	MapTemplate = "earth",
	MapTemplateStartPos = {3871, 821},
	MapSize = {256, 256}
})

DefineCampaign("the-home-of-the-boii", {
	Name = "The Home of the Boii",
	Description = "After a devastating conflict with the Romans, Marbod seeks to lead the tribe of the Marcomanni to safer lands.",
	Faction = "marcomanni-tribe",
	StartYear = -9,
	MapTemplate = "earth",
	MapTemplateStartPos = {4064, 881},
	MapSize = {256, 256}
})

DefineCampaign("the-first-marcomannic-war", {
	Name = "The First Marcomannic War",
	Description = "Under the leadership of Ballomar, the Marcomanni wage war with the mighty Roman Empire.",
	Faction = "marcomanni-tribe",
	StartYear = 170, -- beginning of the First Marcomannic War
	MapTemplate = "earth",
	MapTemplateStartPos = {4064, 881},
	MapSize = {256, 256}
})
--]]

--[[
DefineCampaign("volunds-flight", { -- initial scenario for the Winter War storyline, could be changed later into a longer scenario containing the storyline in its entirety
	Name = "Volund's Flight",
	Description = "Imprisoned and humiliated, the elven prince Volund must seek to escape from his captors...",
	Faction = "ulfdalir",
	StartYear = 600, -- arbitrary date, should be changed later
	MapTemplate = "alfheim",
	MapTemplateStartPos = {728, 0},
	MapSize = {256, 256}
})

DefineCampaign("sigiberts-struggle", {
	Name = "Sigibert's Struggle",
	Description = "Upon the death of the Frankish king Chlothar I, his realm was divided between his four sons: Charibert, Chilperich, Sigibert and Gunthram. The ambitious Chilperich desires to increase his share of the inheritance at his brothers' expense, his designs on Sigibert's lands threatening to throw Francia into a bitter civil war...",
	Faction = "austrasia",
	StartYear = 561 -- Sigibert's reign in his lands begins
})

DefineCampaign("island-of-the-lizard-god", { -- based on Will Doyle's "Island of the Lizard God" adventure, which he agreed to license under the GPL 2.0; the adventure won the One-Page Dungeon contest in 2014: https://www.dungeoncontest.com/opdc-2014
	Name = "Island of the Kobold God",
	Description = "Shipwrecked on a remote island, a group of dwarves face off against a kobold cult and their primal god!",
	Faction = "lyr",
	StartYear = 600, -- approximate date; a seafaring dwarven lordship should already exist
	MapTemplate = "nidavellir",
	MapTemplateStartPos = {700, 472},
	MapSize = {256, 256}
})

DefineCampaign("the-heirs-return", {
	Name = "The Heir's Return",
	Description = "Upon the death of Aelle of Deira, his kingdom was taken over by the monarch of Bernicia. Aelle's son Edwin, then only a child, was taken in secret to another realm for the sake of his survival. After nearly twenty years of exile, Edwin has gathered an army, seeking to recover his birthright...",
	Faction = "deira",
	StartYear = 616,
	MapTemplate = "earth",
	MapTemplateStartPos = {3627, 695},
	MapSize = {256, 256}
})
--]]

DefineCampaign("the-fall-of-mercia", {
	Name = "The Fall of Mercia",
	Description = "For decades has Mercia enjoyed supremacy in England. Sensing an opportunity, king Egbert of Wessex desires to strike hard and fast into Mercian territory, and break their overlordship over the other southern English kingdoms forever.",
	Faction = "wessex",
	StartYear = 825,
	MapTemplate = "earth",
	MapTemplateStartPos = {3627, 695},
	MapSize = {256, 256}
})
