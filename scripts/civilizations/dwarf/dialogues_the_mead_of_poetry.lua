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

DefineDialogue("the-mead-of-poetry-fjalar-and-galar-conspire", {
	Nodes = {
		{
			"speaker", "character", "Fjalar",
			"text", "Minstrels from far and wide have told us stories of Kvasir, the wisest of the gods."
		},
		{
			"speaker", "character", "Galar",
			"text", "Aye. It is said that he has complete grasp of the truth of all things, giving direct and precise answers to any inquiries made of them. Even those who seek not the facts, but help in deciding the best course of action they should take are aided by Kvasir's wisdom. He asks them the right questions, so that they may find the answers to their troubles inside themselves."
		},
		{
			"speaker", "character", "Fjalar",
			"text", "To have such wisdom... it would give us a gift with words greater than that of any poet alive, and more insightfulness than any sage possesses."
		},
		{
			"speaker", "character", "Galar",
			"text", "There is a way, my dear brother. If we brew his blood into mead and drank it..."
		},
		{
			"speaker", "character", "Fjalar",
			"text", "Aye! Then we shall gain all his ancient wisdom. To kill a god... an immensely dangerous feat, but one which shall be extremely rewarding. First, however, we would need to reach Asgard, the realm of the race of gods known as Aesir. Many speak of the gateway to that plane, but who has actually seen it?"
		},
		{
			"speaker", "character", "Galar",
			"text", "With a potion of ethereal vision we can attune ourselves to that which is mystical. Then we will be able to see the rainbow bridge... And use it to reach Asgard."
		},
		{
			"speaker", "character", "Fjalar",
			"text", "Once we are in the divine plane, we must act quickly - if the other deities realize what is happening and intervene as we slay Kvasir, then we shall face untold wrath. Thankfully ye can brew us potions of invisibility to help us with the task."
		},
		{
			"speaker", "character", "Galar",
			"text", "We will need, then, the ingredients for the potions. Four gryphon feathers for the potions of invisibility, and two wyrm eyes for the potions of ethereal vision.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "the-mead-of-poetry-brew-potions-of-invisibility")
					SetPlayerData(trigger_player, "AcceptQuest", "the-mead-of-poetry-brew-potions-of-ethereal-vision")
					SetPlayerData(trigger_player, "AcceptQuest", "the-mead-of-poetry-kill-kvasir")
				end
			}
		}
	}
})

DefineDialogue("the-mead-of-poetry-potions-of-invisibility-ready", {
	Nodes = {
		{
			"speaker", "character", "Galar",
			"text", "The gryphon feathers are ours! Now I can brew us our potions of invisibility... We should use them just before entering Asgard. Remember, the potion's magic will wear off as soon as we attack Kvasir. I am preparing four potions for us - two to be used to get to Kvasir unseen, and another pair for us to drink in order to get out of there safely."
		}
	}
})

DefineDialogue("the-mead-of-poetry-potions-of-ethereal-vision-ready", {
	Nodes = {
		{
			"speaker", "character", "Galar",
			"text", "We have all the ingredients for the potions of ethereal vision! There... soon they shall be ready. The potion's effect only lasts for a limited duration, so we should only drink it when we feel we have come to the right place."
		},
		{
			"speaker", "character", "Fjalar",
			"text", "The rainbow bridge is said to stand on the surface of Nidavellir. That's where we should begin our search."
		},
		{
			"speaker", "character", "Galar",
			"text", "Indeed, dear brother. We must also not linger for too long in Asgard, lest the potion's effect wear out and we be left stranded there."
		},
		{
			"speaker", "character", "Fjalar",
			"text", "That would be a most fatal mistake."
		}
	}
})

DefineDialogue("the-mead-of-poetry-kvasir-assassinated", {
	Nodes = {
		{
			"speaker", "character", "Fjalar",
			"text", "It is done. The pointy-eared bastard was a lot tougher than his frail body made it seem."
		},
		{
			"speaker", "character", "Galar",
			"text", "A lot of blood in him, too. We have gotten enough for plenty of mead."
		},
		{
			"speaker", "character", "Fjalar",
			"text", "We must tell no one what has transpired. If word gets out, we will have to face the ire of the Aesir."
		},
		{
			"speaker", "character", "Galar",
			"text", "I say, better we not drink all of the mead just yet. If someone ends up coming after us, we may need to trade some of it for our lives."
		}
	}
})

DefineDialogue("the-mead-of-poetry-gilling-appears", {
	Nodes = {
		{
			"speaker", "character", "Fjalar",
			"text", "Who are ye, ye lumbering oaf?!"
		},
		{
			"speaker", "character", "Gilling",
			"text", "I am Gilling, ettin traveler of worlds. I was scrying when I felt the fabric of reality being breached by planewalkers to reach Asgard, and I have finally located the origin of the event to this world. Amongst ettins, planewalking is a rare but not unheard of gift. But here, I suppose it is the first time that it happens. Curious, a realm of tiny people..."
		},
		{
			"speaker", "character", "Galar",
			"text", "This isn't good, Fjalar. If he felt when we used the rainbow bridge, he may have some knowledge of what transpired in Asgard afterwards. If the gods learn of this...",
--			"options", {"Time for him to die", "Offer the mead for his silence", "Leave him alone"},
			"options", {"Time for him to die", "Offer the mead for his silence"},
			"option-effects", {
				function(s)
				end,
				function(s)
					CallDialogue("the-mead-of-poetry-offer-gilling-the-mead", trigger_player)
				end
--				function(s)
--					CallDialogue("the-mead-of-poetry-leave-gilling-alone", trigger_player)
--				end
			}
		}
	}
})

DefineDialogue("the-mead-of-poetry-offer-gilling-the-mead", {
	Nodes = {
		{
			"speaker", "character", "Gilling",
			"text", "You want me to take your mead in exchange for not telling others that I felt the breach? I don't see why not."
		}
	}
})

DefineDialogue("the-mead-of-poetry-leave-gilling-alone", {
	Nodes = {
		{
			"speaker", "character", "Gilling",
			"text", "Do you two know what I am talking about?"
		},
		{
			"speaker", "character", "Fjalar",
			"text", "The poets say a rainbow bridge somewhere in our world leads to Asgard. But we have never seen it, and we don't know anything else. We're warriors, not sages."
		},
		{
			"speaker", "character", "Gilling",
			"text", "I must be on my way, then."
		}
	}
})

DefineDialogue("the-mead-of-poetry-gillings-boastfulness", {
	Nodes = {
		{
			"speaker", "character", "Galar",
			"text", "Brother... Gilling took our mead, but he has not kept his mouth shut. He has spread the word that we gave him the mead to not tell others about the use of the rainbow bridge. It is now obvious to the Aesir that we must have been the ones to murder Kvasir. Through their priests, they have turned the other dwarven clans against us. Our chance of defeating the other clans is pitiful. We will be slaughtered."
		},
		{
			"speaker", "character", "Fjalar",
			"text", "Have some nerve, Galar. We still have one choice. We can go further underground, deep into uncharted caves, where no one will be able to find us. It will be extremely perilous, but we don't have much chance of surviving while staying here, do we?"
		}
	}
})

DefineDialogue("the-mead-of-poetry-suttung-wants-revenge", {
	Nodes = {
		{
			"speaker", "character", "Galar",
			"text", "Another ettin...?"
		},
		{
			"speaker", "character", "Suttung",
			"text", "My father's head... on a pike! You little creatures, you murdered him! I, Suttung, the son of Gilling, shall be your end!"
		},
		{
			"speaker", "character", "Galar",
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
			"speaker", "character", "Fjalar",
			"text", "We offer ye our most valuable possession as the blood price for yer father's death. If ye let us live, we'll give it to ye."
		},
		{
			"speaker", "character", "Suttung",
			"text", "Ha! And what is it, tableware of hammered gold? That is not enough to pay for the death of my father."
		},
		{
			"speaker", "character", "Fjalar",
			"text", "Much better than that. We have our magic mead... the mead of poetry. We brew it out of the blood of the wise Vanir god, Kvasir. Anyone who takes a sip becomes a sage. That is why yer father felt our planewalking to Asgard... we went there to slay Kvasir."
		},
		{
			"speaker", "character", "Suttung",
			"text", "Give that mead to me, and you live."
		}
	}
})

