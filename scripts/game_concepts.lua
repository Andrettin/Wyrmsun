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
--      (c) Copyright 2015-2017 by Andrettin
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
	AccuracyEvasion = {
		Name = _("Accuracy/Evasion"),
		Description = _("A unit's chance to hit another unit is determined by its accuracy relative to the target's evasion.")
	},
	Backstab = {
		Name = _("~!Backstab"),
		Description = _("Thief units cause extra damage when attacking an organic unit from the back. Thieves attacking from the right or left rear sides will cause +50% damage, and +100% damage if attacking directly from behind.")
	},
	DisembarkmentBonus = {
		Name = _("Disembarkment Bonus"),
		Description = _("Units that have a disembarkment bonus deal 50% more damage for a certain duration after having been unloaded from a transport ship.")
	},
	Experience = {
		Name = _("~!Experience"),
		Description = _("Organic units gain experience as enemy units are killed, eventually allowing them to level up. Workers can also gain experience by harvesting resources and building structures. Leveling up allows the unit to upgrade to a better unit type, or to learn a new ability.")
	},
	Flanking = {
		Name = _("Flan~!king"),
		Description = _("Units who are flanked in combat get a malus to evasion. Flanking happens when the unit is attacked from behind or from the side.")
	},
	Food = {
		Name = _("~!Food"),
		Description = _("Food is produced by farms in the RTS mode, and determines the maximum amount of units a player can have.")
	},
	GameType = {
		Name = _("Game T~!ype"),
		Description = _("In the Single Player Setup screen different game types can be chosen. A Melee game means that the player will stand against all AI players, while in Free for All players are hostile against every other player. Choosing Top vs Bottom or Left vs Right will create two teams, with players being assigned to them according to map position.")
	},
	Garrisoning = {
		Name = _("~!Garrisoning"),
		Description = _("Certain buildings can be garrisoned by organic units, and some of them (like towers) even allow ranged units with to attack from within them.")
	},
	Harvesting = {
		Name = _("Har~!vesting"),
		Description = _("Resources can be harvested by worker units. Copper is mined by assigning workers to copper rocks and copper mines (built on copper deposits), or to their silver and gold equivalents - which when delivered will be converted to copper. Lumber is gathered by harvesting trees or wood piles, while stone is harvested from rocks. Coal mines are used in a similar manner to copper mines, but they appear only in specific scenarios.")
	},
	Heroes = {
		Name = _("~!Heroes"),
		Description = _("Heroes belong to one of the normal unit types, but unlike regular units, a hero's experience level and learned abilities are saved across scenarios. Besides the story heroes, players can also create custom heroes to use in scenarios, quests and (single-player) custom games.")
	},
	Industry = {
		Name = "In~!dustry",
		Description = "Lumber can be transformed into furniture in lumber mills. If the option to produce furniture is active, workers can use the lumber mill similar to how they would a mine, to transform lumber into furniture."
	},
	Items = {
		Name = _("Ite~!ms"),
		Description = _("Items can be picked up by units with an inventory (persistent heroes as well as Stonelords, Explorers, Gryphon Riders, Warlords and Shadowstalkers). Items come in four types: weapons, shields, boots, rings and potions. Units can equip weapons of a particular class (i.e. Axefighters can equip axes), and non-ranged units may equip shields as well. Any unit can wear boots or drink potions; the latter can be used as a power-up by units who don't have an inventory. Equipping an item will replace the bonuses from weapon technologies with those of the item.\n\nItems are generally dropped by AI-controlled units and buildings, and possess a chance of having a magic affix. Such prefixes and suffixes affect the item's stats, changing its damage, armor and other values. Additionally, unique items also have a chance of dropping. Unique items are often better than magic items, but not necessarily. Items that are neither magic nor unique will disappear five minutes after being dropped.\n\nBesides items, units can also pick up power-ups. These are not restricted to units with inventories, and will perform effects such as restoring HP, causing a status effect or providing resources.")
	},
	KnowledgeMagic = {
		Name = _("Kno~!wledge (Magic)"),
		Description = _("Knowledge (Magic) is a stat primarily relevant for higher-level units. When holding a magic item in the unit's inventory, it is automatically identified if the unit's Knowledge (Magic) level is high enough. Furthermore, for every five levels in Knowledge (Magic), the character gains one maximum mana. The stat is increased mainly by reading the appropriate literary works, which are usually dropped from town halls and temples.")
	},
	KnowledgeWarfare = {
		Name = _("Knowledge (Warfare)"),
		Description = _("Knowledge (Magic) is a stat primarily relevant for higher-level units. For every five levels in Knowledge (Warfare), the character gains one maximum hit point. The stat is increased mainly by reading the appropriate literary works.")
	},
	Laws = {
		Name = "~!Laws",
		Description = "Law upgrades can be acquired in the main hall. Contrary to most researches, law upgrades can be incompatible with each other. If a new law upgrade that is incompatible with an existing one is acquired, the older law upgrade will be removed for the player."
	},
	Mercenaries = {
		Name = "Mer~!cenaries",
		Description = "Mercenaries can be hired at mercenary camps. They do not take any time to train, becoming ready instantly. However, mercenary camp unit stocks take some time to recover."
	},
	Trade = {
		Name = "~!Trade",
		Description = "Resource trade is conducted in market buildings, where lumber and stone can be exchanged for copper. Luxury resources, such as furniture, are sold automatically if a market is present. The trade cost percentage is deducted from the copper received when a resource is sold, and from the quantity obtained when a resource is bought.\n\nTrader units can generate copper by trading with foreign markets or docks. The higher the resource price difference with the other player, the more profitable trade with their markets and docks is. When a unit conducts trade, it also converges the prices of both players."
	},
	Traits = {
		Name = _("Tra~!its"),
		Description = _("Each organic unit has an individual personality or physical trait assigned to it, which affects its stats.\n\nClumsy: -1 Accuracy, -1 Evasion\nDextrous: +1 Accuracy, +1 Evasion\nKeen: +1 Accuracy, +1 Sight\nLimping: -2 Speed\nMighty: +2 Damage\nNear-Sighted: -1 Accuracy, -1 Sight\nOld: -1 Sight, -1 Speed\nQuick: +1 Speed\nReckless: -1 Evasion\nResilient: +5 HP\nSlow: -1 Speed\nStrong: +1 Damage \nVicious: +2 Damage\nWeak: -1 Damage")
	}
}
