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
--      (c) Copyright 2016-2018 by Andrettin
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
			"speaker", "character", "sigibert",
			"text", "Chilperich's actions disgust me! Our father had just been laid to rest, and he already began to rally followers to take the entire realm for himself. Charibert, Gunthram and I were taken very much by surprise at this despondent show of raw ambition. Nevertheless, we managed to foil his plans and enforce a legitimate division of the realm between the four of us. Why should there be such conflict between brothers..."
		},
		{
			"speaker", "character", "sigibert",
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
			"speaker", "character", "sigibert",
			"text", "What is this?! Chilperich is taking advantage of me being occupied with the Avars to take my lands..."
		}
	}
})

DefineDialogue("chilperich-sues-for-peace", {
	Nodes = {
		{
			"speaker", "character", "chilperich",
			"text", "Sigibert! My brother, you have beaten me. I ask you for peace."
		},
		{
			"speaker", "character", "sigibert",
			"text", "Damn you and your peace, Chilperich! You attacked me from behind my back."
		},
		{
			"speaker", "character", "gunthram",
			"text", "Be reasonable, Sigibert. You have already remedied the ill Chilperich has caused you, it's no use pursuing him into his lands. Your inheritance was larger than that of any of the other three of us. I will not stand by while you take Chilperich's share as well."
		},
		{
			"speaker", "character", "sigibert",
			"text", "Fair enough. Chilperich, I will accept your peace, but do not dare prey on my lands again."
		}
	}
})

DefineDialogue("sigibert-mentions-the-portal-to-nidavellir", {
	Nodes = {
		{
			"speaker", "character", "sigibert",
			"text", "Our traditions say that a gateway to the realm of the dwarves lies to the northeast of my territory, close to the Saxon lands. I do not know anyone who has actually been able to find it, but perhaps I should investigate the matter."
		},
		{
			"text", "Hint: To see and use portals, your hero needs the Ethereal Vision ability."
		}
	}
})

DefineDialogue("sigibert-encounters-regin", {
	Nodes = {
		{
			"speaker", "character", "sigibert",
			"text", "A... dwarf?"
		},
		{
			"speaker", "character", "regin",
			"text", "Of course I am a dwarf, what else did ye expect to find in the dwarven lands? The true question is: who and what are ye? Ye, the one who rides a strange beast and looks like a giant gnome, and enters unannounced into the dwarven lands."
		},
		{
			"speaker", "character", "sigibert",
			"text", "I am Sigibert, son of Chlothar and king of Austrasia. I am a man, a human."
		},
		{
			"speaker", "character", "regin",
			"text", "A human, eh? Our traditions speak of humans, though some of our people believe yer folk to only exist in tales."
		},
		{
			"speaker", "character", "sigibert",
			"text", "And who are you?"
		},
		{
			"speaker", "character", "regin",
			"text", "I am Regin, the son of Hreidmar, and the best smith in these lands. And the brother of Fafnir, the fallen. Years ago, my brother Otter was killed by a wanderer from the Shadowcharm clan, a servant of the god Loki. I, together with Fafnir and my father, managed to overpower the murderer. He pleaded for his life, offering to give us a large quantity of gold as compensation for Otter's death."
		},
		{
			"speaker", "character", "regin",
			"text", "The wanderer then left two of his companions with us as a guarantee, and set off to the home of the wealthy dwarf Andvari, the son of Oin. He threatened Andvari with death, and took the dwarf's riches away, and gave them to my father as our compensation. But it turns out the gold was cursed. Within the hoard was a ring which Andvari had cherished, and which he had cursed as the wanderer took it off his hand."
		},
		{
			"speaker", "character", "regin",
			"text", "Me and Fafnir asked my father for a share of the gold. But the ring's curse was already having its effect, and my father greedily refused and said he would keep it all for himself. Then... Fafnir thrust a sword through him! My brother, now a kinslayer... He took all of the gold for himself, and refused to share as well. For long have I brooded over my father's death and for the theft of my rightful share of his inheritance."
		},
		{
			"speaker", "character", "regin",
			"text", "And now yer here! A hardy, courageous hero. Slay Fafnir for me, Sigibert, and ye will be properly rewarded. My brother lives in Gnitaheith, and through some powerful sorcery he has transformed himself into a wyrm, a monster! Awed by Fafnir's might, a tribe of kobolds has come to serve him.",
			"options", {"Accept", "Decline"},
			"option-effects", {
				function(s)
					CallDialogue("sigibert-accepts-regins-quest", trigger_player)
				end,
				function(s)
					CallDialogue("sigibert-refuses-regins-quest", trigger_player)
				end
			}
		}
	}
})

DefineDialogue("sigibert-accepts-regins-quest", {
	Nodes = {
		{
			"speaker", "character", "sigibert",
			"text", "Very well, I will do as you suggest."
		},
		{
			"speaker", "character", "regin",
			"text", "Take this sword, ye may need it in yer fight against Fafnir. It is called Gram, and I consider it my finest work."
		},
		{
			"speaker", "character", "sigibert",
			"text", "Thank you, I will see to it that the sword is bathed in Fafnir's blood."
		}
	}
})

DefineDialogue("sigibert-refuses-regins-quest", {
	Nodes = {
		{
			"speaker", "character", "sigibert",
			"text", "That is not my battle to fight. My kingdom needs me more."
		}
	}
})

DefineDialogue("fafnir-taunts-sigibert", {
	Nodes = {
		{
			"speaker", "character", "fafnir",
			"text", "Young warrior! Who are ye, one who has reddened yer sword with my blood?"
		},
		{
			"speaker", "character", "sigibert",
			"text", "My bloodline is, I think, unknown to you, and so am I myself. I am but a lone traveller."
		},
		{
			"speaker", "character", "fafnir",
			"text", "Ye refuse to tell me yer name? Are ye afraid of the words that may come out of the mouth of the dying?"
		},
		{
			"speaker", "character", "sigibert",
			"text", "I am Sigibert, and my father was Chlothar."
		},
		{
			"speaker", "character", "fafnir",
			"text", "Sigibert, I advise ye, leave my hoard alone. If ye do not do so, the gold and the ring shall be yer end.",
			"options", {"Take the gold", "Heed Fafnir"},
			"option-effects", {
				function(s)
					CallDialogue("sigibert-takes-fafnirs-gold", trigger_player)
				end,
				function(s)
					CallDialogue("sigibert-heeds-fafnir", trigger_player)
				end
			}
		}
	}
})

DefineDialogue("sigibert-takes-fafnirs-gold", {
	Nodes = {
		{
			"speaker", "character", "sigibert",
			"text", "Such may be your counsel, but I will take the treasure nevertheless. Your struggle with death will soon come to an end, goodbye Fafnir."
		},
		{
			"text", "Then Regin went up to Fafnir and cut out his heart with his sword, which was named Rithil."
		},
		{
			"speaker", "character", "regin",
			"text", "Now, Sigibert, hold Fafnir's heart to the fire. The one who eats it shall become a mightier warrior."
		},
		{
			"text", "Sigibert took Fafnir's heart and cooked it on a spit. When he thought that it was fully cooked, and the blood foamed out of the heart, Sigibert took it out."
		},
		{
			"speaker", "character", "regin",
			"text", "Sigibert... I am sorry, but yer not leaving with any of my gold. And besides, though ye did so at my behest, yer still my brother's slayer, and I suppose I am bound by blood to avenge him."
		}
	}
})

DefineDialogue("sigibert-heeds-fafnir", {
	Nodes = {
		{
			"speaker", "character", "sigibert",
			"text", "I will not take this cursed gold. Regin, keep it all to yourself."
		},
		{
			"text", "Then Regin went up to Fafnir and cut out his heart with his sword, which was named Rithil."
		},
		{
			"speaker", "character", "regin",
			"text", "Now, Sigibert, hold Fafnir's heart to the fire. The one who eats it shall become a mightier warrior."
		},
		{
			"text", "Sigibert took Fafnir's heart and cooked it on a spit. When he thought that it was fully cooked, and the blood foamed out of the heart, Sigibert took it out."
		},
		{
			"speaker", "character", "regin",
			"text", "Sigibert, we must part ways. As ye said, this is my gold now! I shall let none approach it."
		}
	}
})

DefineDialogue("sigibert-complains-of-his-brothers-marriages", {
	Nodes = {
		{
			"speaker", "character", "sigibert",
			"text", "My brothers are marrying women of lower birth, even slaves... Men of our station should marry higher-born ladies. I have heard many good things of Brunichilde, the daughter of the Visigothic king Athanagild. She is said to be beautiful, intelligent and well-mannered. I will send an embassy to her father asking for her hand, along with gifts to show my appreciation."
		}
	}
})

DefineDialogue("brunichilde-arrives-at-sigiberts-court", {
	Nodes = {
		{
			"speaker", "character", "brunichilde",
			"text", "My lord, I have come from far away to meet you."
		},
		{
			"speaker", "character", "sigibert",
			"text", "My lady... Brunichilde?"
		},
		{
			"speaker", "character", "brunichilde",
			"text", "One and the same. Did you expect me to come in a dress? I am a warrior, my lord, like my father. I was pleased to read the message you wrote me. My father cherishes the opportunity to bind our houses, and I am glad to venture this far north and live among the mighty Franks."
		},
		{
			"speaker", "character", "sigibert",
			"text", "This union is a great honor to me. If my father still lived, I am sure he would be happy as well."
		},
		{
			"speaker", "character", "brunichilde",
			"text", "I have heard you managed to fight off an army of the savage Avars. And beat your treacherous brother at the same time!"
		},
		{
			"speaker", "character", "sigibert",
			"text", "I did what I had to, my lady."
		},
		{
			"speaker", "character", "brunichilde",
			"text", "Well, one day you will hear of the exploits of Brunichilde. Ah yes, my father was very pleased with your gifts - and he sent a great amount of treasure together with me."
		},
		{
			"speaker", "character", "sigibert",
			"text", "That was most kind of him. Ah, my people clamor! Come, the priest is ready to marry us."
		}
	}
})

DefineDialogue("chilperich-envies-sigiberts-gold", { -- this is shown only to the Chilperich player (meaning it is not visible to the player in the Sigibert campaign, it is included here more as a lore explanation), and only if Sigibert has both acquired Fafnir's gold and received Brunichilde's treasure
	Nodes = {
		{
			"speaker", "character", "chilperich",
			"text", "Word has reached me that Sigibert has rapidly amassed a large amount of gold. I was told his new wife Brunichilde brought a lot of treasure with her, but could that alone have increased Sigibert's wealth by so much? I did not know Athanagild to be so rich... But I see no other possible reason. The Visigothic king has another daughter, it would do me well to marry her."
		}
	}
})

DefineDialogue("chilperich-marries-gailswintha", { -- Chilperich's marriage to Gailswintha only happens if his envy for Sigibert's gold is triggered, which requires Sigibert to have obtained both Brunichilde's treasure and Fafnir's cursed gold; in effect, this means that gaining the cursed gold indeed brings Sigibert to ruin in the end, as shown later
	Nodes = {
		{
			"speaker", "character", "brunichilde",
			"text", "I received word from my father. My sister Gailswintha is also coming to Francia! She is to marry your brother, Chilperich."
		},
		{
			"speaker", "character", "sigibert",
			"text", "That is an ill tiding. Chilperich was enthralled by a concubine, Fredegunde... He must have heard of the treasure you brought, and is marrying your sister out of pure greed! Your sister needs to take care, Chilperich is not to be trusted."
		},
		{
			"speaker", "character", "brunichilde",
			"text", "You worry too much. Chilperich did you wrong, but it is time for reconciliation. With this marriage, me and my sister can bring you both closer together."
		},
		{
			"speaker", "character", "sigibert",
			"text", "Brunichilde..."
		}
	}
})

DefineDialogue("chilperich-murders-gailswintha", {
	Nodes = {
		{
			"speaker", "character", "brunichilde",
			"text", "Sigibert, I..."
		},
		{
			"speaker", "character", "sigibert",
			"text", "What happened?"
		},
		{
			"speaker", "character", "brunichilde",
			"text", "I just received word of Gailswintha. At first, Chilperich showed himself very fond of her, though if that was only because of the treasure she brought I cannot say. Soon, however, he began visiting once more the bed of his former concubine, Fredegunde. As a result of this scandal, my sister and Fredegunde quarreled."
		},
		{
			"speaker", "character", "sigibert",
			"text", "Chilperich is no good, my dear, I tried telling you."
		},
		{
			"speaker", "character", "brunichilde",
			"text", "He murdered my sister! Under Fredegunde's influence, he ordered Gailswintha strangled. Only a few days later, he married the concubine. I will spill the blood of them both..."
		},
		{
			"speaker", "character", "sigibert",
			"text", "We cannot, not now. The Avars are invading once again, we need to deal with that first."
		}
	}
})

DefineDialogue("avars-invade-sigiberts-kingdom-again", { -- appears if Chilperich hasn't married Gailswintha
	Nodes = {
		{
			"speaker", "character", "sigibert",
			"text", "Once more the Avars come to my borders. Don't these horse riders ever learn?"
		}
	}
})

DefineDialogue("saxons-attack-francia-through-italy", {
	Nodes = {
		{
			"speaker", "character", "sigibert",
			"text", "Italy has fallen to the Lombards. Greek dominion over the peninsula is at an end."
		},
		{
			"speaker", "character", "brunichilde",
			"text", "Not long ago the Greeks waged war on my homeland, I cannot say I have sympathy for them."
		},
		{
			"speaker", "character", "sigibert",
			"text", "A group of Saxons have entered Italy together with the Lombards, and they're marching on to Francia. Time to beat them back."
		},
		{
			"speaker", "character", "brunichilde",
			"text", "My sword is ready to spill some Saxon blood."
		},
		{
			"speaker", "character", "brunichilde",
			"text", "(And someday Fredegunde will get her due...)" -- this part should only be displayed if Fredegunde has caused Gailswintha to get murdered
		}
	}
})

DefineDialogue("sigibert-receives-news-of-chariberts-death-gailswintha-murdered", { -- appears if Gailswintha has been murdered
	Nodes = {
		{
			"speaker", "character", "sigibert",
			"text", "My brother Charibert has died... His lands were to be distributed between the remaining three of us, but Chilperich has preemptively invaded and taken my share for himself."
		},
		{
			"speaker", "character", "brunichilde",
			"text", "The time has come, Sigibert. Chilperich shall know our wrath!"
		},
		{
			"speaker", "character", "sigibert",
			"text", "The bishop Germanus has told me that if I undertake this war without the intent of killing my brother, I will return safe and sound. But that otherwise I will end in ruin..."
		},
		{
			"speaker", "character", "brunichilde",
			"text", "The old man must be going senile. Chilperich's misdeeds need to end! He killed my sister, my beloved sister..."
		},
		{
			"speaker", "character", "sigibert",
			"text", "Yes. He has done great ill, specially to you. His murder of Gailswinthia must be avenged."
		}
	}
})

DefineDialogue("sigibert-receives-news-of-chariberts-death-gailswintha-alive", { -- appears if Gailswintha is alive (hasn't married to Chilperich)
	Nodes = {
		{
			"speaker", "character", "sigibert",
			"text", "My brother Charibert has died... His lands were to be distributed between the remaining three of us, but Chilperich has preemptively invaded and taken my share for himself."
		},
		{
			"speaker", "character", "brunichilde",
			"text", "We need to put a stop to Chilperich's ambitions."
		},
		{
			"speaker", "character", "sigibert",
			"text", "The bishop Germanus has told me that if I undertake this war without the intent of killing my brother, I will return safe and sound. But that otherwise I will end in ruin..."
		},
		{
			"speaker", "character", "brunichilde",
			"text", "I am not sure if the bishop's vision is to be trusted. But either way kinslaying is said to be a most vicious deed."
		},
		{
			"speaker", "character", "sigibert",
			"text", "You are right. Though Chilperich is far too ambitious for his own good, killing him is not the right way."
		}
	}
})

DefineDialogue("gunthram-allies-with-chilperich", {
	Nodes = {
		{
			"speaker", "character", "brunichilde",
			"text", "My love... your brother Gunthram has allied with Chilperich."
		},
		{
			"speaker", "character", "sigibert",
			"text", "He is afraid that I will take all of Francia for myself. No matter, once Chilperich is defeated Gunthram will surely come around."
		}
	}
})

DefineDialogue("sigiberts-victory", {
	Nodes = {
		{
			"speaker", "character", "sigibert",
			"text", "Chilperich's forces have been utterly defeated! Victory is at hand!"
		},
		{
			"speaker", "character", "brunichilde",
			"text", "My love, Chilperich's own followers are turning over to you and acclaiming you as their king!"
		},
		{
			"speaker", "character", "sigibert",
			"text", "His only option now is to surrender.",
			"option-effects", {
				function(s)
					if (true) then -- if Sigibert has acquired Fafnir's gold, resulting in Gailswintha's death and Brunichilde's vow for revenge, he dies (perhaps because if Brunichilde is enthralled with the thought of revenge, Fredegunde presumes that this is a fight to the death - possibly including the death of her children - and thus hires the assassins)
						CallDialogue("sigiberts-murder", trigger_player)
					else
						CallDialogue("chilperich-surrenders", trigger_player)
					end
				end
			}
		}
	}
})

DefineDialogue("sigiberts-murder", {
	Nodes = {
		{
			"speaker", "character", "sigibert",
			"text", "Aagh!"
		},
		{
			"speaker", "character", "sigibert",
			"text", "...poisoned knives?"
		},
		{
			"speaker", "character", "brunichilde",
			"text", "Sigibert!"
		},
		{
			"speaker", "character", "brunichilde",
			"text", "Men, take the two slaves who attacked our king and get the name of who ordered the attack, no matter the cost!"
		},
		{
			"speaker", "character", "brunichilde",
			"text", "My Sigibert..."
		},
		{
			"speaker", "character", "sigibert",
			"text", "...I love you, Brunichilde... more beautiful than the tales could do justice... take care of Childebert, our son..."
		},
		{
			"speaker", "character", "brunichilde",
			"text", "Don't you die on me! Damn it Sigibert, no!"
		},
		{
			"speaker", "character", "brunichilde",
			"text", "Fredegunde...",
			"option-effects", {
				function(s)
					if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "sigiberts-struggle") then
						CallDialogue("campaign-victory", trigger_player)
					end
				end
			}
		}
	}
})

DefineDialogue("chilperich-surrenders", {
	Nodes = {
		{
			"speaker", "character", "sigibert",
			"text", "It is over, Chilperich."
		},
		{
			"speaker", "character", "chilperich",
			"text", "What are your terms?"
		},
		{
			"speaker", "character", "sigibert",
			"text", "You will relinquish your lands. Your hair will be cut, and you will be sent to a monastery. Your children will serve under me, and I will make sure they are treated well."
		},
		{
			"speaker", "character", "chilperich",
			"text", "I see no other way... I accept.",
			"option-effects", {
				function(s)
					if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "sigiberts-struggle") then
						CallDialogue("campaign-victory", trigger_player)
					end
				end
			}
		}
	}
})
