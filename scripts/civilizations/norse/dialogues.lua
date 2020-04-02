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
--      (c) Copyright 2016-2020 by Andrettin
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

DefineDialogue("the-house-of-seven-fathers", { -- based on the "The Seventh Father of the House" Norwegian folktale; Source: Peter Christen Asbjørnsen and Jørgen Moe, "Norwegian Folktales", 1960, pp. 13-14.
	Nodes = {
		{
			"text", "Weary of TRIGGER_HERO_POSSESSIVE_PRONOUN travels, TRIGGER_HERO comes to a finely-built farm and wonders whether TRIGGER_HERO_PERSONAL_PRONOUN could spend the night. TRIGGER_HERO_PERSONAL_PRONOUN_CAPITALIZED sees a gray-haired, bearded old man chopping wood close to the farm. Greeting him as the father of the house, TRIGGER_HERO asks him whether TRIGGER_HERO_PERSONAL_PRONOUN could receive lodging for the night. The man answers TRIGGER_HERO_OBLIQUE_PRONOUN that he is not the father of the house, and that TRIGGER_HERO should go to the kitchen and ask his father."
		},
		{
			"text", "TRIGGER_HERO enters the kitchen, and sees a man older than the first by the fireside. TRIGGER_HERO_PERSONAL_PRONOUN_CAPITALIZED makes the same inquiry to the old man, who answers that he is not the father of the house either, and that the traveller should ask his father, who is in the parlor."
		},
		{
			"text", "Entering the parlor, TRIGGER_HERO finds an even older man sitting by the table, trembling from the cold. TRIGGER_HERO_PERSONAL_PRONOUN_CAPITALIZED asks the man if TRIGGER_HERO_PERSONAL_PRONOUN could sleep in the house for the night, as TRIGGER_HERO_PERSONAL_PRONOUN is weary of travelling. The old man puts away the big book he is reading and answers TRIGGER_HERO that he is not the father of the house, and tells TRIGGER_HERO_OBLIQUE_PRONOUN to speak to his father, who is sitting on the wooden bench.",
			"conditions", function(s)
				local writing_upgrade = GetFactionClassUnitType("writing", GetPlayerData(second_trigger_player, "Faction"))
				return (writing_upgrade ~= nil and GetPlayerData(second_trigger_player, "Allow", writing_upgrade) == "R")
			end
		},
		{
			"text", "Entering the parlor, TRIGGER_HERO finds an even older man sitting by the table, trembling from the cold. TRIGGER_HERO_PERSONAL_PRONOUN_CAPITALIZED asks the man if TRIGGER_HERO_PERSONAL_PRONOUN could sleep in the house for the night, as TRIGGER_HERO_PERSONAL_PRONOUN is weary of travelling. The old man answers TRIGGER_HERO that he is not the father of the house, and tells TRIGGER_HERO_OBLIQUE_PRONOUN to speak to his father, who is sitting on the wooden bench.",
			"conditions", function(s)
				local writing_upgrade = GetFactionClassUnitType("writing", GetPlayerData(second_trigger_player, "Faction"))
				return (writing_upgrade == nil or GetPlayerData(second_trigger_player, "Allow", writing_upgrade) ~= "R")
			end
		},
		{
--			"text", "Going to the bench, TRIGGER_HERO finds a yet older man, all curled up and smoking a pipe, with trembling hands. TRIGGER_HERO gently asks to stay for the night, but the man answers TRIGGER_HERO_OBLIQUE_PRONOUN that he is not the father of the house, and that the traveller should talk to his father, who lies on the bed." -- the story can happen in the game before tobacco arrived in Europe, so leave out him smoking a pipe
			"text", "Going to the bench, TRIGGER_HERO finds a yet older man, all curled up and with trembling hands. TRIGGER_HERO gently asks to stay for the night, but the man answers TRIGGER_HERO_OBLIQUE_PRONOUN that he is also not the father of the house, and that the traveller should talk to his father, who lies on the bed."
		},
		{
			"text", "On the bed lies a very old man, to whom TRIGGER_HERO asks whether he is allowed to spend the night in the house. The old man is almost completely still, with the exception of his large, lively eyes. He tells TRIGGER_HERO that he is not the father of the house either, and that TRIGGER_HERO_PERSONAL_PRONOUN should speak to his father, who is in the cradle."
		},
		{
			"text", "TRIGGER_HERO goes over to the cradle, and looks at the small, extremely aged man who lies in it. The traveller hears the man lightly coughing, and then inquires whether TRIGGER_HERO_PERSONAL_PRONOUN may be lodged in the house for the day, as TRIGGER_HERO_PERSONAL_PRONOUN is tired from TRIGGER_HERO_POSSESSIVE_PRONOUN journeys. The old man takes a long time to answer, and then says that he is also not the father of the house, and tells TRIGGER_HERO_OBLIQUE_PRONOUN to talk to his father, who is in the horn hanging on the wall."
		},
		{
			"text", "The traveller looks at the wall, and after a moment finds the horn. When TRIGGER_HERO_PERSONAL_PRONOUN looks inside to see the horn's dweller, TRIGGER_HERO_PERSONAL_PRONOUN discovers a tiny ancient man, so decrepit that he seems barely human. Scared, TRIGGER_HERO shouts at the old man, asking him whether TRIGGER_HERO_PERSONAL_PRONOUN is allowed to sleep in the house. The father of the house tells TRIGGER_HERO that TRIGGER_HERO_PERSONAL_PRONOUN may spend the night, affectionately calling TRIGGER_HERO_OBLIQUE_PRONOUN \"little one\".",
			"options", {"An interesting experience"},
			"option-effects", {
				function(s)
					SetUnitVariable(trigger_unit, "Xp", GetUnitVariable(trigger_unit, "Xp", "Max") + 100, "Max")
					SetUnitVariable(trigger_unit, "Xp", GetUnitVariable(trigger_unit, "Xp", "Max"))
					SetUnitVariable(trigger_unit, "HitPoints", GetUnitVariable(trigger_unit, "HitPoints", "Max"))
					SetUnitVariable(trigger_unit, "Mana", GetUnitVariable(trigger_unit, "Mana", "Max"))
				end
			},
			"option-tooltips", {"+100 XP and restored HP and mana for TRIGGER_HERO"}
		}
	}
})
