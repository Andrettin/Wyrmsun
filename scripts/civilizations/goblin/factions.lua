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
--      (c) Copyright 2016-2019 by Andrettin
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

DefineFaction("aelak-tribe", { -- invented by Jesse Crider
	Name = "Aelak Tribe",
	Civilization = "goblin",
	Type = "tribe",
	PrimaryColor = "red",
	SecondaryColor = "brown",
	FactionUpgrade = "upgrade-faction-aelak-tribe",
	Icon = "icon-flag-brown-skull-on-red"
})

DefineFaction("issudru-tribe", { -- invented by Jesse Crider
	Name = "Issudru Tribe",
	Civilization = "goblin",
	Type = "tribe",
	PrimaryColor = "black",
	SecondaryColor = "red",
	FactionUpgrade = "upgrade-faction-issudru-tribe",
	Icon = "icon-flag-brown-skull-on-red"
})

DefineFaction("aurvangling-tribe", {
	Name = "Aurvangling Tribe",
	Civilization = "goblin",
	Type = "tribe",
	PrimaryColor = "teal",
	SecondaryColor = "brown",
	FactionUpgrade = "upgrade-faction-aurvangling-tribe",
	Icon = "icon-flag-green-skull-on-violet",
	Description = "The reclusive goblins of the Aurvang swamplands are wary of outsiders, with trespassers often finding themselves filled with arrows."
})

DefineFaction("dreadskull-tribe", {
	Name = "Dreadskull Tribe",
	Civilization = "goblin",
	Type = "tribe",
	PrimaryColor = "black",
	SecondaryColor = "green",
	FactionUpgrade = "upgrade-faction-dreadskull-tribe",
	Icon = "icon-flag-white-skull-on-black",
	Description = "The Dreadskull tribe is known for its mysticism, and is suspected by other tribes of practicing necromancy."
})

DefineFaction("khag-tribe", {
	Name = "Khag Tribe",
	Civilization = "goblin",
	Type = "tribe",
	PrimaryColor = "brown",
	SecondaryColor = "red",
	FactionUpgrade = "upgrade-faction-khag-tribe",
	Icon = "icon-flag-green-skull-on-violet",
	ForceTemplates = {
		{ -- from Battle for Wesnoth: Liberty (The Raid)
			"force-type", "land-force",
			"priority", 110,
			"unit-class", "cavalry", 4
		},
		{
			"force-type", "land-force",
			"priority", 100,
			"unit-class", "infantry", 4
		},
		{
			"force-type", "naval-force",
			"priority", 100,
			"unit-class", "siege-warship", 1
		},
		{
			"force-type", "air-force",
			"priority", 100,
			"unit-class", "flying-rider", 1
		}
	}
})

DefineFaction("lggi-tribe", {
	Name = "Lggi Tribe",
	Civilization = "goblin",
	Type = "tribe",
	PrimaryColor = "violet",
	FactionUpgrade = "upgrade-faction-lggi-tribe",
	Icon = "icon-flag-green-skull-on-violet",
	ForceTemplates = {
		{ -- from Battle for Wesnoth: Descent into Darkness (Peaceful Valley)
			"force-type", "land-force",
			"priority", 110,
			"unit-class", "cavalry", 1,
			"unit-class", "spearman", 1
		},
		{
			"force-type", "land-force",
			"priority", 100,
			"unit-class", "infantry", 1,
			"unit-class", "spearman", 1
		},
		{
			"force-type", "naval-force",
			"priority", 100,
			"unit-class", "siege-warship", 1
		},
		{
			"force-type", "air-force",
			"priority", 100,
			"unit-class", "flying-rider", 1
		}
	}
})

DefineFaction("mabom-tribe", { -- invented by Jesse Crider
	Name = "Mabom Tribe",
	Civilization = "goblin",
	Type = "tribe",
	PrimaryColor = "purple",
	SecondaryColor = "white",
	Icon = "icon-flag-brown-skull-on-red",
	FactionUpgrade = "upgrade-faction-mabom-tribe"
})

DefineFaction("prideblade-tribe", {
	Name = "Prideblade Tribe",
	Civilization = "goblin",
	Type = "tribe",
	PrimaryColor = "white",
	Icon = "icon-flag-red-skull-on-white",
	FactionUpgrade = "upgrade-faction-prideblade-tribe"
})

DefineFaction("sigre-tribe", { -- invented by Jesse Crider
	Name = "Sigre Tribe",
	Civilization = "goblin",
	Type = "tribe",
	PrimaryColor = "yellow",
	SecondaryColor = "red",
	Icon = "icon-flag-red-skull-on-white",
	FactionUpgrade = "upgrade-faction-sigre-tribe"
})

DefineFaction("wildfang-tribe", {
	Name = "Wildfang Tribe",
	Civilization = "goblin",
	Type = "tribe",
	PrimaryColor = "red",
	SecondaryColor = "yellow",
	FactionUpgrade = "upgrade-faction-wildfang-tribe",
	Icon = "icon-flag-brown-skull-on-red",
	Description = "The savage Wildfang tribe lives off raiding dwarven villages. Their swordsmen are renowned for their lethality."
})

DefineFaction("aurvang", {
	Name = "Aurvang",
	Civilization = "goblin",
	Type = "polity",
	PrimaryColor = "teal",
	SecondaryColor = "brown",
	DefaultTier = "duchy",
	DefaultGovernmentType = "monarchy",
	FactionUpgrade = "upgrade-faction-aurvang",
	Icon = "icon-flag-green-skull-on-violet",
	DevelopsFrom = {"aurvangling-tribe", "dreadskull-tribe", "lggi-tribe"},
	Titles = {
		"monarchy", "duchy", "Principality"
	}
})

DefineFaction("driftwood", { -- from Will Doyle's "Island of the Lizard God"
	Name = "Driftwood",
	Civilization = "goblin",
	Type = "polity",
	PrimaryColor = "brown",
	SecondaryColor = "yellow",
	DefaultTier = "barony",
	DefaultGovernmentType = "republic",
	DefaultAI = "passive", -- so that Driftwood remains a small settlement, and doesn't try to attack in the Island of the Lizard God scenario
	FactionUpgrade = "upgrade-faction-driftwood",
	Icon = "icon-flag-brown-skull-on-red",
	DevelopsFrom = {"aelak-tribe", "aurvangling-tribe", "dreadskull-tribe", "issudru-tribe", "khag-tribe", "lggi-tribe", "mabom-tribe", "sigre-tribe"},
	Description = "The cave town of Driftwood was formed from shipwrecks on a kobold isle, and peopled by lost sailors. The town is run by a goblin criminal cartel."
})

DefineFaction("ezmarria", { -- invented by Jesse Crider
	Name = "Ezmarria",
	Civilization = "goblin",
	Type = "polity",
	PrimaryColor = "white",
	DefaultTier = "duchy",
	DefaultGovernmentType = "republic",
	FactionUpgrade = "upgrade-faction-ezmarria",
	Icon = "icon-flag-green-skull-on-violet",
	DevelopsFrom = {"aelak-tribe", "issudru-tribe", "mabom-tribe", "sigre-tribe"},
	Titles = {
		"republic", "duchy", "Syndicate"
	},
	Description = "The Ezmarrian Syndicate is known for its dedication to scientific progress, which often results in the neglect of economic and military power. Many goblin technological breakthroughs were made in Ezmarria, this knowledge being sold at a hefty price to other nations."
})

DefineFaction("myridia", { -- invented by Jesse Crider
	Name = "Myridia",
	Civilization = "goblin",
	Type = "polity",
	PrimaryColor = "cyan",
	SecondaryColor = "teal",
	DefaultTier = "duchy",
	DefaultGovernmentType = "republic",
	FactionUpgrade = "upgrade-faction-myridia",
	Icon = "icon-flag-brown-skull-on-red",
	DevelopsFrom = {"aelak-tribe", "issudru-tribe", "mabom-tribe", "sigre-tribe"},
	Titles = {
		"republic", "duchy", "Syndicate"
	},
	Description = "The Myridian Syndicate is known as a conglomerate of merchants and mercenaries of utmost immoral caliber. Many of those who could not pay what they owed the syndicate claim that it is composed of sadistic dark minds, who torment their debtors endlessly until they finally manage to extract payment."
})

DefineFaction("stilgar", { -- invented by Jesse Crider
	Name = "Stilgar",
	Civilization = "goblin",
	Type = "polity",
	PrimaryColor = "blue",
	SecondaryColor = "purple",
	DefaultTier = "duchy",
	DefaultGovernmentType = "republic",
	FactionUpgrade = "upgrade-faction-stilgar",
	Icon = "icon-flag-green-skull-on-violet",
	DevelopsFrom = {"aelak-tribe", "issudru-tribe", "mabom-tribe", "sigre-tribe", "khag-tribe", "prideblade-tribe", "wildfang-tribe"},
	Titles = {
		"republic", "duchy", "Syndicate"
	},
	Description = "The Stilgar Syndicate is renowned for its honorable reputation in doing business. They are one of the few goblin syndicates who can be trusted in upholding their end of an agreement."
})

DefineFaction("tenebris", { -- invented by Jesse Crider
	Name = "Tenebris",
	Civilization = "goblin",
	Type = "polity",
	PrimaryColor = "black",
	SecondaryColor = "violet",
	DefaultTier = "duchy",
	DefaultGovernmentType = "republic",
	FactionUpgrade = "upgrade-faction-tenebris",
	Icon = "icon-flag-white-skull-on-black",
	DevelopsFrom = {"aelak-tribe", "issudru-tribe", "mabom-tribe", "sigre-tribe", "dreadskull-tribe"},
	Titles = {
		"republic", "duchy", "Syndicate"
	},
	Description = "The Tenebris Syndicate is mistrusted by most goblins. Due to the prevalence of mysticism in it, the syndicate is thought of as more of a land of witches and occultists than a true syndicate."
})

-- Mercenary Companies

DefineFaction("ape-cartel", { -- from Will Doyle's "Island of the Lizard God"
	Name = "Greenskin Cartel", -- in the original adventure, the "Ape Cartel", formed by gorillas who had drunk intelligence potions
	Civilization = "goblin",
	Type = "mercenary-company",
	PrimaryColor = "green",
	SecondaryColor = "purple",
	DefaultTier = "barony",
	Icon = "icon-flag-green-skull-on-violet",
	Description = "The Greenskin Cartel is a criminal group which runs the shipwreck town of Driftwood."
})

DefineFaction("skulking-swords", {
	Name = "Skulking Swords",
	Civilization = "goblin",
	Type = "mercenary-company",
	PrimaryColor = "black",
	SecondaryColor = "white",
	DefaultTier = "duchy",
	Icon = "icon-flag-white-skull-on-black",
	Description = "The Skulking Swords are a renowned goblin mercenary company, being often employed by the goblin merchant guilds."
})
