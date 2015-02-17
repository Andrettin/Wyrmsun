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
--      quests.lua - Defines quests.
--
--      (c) Copyright 2013-2014 by Andre Novellino Gouvêa
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

GameConcepts = {
	Abilities = {
		Name = _("~!Abilities"),
		Description = _("Many units can learn new abilities when leveling up. These provide them with some form of benefit, such as increasing damage.")
	},
	Backstab = {
		Name = _("~!Backstab"),
		Description = _("Thief units will cause extra damage when attacking an organic unit from the back.")
	},
	Experience = {
		Name = _("~!Experience"),
		Description = _("Organic units gain experience as enemy units are killed, eventually allowing them to level up. Leveling up allows the unit to upgrade to a better unit type, or to learn one new ability.")
	},
	Food = {
		Name = _("~!Food"),
		Description = _("Food is produced by farms in RTS mode, and determines the maximum amount of units a player can have.")
	},
	Garrisoning = {
		Name = _("~!Garrisoning"),
		Description = _("Certain buildings can be garrisoned by organic units, and some of them (like towers) even allow units with ranged attacks to attacked from within them.")
	},
	Heroes = {
		Name = _("~!Heroes"),
		Description = _("Heroes belong to one of the normal unit types, but unlike normal units, a hero's experience level and learned abilities are saved across scenarios.")
	},
	Mercenaries = {
		Name = _("~!Mercenaries"),
		Description = _("Groups of mercenaries can be hired at mercenary camps, providing the player with a few experienced warriors, no time needing to be spent in training them. Mercenaries do cost quite a bit of gold, however. Besides mercenary squads, players can also hire a maximum of 6 thieves in mercenary camps. Like mercenary groups, thieves are hired instantly.")
	},
	Prestige = {
		Name = _("Pre~!stige"),
		Description = _("Prestige is a grand strategy mode only resource. A faction's prestige determines its trade priority, and influences the likelihood of certain positive events. Factions with negative prestige cannot declare war. The results of battles will affect a faction's prestige.")
	},
	Quests = {
		Name = _("~!Quests"),
		Description = _("Completing RTS quests will provide the player with technology points (which can be used to acquire further technologies for the RTS mode), along with new maps.")
	},
	Research = {
		Name = _("~!Research"),
		Description = _("Research is a grand strategy mode only resource, which is used to acquire technologies. A faction gains research depending on the ~<proportion~> of its provinces that has town halls, lumber mills and smithies.")
	},
	TechTreeScreen = {
		Name = _("~!Tech Tree Screen"),
		Description = _("The tech tree screen allows players to spend technology points to acquire new technologies, making them available for the RTS mode.")
	},
	Trade = {
		Name = _("Tra~!de"),
		Description = _("In grand strategy mode factions can trade commodities with one another. Trade priority depends on the faction's prestige, and the price of each commodity will vary depending on demand and supply. Trade is also conducted with provinces, with preference being given to the province's owner. Each province demands a bit of certain commodities every turn, demanding more if the price is currently low, or less if the price is too high.")
	},
	Traits = {
		Name = _("Tra~!its"),
		Description = _("Each organic unit has an individual personality or physical trait assigned to it, which affects its stats.")
	},
	Upkeep = {
		Name = _("~!Upkeep"),
		Description = _("In grand strategy mode, each military unit costs some upkeep in gold. If the upkeep is not paid, the unit will be disbanded.")
	},
}
