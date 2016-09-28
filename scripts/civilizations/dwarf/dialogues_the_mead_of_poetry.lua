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
			"text", "Aye! Then we shall gain all his ancient wisdom. Many speak of the gateway to the realm of the gods, but few can actually see it. The both of us, however, are attuned to that which is mystical. We can see beyond the material, we can see the rainbow bridge... And we can use it to reach Asgard, the realm of the race of gods known as Aesir."
		},
		{
			"speaker", "character", "Galar",
			"text", "We must act quickly - if the other deities see us and intervene as we slay Kvasir, then we shall face untold wrath."
		},
		{
			"speaker", "character", "Fjalar",
			"text", "To kill a god... an immensely dangerous feat, but one which shall be extremely rewarding.",
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
			"speaker", "character", "Fjalar",
			"text", "It is done. The pointy-eared bastard was a lot tougher than his frail body made it seem."
		},
		{
			"speaker", "character", "Galar",
			"text", "A lot of blood in him, too. We have gotten enough for plenty of mead."
		},
		{
			"speaker", "character", "Fjalar",
			"text", "We must tell no one what has transpired. If word gets out, we will have to face the ire of the gods."
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
					CallDialogue("the-mead-of-poetry-offer-gilling-the-mead", player)
				end
--				function(s)
--					CallDialogue("the-mead-of-poetry-leave-gilling-alone", player)
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
