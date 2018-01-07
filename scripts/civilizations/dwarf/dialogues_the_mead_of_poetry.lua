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

DefineDialogue("thjodrorir-speaks-of-kvasir", {
	Nodes = {
		{
			"speaker", "character", "thjodrorir",
			"text", "I had a fateful dream last night... in it, the mighty Hroptatyr told me of a wise elf, Kvasir."
		},
		{
			"speaker", "character", "modsognir",
			"text", "An elf...?"
		},
		{
			"speaker", "character", "thjodrorir",
			"text", "The elves are creatures whose body proportions are slender than those of gnomes, and yet they are incredibly tall... more so than the greatest of dwarves! They are not deities, but mortals like us, though they worship their own strange elf-gods. The elves live in their own world, Alfheim, which is secluded from ours. All this Hroptatyr showed to me."
		},
		{
			"speaker", "character", "thjodrorir",
			"text", "Some time ago our gods, the Aesir, fought a brutal war against the elf-gods, who are known as the Vanir. With neither side being able to achieve victory upon the other, they decided to make peace. To seal the agreement, the gods of both groups spat upon a sacred jar... and when all that was done, they decided to not waste the powerful assembly of divine saliva, and gave it to a wise elf - Kvasir - to drink."
		},
		{
			"speaker", "character", "thjodrorir",
			"text", "The result was that Kvasir became even wiser, perhaps the wisest of any mortal. Having drunk the divine mixture, Kvasir gained the ability to see the rifts that link the different worlds, and use them to go from one to another, and even beyond, to the realms of the gods... He became a planewalker! As an elf he was bound to the Vanir, and yet he was to live among the Aesir, thus symbolizing the peace."
		},
		{
			"speaker", "character", "modsognir",
			"text", "He drank the saliva? This is the first time I learn of these elves, and already they seem disgusting..."
		},
		{
			"speaker", "character", "thjodrorir",
			"text", "A small price to pay for the great wisdom received!"
		},
		{
			"speaker", "character", "thjodrorir",
			"text", "When Kvasir learned of our people, he decided to visit our homeworld, Nidavellir, and share his knowledge with dwarvenkind. He was invited by the brothers Fjalar and Galar to their hall, but ever since he has been missing. This does not bode well, and Hroptatyr desires us to seek the truth of Kvasir's fate."
		},
		{
			"speaker", "character", "modsognir",
			"text", "If the gods will it, then we must find out what happened to Kvasir."
		},
		{
			"speaker", "character", "durin",
			"text", "So it is decided, then. Modsognir, give me the order and I will lead a group of our warriors to the brothers' hall."
		}
	}
})

DefineDialogue("the-mead-of-poetry-fjalar-and-galar-conspire", {
	Nodes = {
		{
			"speaker", "character", "fjalar",
			"text", "Some of our people have met a strange being, who claims to be an elf called Kvasir. Already he has become famous for his wisdom, which he seeks to share with dwarvenkind."
		},
		{
			"speaker", "character", "galar",
			"text", "Aye. It is said that he has complete grasp of the truth of all things, giving direct and precise answers to any inquiries made of them. Even those who seek not the facts, but help in deciding the best course of action are aided by Kvasir's wisdom. He asks them the right questions back, so that they may find the answers to their troubles inside themselves."
		},
		{
			"speaker", "character", "fjalar",
			"text", "To have such wisdom... it would give us a gift with words greater than that of any poet alive, and more insightfulness than any sage possesses."
		},
		{
			"speaker", "character", "galar",
			"text", "There is a way, my dear brother. If we brew his blood into mead and drank it..."
		},
		{
			"speaker", "character", "fjalar",
			"text", "Aye! Then we should gain all his ancient wisdom. To kill such a powerful being... a dangerous feat, but one which shall be extremely rewarding. We must invite him, then, to our hall, and ask Kvasir to share his knowledge with us. He shall share more than he expects!",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "the-mead-of-poetry-kill-kvasir")
				end
			}
		}
	}
})

DefineDialogue("the-mead-of-poetry-kvasir-assassinated", {
	Nodes = {
		{
			"speaker", "character", "fjalar",
			"text", "It is done. The pointy-eared bastard was a lot tougher than his frail body made it seem."
		},
		{
			"speaker", "character", "galar",
			"text", "A lot of blood in him, too. We have gotten enough for plenty of mead."
		},
		{
			"speaker", "character", "fjalar",
			"text", "We must tell no one what has transpired. If word gets out, we will have to face the ire of the Aesir."
		},
		{
			"speaker", "character", "galar",
			"text", "I say, better we not drink all of the mead just yet. If someone ends up coming after us, we may need to trade some of it for our lives."
		}
	}
})

DefineDialogue("the-mead-of-poetry-invitation-to-gilling", {
	Nodes = {
		{
			"speaker", "character", "galar",
			"text", "Our ability to walk through different worlds will do us much good."
		},
		{
			"speaker", "character", "fjalar",
			"text", "Aye. The ettins of Jotunheim are a powerful people, their friendship would be most useful. I suggest we invite one of them we have come to know, the sturdy Gilling."
		},
		{
			"speaker", "character", "galar",
			"text", "I concur."
		}
	}
})

DefineDialogue("the-mead-of-poetry-gilling-appears", {
	Nodes = {
		{
			"speaker", "character", "fjalar",
			"text", "Ah, Gilling, yer finally here!"
		},
		{
			"speaker", "character", "gilling",
			"text", "A nice world, this. Harsh. Reminds me a bit of Jotunheim."
		},
		{
			"speaker", "character", "fjalar",
			"text", "Make yerself at home, Gilling. Some dwarven ale?"
		},
		{
			"speaker", "character", "gilling",
			"text", "Mmm, now that's some good stuff. Plenty of gold you have here. I will take some with me as your gift of hospitality."
		},
		{
			"speaker", "character", "fjalar",
			"text", "Ye sit at our table, eat our food and drink our ale, and still see fit to demand our gold?! Nothing brings nothing. If ye want gold, give us something worthy for it."
		},
		{
			"speaker", "character", "gilling",
			"text", "Hah! You are my hosts. I am Gilling, the mighty traveler of worlds, and I came a long way to visit you. The least I could expect is a valuable gift."
		},
		{
			"speaker", "character", "fjalar",
			"text", "Ye ask too much...",
			"options", {"Time to die"},
			"option-effects", {
				function(s)
				end
			}
		}
	}
})

DefineDialogue("the-mead-of-poetry-suttung-wants-revenge", {
	Nodes = {
		{
			"speaker", "character", "galar",
			"text", "Another ettin...?"
		},
		{
			"speaker", "character", "suttung",
			"text", "My father's head... on a pike! You little creatures, you murdered him! I, Suttung, the son of Gilling, shall be your end!"
		},
		{
			"speaker", "character", "galar",
			"text", "My brother... this ettin looks much stronger than his father. Skillful as we may be, I don't think we'll be much of a match for him.",
			"options", {"Offer him the mead for our lives", "Fight Suttung"},
			"option-effects", {
				function(s)
					CallDialogue("the-mead-of-poetry-offer-suttung-the-mead", trigger_player)
				end,
				function(s)
				end
			}
		}
	}
})

DefineDialogue("the-mead-of-poetry-offer-suttung-the-mead", {
	Nodes = {
		{
			"speaker", "character", "fjalar",
			"text", "We offer ye our most valuable possession as the blood price for yer father's death. If ye let us live, we'll give it to ye."
		},
		{
			"speaker", "character", "suttung",
			"text", "Ha! And what is it, tableware of hammered gold? That is not enough to pay for the death of my father."
		},
		{
			"speaker", "character", "fjalar",
			"text", "Much better than that. We have our magic mead... the mead of poetry. We brew it out of the blood of the wise Vanir god, Kvasir. Anyone who takes a sip becomes a sage. That is why yer father felt our planewalking to Asgard... we went there to slay Kvasir."
		},
		{
			"speaker", "character", "suttung",
			"text", "Give that mead to me, and you live."
		}
	}
})

DefineDialogue("the-mead-of-poetry-suttungs-boastfulness", {
	Nodes = {
		{
			"speaker", "character", "galar",
			"text", "I bear grave news. After Suttung took our mead, he began to boast of his deed. He has spread the full story of the mead to the four winds, including our hidden acts! The Aesir now know we are Kvasir's killers... Although their priority is in sending champions to recover the mead from Suttung's homeworld of Jotunheim, they have not forgotten what we have done. Through their priests, they have turned the other dwarven clans against us. Our chance of defeating the other clans is pitiful. We will be slaughtered."
		},
		{
			"speaker", "character", "fjalar",
			"text", "Have some nerve, Galar. We still have one choice. We can go further underground, deep into uncharted caves, where no one will be able to find us. It will be extremely perilous, but we don't have much chance of surviving while staying here, do we?"
		}
	}
})
