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
--      (c) Copyright 2016 by Andrettin
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

--[[
DefineCampaign("the-mead-of-poetry", {
	Name = "The Mead of Poetry",
	Description = "The dwarven brothers Fjalar and Galar conspire to kill the wise god Kvasir and brew his blood into a powerful mead.",
	Civilization = "dwarf",
	Faction = "shadowcharm-clan",
	Year = -2800
})

DefineCampaign("freys-messenger", {
	Name = "Frey's Messenger",
	Description = "Skirnir, the human servant of the god Frey, must perform important deeds for his master.",
	Civilization = "germanic",
	Faction = "yngling-tribe", -- Yngve is identified with Frey
	Year = -2800 -- when Scandinavia was historically settled by Indo-Europeans; Yngve ruled over the Swedes in the Ynglinga saga soon after Odin's people settled Scandinavia in that saga; since Skirnir was a servant of Frey in mythology, let's make him a contemporary of Yngve
})
--]]

DefineCampaign("heimdalls-progeny", {
	Name = "Heimdall's Progeny",
	Description = "The young warrior Erala believes his true father to be the god Heimdall. Feeling that his divine heritage has fated him to rule over vast lands, Erala sets off to establish a hall and gather followers...", -- in the original myth his parents were "Fathir" and "Mothir"; "Fadēr" is the word which gave origin to "Fathir", while "Môder" gave origin to "Mothir"
	Civilization = "germanic",
	Faction = "jarling-tribe",
	Year = -1600 -- the introduction of stronger social differentiation occurred in Scandinavia around 1600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 73. As such, it makes sense to make the Rig myth (in which the different Scandinavian social classes are originated) take place around this time
})

--[[
DefineCampaign("thunrazs-servant", {
	Name = "Thunraz's Servant",
	Description = "Terrified by a calamitous thunderstorm, Thialfi's parents pledged him to the service of the lightning god Thunraz when he was still a boy. Now a grown up man, during a trance he heard his master command him to sail to an undiscovered island...",
	Civilization = "germanic",
	Faction = "thielung-tribe",
	Year = -1101 -- 1100 BC was the first occupation of Gotland (by presumably pre-Germanic or Germanic speakers) we have found through research so far, so we place the campaign start at just before that
})

DefineCampaign("the-marcomannic-wars", {
	Name = "The Marcomannic Wars",
	Description = "Under the leadership of Ballomar, the Marcomanni wage war with the mighty Roman Empire.",
	Civilization = "teuton",
	Faction = "marcomanni-tribe",
	Year = 162 -- beginning of the Marcomannic Wars
})

DefineCampaign("sigiberts-struggle", {
	Name = "Sigibert's Struggle",
	Description = "Upon the death of the Frankish king Chlothar I, his realm was divided between his four sons: Charibert, Chilperich, Sigibert and Gunthram. The ambitious Chilperich desires to increase his share of the inheritance at his brothers' expense, his designs on Sigibert's lands threatening to throw Francia into a bitter civil war...",
	Civilization = "teuton",
	Faction = "austrasia",
	Year = 561 -- Sigibert's reign in his lands begins
})
--]]
