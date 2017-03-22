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
--      (c) Copyright 2016-2017 by Andrettin
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
	Colors = {"red"},
	FactionUpgrade = "upgrade-faction-aelak-tribe"
})

DefineFaction("issudru-tribe", { -- invented by Jesse Crider
	Name = "Issudru Tribe",
	Civilization = "goblin",
	Type = "tribe",
	Colors = {"black"},
	FactionUpgrade = "upgrade-faction-issudru-tribe"
})

DefineFaction("aurvangling-tribe", {
	Name = "Aurvangling Tribe",
	Civilization = "goblin",
	Type = "tribe",
	Colors = {"teal"},
	FactionUpgrade = "upgrade-faction-aurvangling-tribe",
	Description = "The reclusive goblins of the Aurvang swamplands are wary of outsiders, with trespassers often finding themselves filled with arrows."
})

DefineFaction("dreadskull-tribe", {
	Name = "Dreadskull Tribe",
	Civilization = "goblin",
	Type = "tribe",
	Colors = {"black"},
	FactionUpgrade = "upgrade-faction-dreadskull-tribe",
	Description = "The Dreadskull tribe is known for its mysticism, and is suspected by other tribes of practicing necromancy."
})

DefineFaction("khag-tribe", {
	Name = "Khag Tribe",
	Civilization = "goblin",
	Type = "tribe",
	Colors = {"brown"},
	FactionUpgrade = "upgrade-faction-khag-tribe"
})

DefineFaction("lggi-tribe", {
	Name = "Lggi Tribe",
	Civilization = "goblin",
	Type = "tribe",
	Colors = {"violet"},
	FactionUpgrade = "upgrade-faction-lggi-tribe"
})

DefineFaction("mabom-tribe", { -- invented by Jesse Crider
	Name = "Mabom Tribe",
	Civilization = "goblin",
	Type = "tribe",
	Colors = {"purple"},
	FactionUpgrade = "upgrade-faction-mabom-tribe"
})

DefineFaction("sigre-tribe", { -- invented by Jesse Crider
	Name = "Sigre Tribe",
	Civilization = "goblin",
	Type = "tribe",
	Colors = {"yellow"},
	FactionUpgrade = "upgrade-faction-sigre-tribe"
})

DefineFaction("wildfang-tribe", {
	Name = "Wildfang Tribe",
	Civilization = "goblin",
	Type = "tribe",
	Colors = {"red"},
	FactionUpgrade = "upgrade-faction-wildfang-tribe",
	Description = "The savage Wildfang tribe lives off raiding dwarven villages. Their swordsmen are renowned for their lethality."
})

DefineFaction("aurvang", {
	Name = "Aurvang",
	Civilization = "goblin",
	Type = "polity",
	Colors = {"teal"},
	DefaultTier = "duchy",
	DefaultGovernmentType = "monarchy",
	FactionUpgrade = "upgrade-faction-aurvang",
	Titles = {
		"monarchy", "duchy", "Principality"
	}
})

DefineFaction("ezmarria", { -- invented by Jesse Crider
	Name = "Ezmarria",
	Civilization = "goblin",
	Type = "polity",
	Colors = {"white"},
	DefaultTier = "duchy",
	DefaultGovernmentType = "republic",
	FactionUpgrade = "upgrade-faction-ezmarria",
	Titles = {
		"republic", "duchy", "Syndicate"
	},
	Description = "The Ezmarrian Syndicate is known for its dedication to scientific progress, which often results in the neglect of economic and military power. Many goblin technological breakthroughs were made in Ezmarria, this knowledge being sold at a hefty price to other nations."
})

DefineFaction("myridia", { -- invented by Jesse Crider
	Name = "Myridia",
	Civilization = "goblin",
	Type = "polity",
	Colors = {"cyan"},
	DefaultTier = "duchy",
	DefaultGovernmentType = "republic",
	FactionUpgrade = "upgrade-faction-myridia",
	Titles = {
		"republic", "duchy", "Syndicate"
	},
	Description = "The Myridian Syndicate is known as a conglomerate of merchants and mercenaries of utmost immoral caliber. Many of those who could not pay what they owed the syndicate claim that it is composed of sadistic dark minds, who torment their debtors endlessly until they finally manage to extract payment."
})

DefineFaction("stilgar", { -- invented by Jesse Crider
	Name = "Stilgar",
	Civilization = "goblin",
	Type = "polity",
	Colors = {"blue"},
	DefaultTier = "duchy",
	DefaultGovernmentType = "republic",
	FactionUpgrade = "upgrade-faction-stilgar",
	Titles = {
		"republic", "duchy", "Syndicate"
	},
	Description = "The Stilgar Syndicate is renowned for its honorable reputation in doing business. They are one of the few goblin syndicates who can be trusted in upholding their end of an agreement."
})

DefineFaction("tenebris", { -- invented by Jesse Crider
	Name = "Tenebris",
	Civilization = "goblin",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "duchy",
	DefaultGovernmentType = "republic",
	FactionUpgrade = "upgrade-faction-tenebris",
	Titles = {
		"republic", "duchy", "Syndicate"
	},
	Description = "The Tenebris Syndicate is mistrusted by most goblins. Due to the prevalence of mysticism in it, the syndicate is thought of as more of a land of witches and occultists than a true syndicate."
})

-- Mercenary Companies

DefineFaction("skulking-swords", {
	Name = "Skulking Swords",
	Civilization = "goblin",
	Type = "mercenary-company",
	Colors = {"black"},
	DefaultTier = "duchy",
	Description = "The Skulking Swords are a renowned goblin mercenary company, being often employed by the goblin merchant guilds."
})
