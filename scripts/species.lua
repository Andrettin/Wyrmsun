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

-- Note: When setting which species evolves to which, keep in mind that species should only evolve to those of a later period; only set two species in the same era to evolve into one another if you have good evidence that that happened historically

-- Note: When assigning species to fictional worlds, it is best to keep all species of the same genus in a single world.

DefineSpeciesPhylum("chordata", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=158852
	Name = "Chordata",
	Kingdom = "animalia",
	Subkingdom = "bilateria",
	Infrakingdom = "deuterostomia"
})

DefineSpecies("bee", {
	Name = "Bee",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	ChildUpgrade = "upgrade-bee-child"
})

DefineSpecies("bug", {
	Name = "Bug",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	ChildUpgrade = "upgrade-bee-child"
})

DefineSpecies("fly", {
	Name = "Fly",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	ChildUpgrade = "upgrade-bee-child"
})

DefineSpecies("slime", {
	Name = "Slime",
	Homeworld = "Nidavellir",
	Environments = {"cave", "swamp"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("slug", {
	Name = "Slug",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	ChildUpgrade = "upgrade-bee-child"
})

DefineSpecies("snail", {
	Name = "Snail",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	ChildUpgrade = "upgrade-bee-child"
})

DefineSpecies("snigill", {
	Name = "Snigill",
	Homeworld = "Nidavellir",
	Environments = {"swamp", "cave"},
	ChildUpgrade = "upgrade-bee-child"
})

DefineSpecies("worm", {
	Name = "Worm",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	ChildUpgrade = "upgrade-bee-child"
})

Load("scripts/species_fish.lua")
Load("scripts/species_amphibian.lua")
Load("scripts/species_reptilian.lua")
Load("scripts/species_avian.lua")
Load("scripts/species_mammalian.lua")
Load("scripts/species_bovid.lua")
Load("scripts/species_canid.lua")
Load("scripts/species_equid.lua")
Load("scripts/species_felid.lua")
Load("scripts/species_primate.lua")
Load("scripts/species_rhinocerotid.lua")
Load("scripts/species_rodent.lua")
Load("scripts/species_suid.lua")

Load("scripts/species_draconid.lua") -- mythical dragons and dragon-like creatures
Load("scripts/species_gryphid.lua") -- mythical gryphons
Load("scripts/species_tree.lua")

Load("scripts/species_ethereal.lua") -- ethereal beings (that is, ones made of pure magic substance)
