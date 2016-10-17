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

DefineDialogue("chilperich-sues-for-peace", {
	Nodes = {
		{
			"speaker", "character", "Chilperich",
			"text", "Sigibert! My brother, you have beaten me. I ask you for peace."
		},
		{
			"speaker", "character", "Sigibert",
			"text", "Damn you and your peace, Chilperich! You attacked me from behind my back."
		},
		{
			"speaker", "character", "Gunthram",
			"text", "Be reasonable, Sigibert. You have already remedied the ill Chilperich has caused you, it's no use pursuing him into his lands. Your inheritance was larger than that of any of the other three of us. I will not stand by while you take Chilperich's share as well."
		},
		{
			"speaker", "character", "Sigibert",
			"text", "Fair enough. Chilperich, I will accept your peace, but do not dare prey on my lands again."
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
			"text", "That is an ill tiding. Chilperich was enthralled by a concubine, Fredegunde... He must have heard of the treasure you brought, and is marrying your sister out of pure greed! Your sister needs to take care, Chilperich is not to be trusted."
		},
		{
			"speaker", "character", "Brunichilde",
			"text", "You worry too much. Chilperich did you wrong, but it is time for reconciliation. With this marriage, me and my sister can bring you both closer together."
		},
		{
			"speaker", "character", "Sigibert",
			"text", "Brunichilde..."
		}
	}
})

DefineDialogue("chilperich-murders-gailswintha", {
	Nodes = {
		{
			"speaker", "character", "Brunichilde",
			"text", "Sigibert, I..."
		},
		{
			"speaker", "character", "Sigibert",
			"text", "What happened?"
		},
		{
			"speaker", "character", "Brunichilde",
			"text", "I just received word of Gailswintha. At first, Chilperich showed himself very fond of her, though if that was only because of the treasure she brought I cannot say. Soon, however, he began visiting once more the bed of his former concubine, Fredegunde. As a result of this scandal, my sister and Fredegunde quarreled."
		},
		{
			"speaker", "character", "Sigibert",
			"text", "Chilperich is no good, my dear, I tried telling you."
		},
		{
			"speaker", "character", "Brunichilde",
			"text", "He murdered my sister! Under Fredegunde's influence, he ordered Gailswintha strangled. Only a few days later, he married the concubine. I will spill the blood of them both..."
		},
		{
			"speaker", "character", "Sigibert",
			"text", "We cannot, not now. The Avars are invading once again, we need to deal with that first."
		}
	}
})

DefineDialogue("saxons-attack-francia-through-italy", {
	Nodes = {
		{
			"speaker", "character", "Sigibert",
			"text", "Italy has fallen to the Lombards. Greek dominion over the peninsula is at an end."
		},
		{
			"speaker", "character", "Brunichilde",
			"text", "Not long ago the Greeks waged war on my homeland, I cannot say I have sympathy for them."
		},
		{
			"speaker", "character", "Sigibert",
			"text", "A group of Saxons have entered Italy together with the Lombards, and they're marching on to Francia. Time to beat them back."
		},
		{
			"speaker", "character", "Brunichilde",
			"text", "My sword is ready to spill some Saxon blood."
		},
		{
			"speaker", "character", "Brunichilde",
			"text", "(And someday Fredegunde will get her due...)"
		}
	}
})

DefineDialogue("sigibert-receives-news-of-chariberts-death", {
	Nodes = {
		{
			"speaker", "character", "Sigibert",
			"text", "My brother Charibert has died... His lands were to be distributed between the remaining three of us, but Chilperich has preemptively invaded and taken my share for himself."
		},
		{
			"speaker", "character", "Brunichilde",
			"text", "The time has come, Sigibert. Chilperich shall know our wrath!"
		}
	}
})

DefineDialogue("gunthram-allies-with-chilperich", {
	Nodes = {
		{
			"speaker", "character", "Brunichilde",
			"text", "My love... your brother Gunthram has allied with Chilperich."
		},
		{
			"speaker", "character", "Sigibert",
			"text", "He is afraid that I will take all of Francia for myself. No matter, once Chilperich is defeated Gunthram will surely come around."
		}
	}
})

DefineDialogue("sigiberts-victory", {
	Nodes = {
		{
			"speaker", "character", "Sigibert",
			"text", "Chilperich's forces have been utterly defeated! Victory is at hand!"
		},
		{
			"speaker", "character", "Brunichilde",
			"text", "My love, Chilperich's own followers are turning over to you and acclaiming you as their king!"
		},
		{
			"speaker", "character", "Sigibert",
			"text", "His only option now is to surrender."
		},
		{
			"speaker", "character", "Sigibert",
			"text", "Aagh!"
		},
		{
			"speaker", "character", "Sigibert",
			"text", "...poisoned knives?"
		},
		{
			"speaker", "character", "Brunichilde",
			"text", "Sigibert!"
		},
		{
			"speaker", "character", "Brunichilde",
			"text", "Men, take the two slaves who attacked our king and get the name of who ordered the attack, no matter the cost!"
		},
		{
			"speaker", "character", "Brunichilde",
			"text", "My Sigibert..."
		},
		{
			"speaker", "character", "Sigibert",
			"text", "...I love you, Brunichilde... more beautiful than the tales could do justice... take care of Childebert, our son..."
		},
		{
			"speaker", "character", "Brunichilde",
			"text", "Don't you die on me! Damn it Sigibert, no!"
		},
		{
			"speaker", "character", "Brunichilde",
			"text", "Fredegunde..."
		}
	}
})
