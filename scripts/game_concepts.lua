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
--      (c) Copyright 2015-2016 by Andrettin
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
		Description = _("Resources can be harvested by worker units. Gold is mined by assigning workers to gold rocks or gold mines (built on gold deposits), or to their copper and silver equivalents - which when delivered will be converted to gold. Lumber is gathered by harvesting trees or wood piles, while stone is harvested from rocks. Coal mines are used in a similar manner to gold mines, but they appear only in specific scenarios.")
	},
	Heroes = {
		Name = _("~!Heroes"),
		Description = _("Heroes belong to one of the normal unit types, but unlike regular units, a hero's experience level and learned abilities are saved across scenarios. Besides the story heroes, players can also create custom heroes to use in quests and (single-player) custom games.")
	},
	Items = {
		Name = _("Ite~!ms"),
		Description = _("Items can be picked up by units with an inventory (persistent heroes as well as Stonelords and Gryphon Riders). Items come in four types: weapons, shields, boots, rings and potions. Units can equip weapons of a particular class (i.e. Axefighters can equip axes), and non-ranged units may equip shields as well. Any unit can wear boots or drink potions; the latter can be used as a power-up by units who don't have an inventory. Equipping an item will replace the bonuses from weapon technologies with those of the item.\n\nItems are generally dropped by AI-controlled units and buildings, and possess a chance of having a magic affix. Such prefixes and suffixes affect the item's stats, changing its damage, armor and other values. Additionally, unique items also have a chance of dropping. Unique items are often better than magic items, but not necessarily. Items that are neither magic nor unique will disappear five minutes after being dropped.\n\nBesides items, units can also pick up power-ups. These are not restricted to units with inventories, and will perform effects such as restoring HP, causing a status effect or providing resources.")
	},
	KnowledgeMagic = {
		Name = _("Kno~!wledge (Magic)"),
		Description = _("Knowledge (Magic) is a stat primarily relevant for higher-level units. When holding a magic item in the unit's inventory, it is automatically identified if the unit's Knowledge (Magic) level is high enough. Furthermore, for every five levels in Knowledge (Magic), the character gains one maximum mana. The stat is increased mainly by reading the appropriate literary works.")
	},
	KnowledgeWarfare = {
		Name = _("Knowledge (Warfare)"),
		Description = _("Knowledge (Magic) is a stat primarily relevant for higher-level units. For every five levels in Knowledge (Warfare), the character gains one maximum hit point. The stat is increased mainly by reading the appropriate literary works.")
	},
	Mercenaries = {
		Name = _("Mer~!cenaries"),
		Description = _("Groups of mercenaries can be hired at mercenary camps, providing the player with a few experienced warriors, no time needing to be spent in training them. Mercenaries do cost quite a bit of gold, however. Besides mercenary squads, players can also hire thieves in mercenary camps. Like mercenary groups, thieves are hired instantly.")
	},
	Quests = {
		Name = _("~!Quests"),
		Description = _("Completing RTS quests will provide the player with technology points (which can be used to acquire further technologies for the RTS mode), along with new maps.")
	},
	TechTreeScreen = {
		Name = _("~!Tech Tree Screen"),
		Description = _("The tech tree screen allows players to spend technology points to acquire new technologies, making them available for the RTS mode.")
	},
	Traits = {
		Name = _("Tra~!its"),
		Description = _("Each organic unit has an individual personality or physical trait assigned to it, which affects its stats.\n\nClumsy: -1 Accuracy, -1 Evasion\nDextrous: +1 Accuracy, +1 Evasion\nKeen: +1 Accuracy, +1 Sight\nLimping: -2 Speed\nMighty: +2 Damage\nNear-Sighted: -1 Accuracy, -1 Sight\nOld: -1 Sight, -1 Speed\nQuick: +1 Speed\nReckless: -1 Evasion\nResilient: +5 HP\nSlow: -1 Speed\nStrong: +1 Damage \nVicious: +2 Damage\nWeak: -1 Damage")
	}
}

GrandStrategyGameConcepts = {
	AdministrativeEfficiency = {
		Name = _("~!Administrative Efficiency"),
		Description = _("In the Grand Strategy mode, administrative efficiency affected provinces' productivity and research output. Administrative efficiency is 100% by default, but is decreased if the province has a different culture than its owner.")
	},
	Attacking = {
		Name = _("Attacking"),
		Description = _("Select units (read the \"Units\" Grand Strategy Concept entry for more information on selecting units) or a hero, and then click on a province to attack it. You can only attack provinces that are not owned by any faction, or which are owned by a faction you're at war with. One-province tribes migrate to a province after attacking it, emptying their former province. The former province's population and buildings are carried over to the new one.")
	},
	Capital = {
		Name = _("~!Capital"),
		Description = _("A faction's capital is marked by a crown symbol appearing over it. Your capital is the center of your transport network. If a faction's capital is conquered, the capital will be transferred to a settlement still under the control of the faction.")
	},
	--[[
	Claims = {
		Name = _("Claims"),
		Description = _("In Grand Strategy mode, claims are provinces considered to be an integral part of a country.")
	},
	--]]
	Food = {
		Name = _("~!Food"),
		Description = _("In the Grand Strategy mode, food is produced by a province's workers employed in food-producing tiles, generating population growth and being consumed by the province's population.")
	},
	Harvesting = {
		Name = _("Har~!vesting"),
		Description = _("In the Grand Strategy mode, resources are harvested by the province's population, if there are enough laborers available.")
	},
	Heroes = {
		Name = _("~!Heroes"),
		Description = _("You can use heroes to attack and defend provinces. The presence of a hero in a province is marked by a star symbol over the province's settlement.")
	},
	Labor = {
		Name = _("~!Labor"),
		Description = _("Workers in a province produce Labor (100 for each worker), which is then used to produce resources in the province.")
	},
	Objectives = {
		Name = _("Objectives"),
		Description = _("In the Grand Strategy mode, there are no preset objectives. You make your own goals, exploring the world at your own pace!")
	},
	Prestige = {
		Name = _("Pre~!stige"),
		Description = _("Prestige is a Grand Strategy mode only resource. A faction's prestige determines its trade priority, and influences the likelihood of certain positive events. Factions with negative prestige cannot declare war. The results of battles will affect a faction's prestige.")
	},
	Research = {
		Name = _("~!Research"),
		Description = _("Research is a Grand Strategy mode only resource, which is used to acquire technologies. A faction gains research depending on the ~<proportion~> of its provinces that has town halls, lumber mills and smithies.")
	},
	Revolts = {
		Name = _("Rev~!olts"),
		Description = _("In Grand Strategy mode, provinces have a chance to revolt against their owner's rule. There is a risk of revolt occurring in recently conquered provinces, as well as ones of a culture different than their owner's.")
	},
	Roads = {
		Name = _("Roads"),
		Description = _("Building a road on a tile connects it to your transport network. Roads can only be built on tiles adjacent to ones already connected to your capital. Build roads by clicking on the desired tile and then choosing a direction for the road to be built.")
	},
	Trade = {
		Name = _("Tra~!de"),
		Description = _("In the Grand Strategy mode, factions can trade commodities with one another. Trade priority depends on the faction's prestige, and the price of each commodity will vary depending on demand and supply. Trade is also conducted with provinces, with preference being given to the province's owner. Each province demands a bit of certain commodities every turn, demanding more if the price is currently low, or less if the price is too high.")
	},
	TransportCapacity = {
		Name = _("Transport Capacit~!y"),
		Description = _("Resource-producing tiles need to be properly connected to your transport network to achieve their full potential. If a tile's resource output is greater than its transport capacity, the overflowing resources will be thrown away. To increase transport capacity in a tile, build a road linking it to your capital. Building a dock on a settlement will link its tile to your transport network as well, at which point it can also serve as a transport hub from which to build roads. Note however that docks can only effectively link a settlement to the transport network if its province's coasts can be reached from a dock already otherwise connected to your transport network.")
	},
	Units = {
		Name = _("Units"),
		Description = _("Worker units are generated automatically in a province as surplus food is produced. Soldiers, however, have to be trained at the barracks. To do so, click on your province's settlement. Click on the barracks button. Now unit icons will appear in the interface to the right. The right arrow below each unit will train one for you (ready on the next turn), while the left arrow cancels training. To train a unit requires one idle worker.\n\nAfter a unit is trained, you can select it in the main province interface, with the right arrow. After selecting the units, you can move to or attack another province by clicking on it.")
	},
	Upkeep = {
		Name = _("~!Upkeep"),
		Description = _("In the Grand Strategy mode, each military unit costs some upkeep in gold. If the upkeep is not paid, the unit will be disbanded.")
	}
}
