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

DefineDialogue("freys-messenger-skirnir-sent-to-nidavellir", { -- based on the myth of the binding of Fenrir; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 35.
	Nodes = {
		{
			"speaker", "character", "Frey",
			"text", "I have just spoken with the Allfather, Odin. Or as your people call him, Wodanaz. The monster Fenrir troubles him. We cannot kill the beast here, as it would stain Asgard's sacred soil with the corrupted blood that runs through its veins. Therefore we need to chain Fenrir. Twice have we crafted fetters to do so, and twice it has broken its chains. Our last recourse is to ask the dwarves of Nidavellir to craft a fetter for us, as their metalworking knows no parallel."
		},
		{
			"speaker", "character", "Skirnir",
			"text", "Even amongst the Aesir and the Vanir?"
		},
		{
			"speaker", "character", "Frey",
			"text", "Indeed. The Aesir are warrior gods, while we, the Vanir, are deities of fertility and magic. For all our power, I am afraid these mortal dwarves are better craftsmen than we are. I am sending you to their world to request the dwarves known as the Brisings to create the fetter for us. As you know, as deities we cannot enter material worlds. This task must fall to you, a gifted mortal, a planewalker."
		},
		{
			"speaker", "character", "Skirnir",
			"text", "Yes, master.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "freys-messenger-contact-the-brisings")
				end
			}
		}
	}
})

DefineDialogue("freys-messenger-skirnir-contacts-the-brisings", { -- based on the myth of the binding of Fenrir; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 35.
	Nodes = {
		{
			"speaker", "character", "Skirnir",
			"text", "Greetings, noble dwarves. I am Skirnir, and I was sent to you by my master, a Vanir god. My people call him Fraujaz, though others know him as Frey."
		},
		{
			"speaker", "character", "Nar",
			"text", "Welcome, Skirnir the giant-gnome, it is a blessing to speak with a servant of Frey. Our priests have foretold your coming. What is it that the gods desire from us?"
		},
		{
			"speaker", "character", "Skirnir",
			"text", "The beast Fenrir imperils Asgard, but cannot be slain lest its evil blood taint the land. It must be bound with a fetter - but so far none have been strong enough to contain it. My master believes your clansfolk sufficiently skilled to craft the masterful chain which the gods require."
		},
		{
			"speaker", "character", "Nar",
			"text", "Very well. We are fit for the job, you will find no better smiths than us. But there's the matter of, you see, the reward..."
		},
		{
			"speaker", "character", "Skirnir",
			"text", "A fair question. The gods have allowed me to offer you 10,000 gold pieces - given from the coffers of their priesthoods throughout this world."
		},
		{
			"speaker", "character", "Nar",
			"text", "In that case - we agree. Nain! Niping! Call the others, we have some work to do!",
			"option-effects", {
				function(s)
				end
			}
		}
	}
})


DefineDialogue("freys-messenger-skirnir-returns-with-the-fetter", { -- based on the myth of the binding of Fenrir; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 35.
	Nodes = {
		{
			"speaker", "character", "Skirnir",
			"text", "Master Fraujaz, I have returned with the fetter!"
		},
		{
			"speaker", "character", "Frey",
			"text", "Excellent, my brave Skirnir! It seems so light and yet strong... How did the dwarves fashion it?"
		},
		{
			"speaker", "character", "Skirnir",
			"text", "They would not let me in to their secrets... all I could gather is that their runesmiths imbued it with powerful incantations."
		},
		{
			"speaker", "character", "Frey",
			"text", "It is no matter. What is important is that Fenrir shall now be bound!"
		}
	}
})

DefineDialogue("freys-messenger-njords-concern", { -- based on the myth of Skirnir's journey; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 54; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 108.
	Nodes = {
		{
			"speaker", "character", "Njord",
			"text", "Skirnir, something is wrong with my son, Fraujaz. He neither eats nor sleeps, and refuses to tell me what is troubling him. Perhaps he will confide in you, his trusted servant. Try and talk to him!"
		},
		{
			"speaker", "character", "Skirnir",
			"text", "I will do so, great Nerthiwiz. And yet... I expect ill words to come out of his mouth."
		}
	}
})

DefineDialogue("freys-messenger-freys-longing", { -- based on the myth of Skirnir's journey; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 54-55; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 109.
	Nodes = {
		{
			"speaker", "character", "Skirnir",
			"text", "Master Fraujaz, why do you remain day after day shut away from the other gods, and refuse to eat or sleep?"
		},
		{
			"speaker", "character", "Frey",
			"text", "Speaking to others would do me no good. No matter how beautifully sunshine is, my world is filled with sadness."
		},
		{
			"speaker", "character", "Skirnir",
			"text", "You can trust me, no matter what it is. I am your faithful servant."
		},
		{
			"speaker", "character", "Frey",
			"text", "Skirnir... my heart aches. I secretly got into Wodanaz's hall of Valaskjalf, and sat in his high seat where many realms can be seen. I looked into Jotunheim... and saw her. So beautiful, the daughter of a mighty ettin. I could only stare and stare... I long for her! I love her... and the gods would hardly accept my union with a mortal, let alone an ettin!"
		},
		{
			"speaker", "character", "Frey",
			"text", "Damn it all! I must have her. Skirnir, go to Jotunheim and bring her to me. Do whatever it takes, and I will give you great rewards."
		},
		{
			"speaker", "character", "Skirnir",
			"text", "Yes, master. But I will need your sword, as without its powers against ettins I may not succeed in this perilous task. It could also be a fitting reward for this dangerous deed."
		},
		{
			"speaker", "character", "Frey",
			"text", "Take it. Once you bring Gerd to me, you will have earned the permanent possession of the sword."
		}
	}
})


DefineDialogue("freys-messenger-skirnir-meets-gerd", { -- based on the myth of Skirnir's journey; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 56-58; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 113-119.
	Nodes = {
		{
			"speaker", "character", "Gerd",
			"text", "Who are you, who dares approach my hall? An elf, one of the Aesir, or a wise member of the Vanir?"
		},
		{
			"speaker", "character", "Skirnir",
			"text", "I am neither an elf nor a god. I am Skirnir, messenger of the god Frey. A planewalker - like you, noble seeress. I bring eleven golden apples, all yours if you promise yourself to Fraujaz, whom you know as Frey. I also offer you the magnificent ring, Draupnir, with its divine golden sparkle."
		},
		{
			"speaker", "character", "Gerd",
			"text", "I will take neither the apples nor the ring. Nor will I promise myself to anyone, I cannot be bought. I have seen Frey in my dreams, and yet he never says me a word. He must wish me ill things."
		},
		{
			"speaker", "character", "Skirnir",
			"text", "He has no sinister intent, I can assure you. Frey's heart is heavy with longing, his love for you has taken away the words from his lips. He knows this union will not be well-accepted by the other gods, and yet he is determined to be with you."
		},
		{
			"speaker", "character", "Gerd",
			"text", "Tell him... I will meet him secretly in Asgard. Never did I think that I could fall in love for an elf, or one of the Vanir..."
		},
		{
			"speaker", "character", "Skirnir",
			"text", "I will ride fast back to Asgard, to let Frey know of the news!"
		}
	}
})
