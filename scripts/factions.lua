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
--      (c) Copyright 2015 by Andrettin
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

DefineCivilizationFactions("basque",
	"faction", {
		"name", "Ertebolle Tribe", -- based on the Ertebolle culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
		"type", "tribe",
		"color", "red",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Funnelbeaker Tribe", -- based on the Funnel Beaker culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
		"type", "tribe",
		"color", "red",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Gylfing Tribe", -- Scandinavian pre-Indo-Europeans are very unlikely to have spoken a Vasconic language, but this fits better than making them Germanic (as the Vasconic languages are pre-Indo-European)
		"type", "tribe",
		"color", "green",
		"secondary_color", "teal"
	},
	"faction", {
		"name", "Kongemose Tribe", -- based on the Kongemose culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
		"type", "tribe",
		"color", "red",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Maglemose Tribe", -- Scandinavian pre-Indo-Europeans are very unlikely to have spoken a Vasconic language, but this fits better than making them Germanic (as the Vasconic languages are pre-Indo-European); based on the Maglemose culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
		"type", "tribe",
		"color", "red",
		"secondary_color", "white"
	}
)

DefineCivilizationFactions("celt",
	"faction", {
		"name", "Aedui Tribe",
		"type", "tribe",
		"color", "green",
		"secondary_color", "green"
	},
	"faction", {
		"name", "Arverni Tribe",
		"type", "tribe",
		"color", "blue",
		"secondary_color", "blue"
	},
	"faction", {
		"name", "Boii Tribe",
		"type", "tribe",
		"color", "brown",
		"secondary_color", "brown"
	},
	"faction", {
		"name", "Helvetii Tribe",
		"type", "tribe",
		"color", "violet", -- another color, perhaps?
		"secondary_color", "violet"
	},
	"faction", {
		"name", "Menapii Tribe",
		"type", "tribe",
		"color", "orange",
		"secondary_color", "orange"
	},
	"faction", {
		"name", "Norici Tribe",
		"type", "tribe",
		"color", "white", -- another color, perhaps?
		"secondary_color", "white"
	},
	"faction", {
		"name", "Pict Tribe",
		"type", "tribe",
		"color", "cyan",
		"secondary_color", "cyan"
	},
	"faction", {
		"name", "Scot Tribe",
		"type", "tribe",
		"color", "brown",
		"secondary_color", "brown"
	},
	"faction", {
		"name", "Sequani Tribe",
		"type", "tribe",
		"color", "pink",
		"secondary_color", "red"
	},
	-- Non-Playable Tribes
	"faction", {
		"name", "Vana Tribe",
		"type", "tribe",
		"color", "blue",
		"secondary_color", "cyan",
		"playable", false
	}
)

DefineCivilizationFactions("germanic",
	"faction", {
		"name", "Asa Tribe",
		"type", "tribe",
		"color", "orange",
		"secondary_color", "red"
	},
	"faction", {
		"name", "Dane Tribe",
		"type", "tribe",
		"color", "red",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Frank Tribe",
		"type", "tribe",
		"color", "green",
		"secondary_color", "orange",
		"playable", false
	},
	"faction", {
		"name", "Goth Tribe",
		"type", "tribe",
		"color", "red",
		"secondary_color", "red"
	},
	"faction", {
		"name", "Jute Tribe",
		"type", "tribe",
		"color", "red",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Suebi Tribe",
		"type", "tribe",
		"color", "black",
		"secondary_color", "black",
		"playable", false
	},
	"faction", {
		"name", "Swede Tribe",
		"type", "tribe",
		"color", "blue",
		"secondary_color", "yellow"
	}
)

DefineFaction("Etruscan Tribe", {
	Civilization = "etruscan",
	Type = "tribe",
	Color = "yellow",
	SecondaryColor = "yellow",
	DevelopsTo = {"Etruria"}
})

DefineFaction("Etruria", {
	Civilization = "etruscan",
	Type = "polity",
	Color = "yellow",
	SecondaryColor = "yellow"
})

DefineFaction("Acthnic Tribe", {
	Civilization = "gnome",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "red",
	DevelopsTo = {"Untersberg"}
})

DefineFaction("Cubital Tribe", {
	Civilization = "gnome",
	Type = "tribe",
	Color = "brown",
	SecondaryColor = "brown",
	DevelopsTo = {"Untersberg"}
})

DefineFaction("Sagan Tribe", {
	Civilization = "gnome",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "green",
	DevelopsTo = {"Untersberg"}
})

DefineFaction("Untersberg", {
	Civilization = "gnome",
	Type = "polity",
	Color = "purple",
	SecondaryColor = "purple",
	Titles = {
		"monarchy", "Kingdom"
	}
})

DefineFaction("Khag Tribe", {
	Civilization = "goblin",
	Type = "tribe",
	Color = "blue",
	SecondaryColor = "cyan"
})

DefineFaction("Lggi Tribe", {
	Civilization = "goblin",
	Type = "tribe",
	Color = "blue",
	SecondaryColor = "cyan"
})

DefineFaction("Illyrian Tribe", {
	Civilization = "illyrian",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "red"
})

DefineFaction("Taulantii Tribe", {
	Civilization = "illyrian",
	Type = "tribe",
	Color = "blue",
	SecondaryColor = "blue"
})

DefineFaction("Kobolds", {
	Civilization = "kobold",
	Type = "tribe",
	Color = "violet",
	SecondaryColor = "purple"
})

DefineFaction("Sarmatian Tribe", {
	Civilization = "persian",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "red"
})

DefineFaction("Scythian Tribe", {
	Civilization = "persian",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "green"
})

DefineFaction("Persia", {
	Civilization = "persian",
	Type = "polity",
	Color = "yellow",
	SecondaryColor = "green",
	Titles = {
		"monarchy", "Kingdom"
	}
})

DefineFaction("Carthage", {
	Civilization = "phoenician",
	Type = "polity",
	Color = "black",
	SecondaryColor = "black"
})

DefineFaction("Bryges Tribe", {
	Civilization = "phrygian",
	Type = "tribe",
	Color = "violet",
	SecondaryColor = "violet"
})

DefineFaction("Apsinthii Tribe", {
	Civilization = "thracian",
	Type = "tribe",
	Color = "purple",
	SecondaryColor = "purple"
})

DefineFaction("Edoni Tribe", {
	Civilization = "thracian",
	Type = "tribe",
	Color = "white",
	SecondaryColor = "white"
})

DefineFaction("Getae Tribe", {
	Civilization = "thracian",
	Type = "tribe",
	Color = "teal",
	SecondaryColor = "teal"
})

DefineFaction("Odomanti Tribe", {
	Civilization = "thracian", -- were they really Thracian?
	Type = "tribe",
	Color = "black",
	SecondaryColor = "black"
})

DefineFaction("Odrysae Tribe", {
	Civilization = "thracian",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "red"
})

DefineFaction("Triballi Tribe", {
	Civilization = "thracian",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "green"
})
