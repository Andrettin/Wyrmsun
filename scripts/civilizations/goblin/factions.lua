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
--      (c) Copyright 2016-2021 by Andrettin
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

DefineFaction("aelak-tribe", { -- created by Jesse Crider
	Name = "Aelak Tribe",
	Adjective = "Aelak",
	Civilization = "goblin",
	Type = "tribe",
	Color = "red",
	FactionUpgrade = "upgrade-faction-aelak-tribe"
})

DefineFaction("issudru-tribe", { -- created by Jesse Crider
	Name = "Issudru Tribe",
	Adjective = "Issudru",
	Civilization = "goblin",
	Type = "tribe",
	Color = "black",
	FactionUpgrade = "upgrade-faction-issudru-tribe"
})

DefineFaction("dreadskull-tribe", {
	Name = "Dreadskull Tribe",
	Adjective = "Dreadskull",
	Civilization = "goblin",
	Type = "tribe",
	Color = "black",
	FactionUpgrade = "upgrade-faction-dreadskull-tribe",
	Description = "The Dreadskull tribe is known for its mysticism, and is suspected by other tribes of practicing necromancy."
})

DefineFaction("lggi-tribe", {
	Name = "Lggi Tribe",
	Adjective = "Lggi",
	Civilization = "goblin",
	Type = "tribe",
	Color = "violet",
	FactionUpgrade = "upgrade-faction-lggi-tribe",
	ForceTemplates = {
		{ -- from Battle for Wesnoth: Descent into Darkness (Peaceful Valley)
			"force-type", "land",
			"priority", 110,
			"unit-class", "cavalry", 1,
			"unit-class", "spearman", 1
		},
		{
			"force-type", "land",
			"priority", 100,
			"unit-class", "infantry", 1,
			"unit-class", "spearman", 1
		},
		{
			"force-type", "naval",
			"priority", 100,
			"unit-class", "siege_warship", 1
		},
		{
			"force-type", "air",
			"priority", 100,
			"unit-class", "flying_rider", 1
		}
	}
})

DefineFaction("mabom-tribe", { -- created by Jesse Crider
	Name = "Mabom Tribe",
	Adjective = "Mabom",
	Civilization = "goblin",
	Type = "tribe",
	Color = "purple",
	FactionUpgrade = "upgrade-faction-mabom-tribe"
})

DefineFaction("prideblade-tribe", {
	Name = "Prideblade Tribe",
	Adjective = "Prideblade",
	Civilization = "goblin",
	Type = "tribe",
	Color = "white",
	FactionUpgrade = "upgrade-faction-prideblade-tribe"
})

DefineFaction("sigre-tribe", { -- created by Jesse Crider
	Name = "Sigre Tribe",
	Adjective = "Sigre",
	Civilization = "goblin",
	Type = "tribe",
	Color = "yellow",
	FactionUpgrade = "upgrade-faction-sigre-tribe"
})

DefineFaction("wildfang-tribe", {
	Name = "Wildfang Tribe",
	Adjective = "Wildfang",
	Civilization = "goblin",
	Type = "tribe",
	Color = "red",
	FactionUpgrade = "upgrade-faction-wildfang-tribe",
	Description = "The savage Wildfang tribe lives off raiding dwarven villages. Their swordsmen are renowned for their lethality."
})

DefineFaction("driftwood", { -- from Will Doyle's "Island of the Lizard God"
	Name = "Driftwood",
	Adjective = "Driftwood",
	Civilization = "goblin",
	Type = "polity",
	Color = "brown",
	DefaultTier = "barony",
	DefaultGovernmentType = "republic",
	DefaultAI = "passive", -- so that Driftwood remains a small settlement, and doesn't try to attack in the Island of the Lizard God scenario
	FactionUpgrade = "upgrade-faction-driftwood",
	Icon = "icon-flag-red-skull-on-yellow",
	Description = "The cave town of Driftwood was formed from shipwrecks on a kobold isle, and peopled by lost sailors. The town is run by a goblin criminal cartel."
})

DefineFaction("ezmarria", { -- created by Jesse Crider
	Name = "Ezmarria",
	Adjective = "Ezmarrian",
	Civilization = "goblin",
	Type = "polity",
	Color = "white",
	DefaultTier = "duchy",
	DefaultGovernmentType = "republic",
	FactionUpgrade = "upgrade-faction-ezmarria",
	Icon = "icon-flag-green-skull-on-purple",
	Titles = {
		"republic", "duchy", "Syndicate"
	},
	Description = "The Ezmarrian Syndicate is known for its dedication to scientific progress, which often results in the neglect of economic and military power. Many goblin technological breakthroughs were made in Ezmarria, this knowledge being sold at a hefty price to other nations."
})

DefineFaction("myridia", { -- created by Jesse Crider
	Name = "Myridia",
	Adjective = "Myridian",
	Civilization = "goblin",
	Type = "polity",
	Color = "cyan",
	DefaultTier = "duchy",
	DefaultGovernmentType = "republic",
	FactionUpgrade = "upgrade-faction-myridia",
	Icon = "icon-flag-blue-skull-on-light-blue",
	Titles = {
		"republic", "duchy", "Syndicate"
	},
	Description = "The Myridian Syndicate is known as a conglomerate of merchants and mercenaries of utmost immoral caliber. Many of those who could not pay what they owed the syndicate claim that it is composed of sadistic dark minds, who torment their debtors endlessly until they finally manage to extract payment."
})

DefineFaction("stilgar", { -- created by Jesse Crider
	Name = "Stilgar",
	Adjective = "Stilgar",
	Civilization = "goblin",
	Type = "polity",
	Color = "blue",
	DefaultTier = "duchy",
	DefaultGovernmentType = "republic",
	FactionUpgrade = "upgrade-faction-stilgar",
	Icon = "icon-flag-purple-skull-on-green",
	Titles = {
		"republic", "duchy", "Syndicate"
	},
	Description = "The Stilgar Syndicate is renowned for its honorable reputation in doing business. They are one of the few goblin syndicates who can be trusted in upholding their end of an agreement."
})

DefineFaction("tenebris", { -- created by Jesse Crider
	Name = "Tenebris",
	Adjective = "Tenebris",
	Civilization = "goblin",
	Type = "polity",
	Color = "black",
	DefaultTier = "duchy",
	DefaultGovernmentType = "republic",
	FactionUpgrade = "upgrade-faction-tenebris",
	Icon = "icon-flag-black-skull-on-white",
	Titles = {
		"republic", "duchy", "Syndicate"
	},
	Description = "The Tenebris Syndicate is mistrusted by most goblins. Due to the prevalence of mysticism in it, the syndicate is thought of as more of a land of witches and occultists than a true syndicate."
})

-- Mercenary Companies

DefineFaction("ape-cartel", { -- from Will Doyle's "Island of the Lizard God"
	Name = "Greenskin Cartel", -- in the original adventure, the "Ape Cartel", formed by gorillas who had drunk intelligence potions
	Adjective = "Greenskin",
	Civilization = "goblin",
	Type = "mercenary_company",
	Color = "green",
	DefaultTier = "barony",
	Description = "The Greenskin Cartel is a criminal group which runs the shipwreck town of Driftwood."
})

DefineFaction("skulking-swords", {
	Name = "Skulking Swords",
	Adjective = "Skulking Sword",
	Civilization = "goblin",
	Type = "mercenary_company",
	Color = "black",
	DefaultTier = "duchy",
	Description = "The Skulking Swords are a renowned goblin mercenary company, being often employed by the goblin merchant guilds."
})
