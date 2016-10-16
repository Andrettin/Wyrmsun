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

DefineDialogue("sigibert-deplores-chilperichs-actions", {
	Nodes = {
		{
			"speaker", "character", "Sigibert",
			"text", "Chilperich's actions disgust me! Our father had just been laid to rest, and he already began to rally followers to take the entire realm for himself. Charibert, Gunthram and I were taken very much by surprise at this despondent show of raw ambition. Nevertheless, we managed to foil his plans and enforce a legitimate division of the realm between the four of us. Why should there be such conflict between brothers..."
		},
		{
			"speaker", "character", "Sigibert",
			"text", "The situation is settled for the moment, but I must be wary of Chilperich's ill intentions. Well, that is a matter for later. The Avars have been sighted near my eastern lands, it is time to gather my warriors to meet them.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "prevent-chilperichs-supremacy")
					SetPlayerData(trigger_player, "AcceptQuest", "repel-the-avar-invasion")
				end
			}
		}
	}
})

DefineDialogue("chilperich-attacks-sigibert", {
	Nodes = {
		{
			"speaker", "character", "Sigibert",
			"text", "What is this?! Chilperich is taking advantage of me being occupied with the Avars to take my lands..."
		}
	}
})

DefineDialogue("sigibert-complains-of-his-brothers-marriages", {
	Nodes = {
		{
			"speaker", "character", "Sigibert",
			"text", "My brothers are marrying women of lower birth, even slaves... Men of our station should marry higher-born ladies. I have heard many good things of Brunichilde, the daughter of the Visigothic king Athanagild. She is said to be beautiful, intelligent and well-mannered. I will send an embassy to her father asking for her hand, along with gifts to show my appreciation."
		}
	}
})

DefineDialogue("brunichilde-arrives-at-sigiberts-court", {
	Nodes = {
		{
			"speaker", "character", "Brunichilde",
			"text", "My lord, I have come from far away to meet you."
		},
		{
			"speaker", "character", "Sigibert",
			"text", "My lady... Brunichilde?"
		},
		{
			"speaker", "character", "Brunichilde",
			"text", "One and the same. Did you expect me to come in a dress? I am a warrior, my lord, like my father. I was pleased to read the message you wrote me. My father cherishes the opportunity to bind our houses, and I am glad to venture this far north and live among the mighty Franks."
		},
		{
			"speaker", "character", "Sigibert",
			"text", "This union is a great honor to me. If my father still lived, I am sure he would be happy as well."
		},
		{
			"speaker", "character", "Brunichilde",
			"text", "I have heard you managed to fight off an army of the savage Avars. And beat your treacherous brother at the same time!"
		},
		{
			"speaker", "character", "Sigibert",
			"text", "I did what I had to, my lady."
		},
		{
			"speaker", "character", "Brunichilde",
			"text", "Well, one day you will hear of the exploits of Brunichilde. Ah yes, my father was very pleased with your gifts - and he sent a great amount of treasure together with me."
		},
		{
			"speaker", "character", "Sigibert",
			"text", "That was most kind of him. Ah, my people clamor! Come, the priest is ready to marry us."
		}
	}
})

DefineDialogue("chilperich-marries-gailswintha", {
	Nodes = {
		{
			"speaker", "character", "Brunichilde",
			"text", "I received word from my father. My sister Gailswintha is also coming to Francia! She is to marry your brother, Chilperich."
		},
		{
			"speaker", "character", "Sigibert",
			"text", "That is an ill tiding. Chilperich was enthralled by a concubine... He must have heard of the treasure you brought, and is marrying your sister out of pure greed! Your sister needs to take care, Chilperich is not to be trusted."
		},
		{
			"speaker", "character", "Brunichilde",
			"text", "You worry too much. Chilperich did you wrong, but it is time for reconciliation. With this marriage, me and my sister can bring you both together."
		},
		{
			"speaker", "character", "Sigibert",
			"text", "Brunichilde..."
		}
	}
})
