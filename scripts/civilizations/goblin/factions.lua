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

DefineFaction("Aelak Tribe", { -- invented by Jesse Crider
	Civilization = "goblin",
	Type = "tribe",
	Colors = {"red"},
	FactionUpgrade = "upgrade-aelak-tribe-faction"
})

DefineFaction("Issudru Tribe", { -- invented by Jesse Crider
	Civilization = "goblin",
	Type = "tribe",
	Colors = {"black"},
	FactionUpgrade = "upgrade-issudru-tribe-faction"
})

DefineFaction("Khag Tribe", {
	Civilization = "goblin",
	Type = "tribe",
	Colors = {"brown"},
	FactionUpgrade = "upgrade-khag-tribe-faction"
})

DefineFaction("Lggi Tribe", {
	Civilization = "goblin",
	Type = "tribe",
	Colors = {"violet"},
	FactionUpgrade = "upgrade-lggi-tribe-faction"
})

DefineFaction("Mabom Tribe", { -- invented by Jesse Crider
	Civilization = "goblin",
	Type = "tribe",
	Colors = {"purple"},
	FactionUpgrade = "upgrade-mabom-tribe-faction"
})

DefineFaction("Sigre Tribe", { -- invented by Jesse Crider
	Civilization = "goblin",
	Type = "tribe",
	Colors = {"yellow"},
	FactionUpgrade = "upgrade-sigre-tribe-faction"
})

DefineFaction("Ezmarria", { -- invented by Jesse Crider
	Civilization = "goblin",
	Type = "polity",
	Colors = {"white"},
	DefaultTier = "duchy",
	DefaultGovernmentType = "republic",
	FactionUpgrade = "upgrade-ezmarria-faction",
	Titles = {
		"republic", "duchy", "Syndicate"
	},
	Description = _("The Ezmarrian Syndicate is known for its dedication to scientific progress, which often results in the neglect of economic and military power. Many goblin technological breakthroughs were made in Ezmarria, this knowledge being sold at a hefty price to other nations.")
})

DefineFaction("Myridia", { -- invented by Jesse Crider
	Civilization = "goblin",
	Type = "polity",
	Colors = {"cyan"},
	DefaultTier = "duchy",
	DefaultGovernmentType = "republic",
	FactionUpgrade = "upgrade-myridia-faction",
	Titles = {
		"republic", "duchy", "Syndicate"
	},
	Description = _("The Myridian Syndicate is known as a conglomerate of merchants and mercenaries of utmost immoral caliber. Many of those who could not pay what they owed the syndicate claim that it is composed of sadistic dark minds, who torment their debtors endlessly until they finally manage to extract payment.")
})

DefineFaction("Stilgar", { -- invented by Jesse Crider
	Civilization = "goblin",
	Type = "polity",
	Colors = {"blue"},
	DefaultTier = "duchy",
	DefaultGovernmentType = "republic",
	FactionUpgrade = "upgrade-stilgar-faction",
	Titles = {
		"republic", "duchy", "Syndicate"
	},
	Description = _("The Stilgar Syndicate is renowned for its honorable reputation in doing business. They are one of the few goblin syndicates who can be trusted in upholding their end of an agreement.")
})

DefineFaction("Tenebris", { -- invented by Jesse Crider
	Civilization = "goblin",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "duchy",
	DefaultGovernmentType = "republic",
	FactionUpgrade = "upgrade-tenebris-faction",
	Titles = {
		"republic", "duchy", "Syndicate"
	},
	Description = _("The Tenebris Syndicate is mistrusted by most goblins. Due to the prevalence of mysticism in it, the syndicate is thought of as more of a land of witches and occultists than a true syndicate.")
})
