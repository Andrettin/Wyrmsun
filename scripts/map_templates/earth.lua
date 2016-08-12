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

DefineMapTemplate("earth", {
	Name = "Earth",
	Width = 8192,
	Height = 4096,
	TerrainFile = "scripts/map_templates/earth.map",
	GeneratedTerrains = {
		"rock", "medium",
		"grass", "extremely-high",
		"dirt", "high",
		"pine-tree", "high"
	}
})

SetMapTemplateTileTerrain("earth", "shallow-water", 4033, 756)
SetMapTemplateTileTerrain("earth", "shallow-water", 4034, 756)
SetMapTemplateTileTerrain("earth", "shallow-water", 4035, 760)
SetMapTemplateTileTerrain("earth", "shallow-water", 4036, 760)
SetMapTemplateTileTerrain("earth", "shallow-water", 4036, 762)
SetMapTemplateTileTerrain("earth", "shallow-water", 4037, 753)
SetMapTemplateTileTerrain("earth", "shallow-water", 4037, 759)
SetMapTemplateTileTerrain("earth", "shallow-water", 4037, 760)
SetMapTemplateTileTerrain("earth", "shallow-water", 4037, 761)
SetMapTemplateTileTerrain("earth", "shallow-water", 4037, 762)
SetMapTemplateTileTerrain("earth", "shallow-water", 4038, 752)
SetMapTemplateTileTerrain("earth", "shallow-water", 4038, 753)
SetMapTemplateTileTerrain("earth", "shallow-water", 4038, 759)
SetMapTemplateTileTerrain("earth", "shallow-water", 4038, 761)
SetMapTemplateTileTerrain("earth", "shallow-water", 4038, 762)
SetMapTemplateTileTerrain("earth", "shallow-water", 4039, 752)
SetMapTemplateTileTerrain("earth", "shallow-water", 4039, 753)
SetMapTemplateTileTerrain("earth", "shallow-water", 4040, 752)
SetMapTemplateTileTerrain("earth", "shallow-water", 4042, 754)
SetMapTemplateTileTerrain("earth", "shallow-water", 4042, 755)
SetMapTemplateTileTerrain("earth", "shallow-water", 4043, 752)
SetMapTemplateTileTerrain("earth", "shallow-water", 4043, 753)
SetMapTemplateTileTerrain("earth", "shallow-water", 4043, 754)
SetMapTemplateTileTerrain("earth", "shallow-water", 4043, 755)
SetMapTemplateTileTerrain("earth", "shallow-water", 4044, 751)
SetMapTemplateTileTerrain("earth", "shallow-water", 4044, 752)
SetMapTemplateTileTerrain("earth", "shallow-water", 4044, 753)
SetMapTemplateTileTerrain("earth", "shallow-water", 4044, 754)
SetMapTemplateTileTerrain("earth", "shallow-water", 4045, 751)
SetMapTemplateTileTerrain("earth", "shallow-water", 4045, 752)
SetMapTemplateTileTerrain("earth", "shallow-water", 4045, 753)
SetMapTemplateTileTerrain("earth", "shallow-water", 4045, 754)
SetMapTemplateTileTerrain("earth", "shallow-water", 4046, 751)
SetMapTemplateTileTerrain("earth", "shallow-water", 4046, 752)
SetMapTemplateTileTerrain("earth", "shallow-water", 4046, 753)
SetMapTemplateTileTerrain("earth", "shallow-water", 4046, 754)
SetMapTemplateTileTerrain("earth", "shallow-water", 4046, 760)
SetMapTemplateTileTerrain("earth", "shallow-water", 4047, 751)
SetMapTemplateTileTerrain("earth", "shallow-water", 4047, 752)
SetMapTemplateTileTerrain("earth", "shallow-water", 4047, 753)
SetMapTemplateTileTerrain("earth", "shallow-water", 4047, 754)
SetMapTemplateTileTerrain("earth", "shallow-water", 4047, 755)
SetMapTemplateTileTerrain("earth", "shallow-water", 4048, 751)
SetMapTemplateTileTerrain("earth", "shallow-water", 4048, 752)
SetMapTemplateTileTerrain("earth", "shallow-water", 4048, 753)
SetMapTemplateTileTerrain("earth", "shallow-water", 4048, 754)
SetMapTemplateTileTerrain("earth", "shallow-water", 4048, 755)
SetMapTemplateTileTerrain("earth", "shallow-water", 4048, 756)
SetMapTemplateTileTerrain("earth", "shallow-water", 4049, 757)
SetMapTemplateTileTerrain("earth", "shallow-water", 4049, 759)
SetMapTemplateTileTerrain("earth", "shallow-water", 4050, 758)
SetMapTemplateTileTerrain("earth", "shallow-water", 4050, 759)
SetMapTemplateTileTerrain("earth", "shallow-water", 4051, 758)
SetMapTemplateTileTerrain("earth", "shallow-water", 4051, 759)

SetMapTemplateResource("earth", "unit-copper-deposit", {3634, 1067}) -- Tin deposits; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 7.
SetMapTemplateResource("earth", "unit-copper-deposit", {3722, 905}) -- Tin deposits; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 7.
SetMapTemplateResource("earth", "unit-copper-deposit", {3749, 956}) -- Tin deposits; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 7.
SetMapTemplateResource("earth", "unit-copper-deposit", {4156, 886}) -- Tin deposits; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 7.

SetMapTemplateHistoricalUnit("earth", "unit-germanic-town-hall", "Asa Tribe", {4243, 692}, -2800) -- Sigtun / Segiztûna; in the Ynglinga saga, "Odin's people", the Asa, settle Scandinavia in a manner not too dissimilar from what archaeological findings tell us of Indo-European settlement in the region; thus the name "Asa Tribe" is used here to denote the Indo-European-speaking peoples who settled in Scandinavia, and were the precursors of the Germanic peoples; "Segiztûna" is a rendering of "Sigtun" in Proto-Germanic, since the Ynglinga saga the city was founded when the cultural ancestors of the Germanic peoples (= Odin's people) first settled Scandinavia

SetMapTemplateHistoricalUnit("earth", "unit-germanic-town-hall", "Skeldung Tribe", {4112, 784}, -2800) -- Leidre / Lejre; Funnel Beaker culture ended in Zealand in 2800 BC and the Corded Ware culture (neolithic) began; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 38. In the Ynglinga Saga, Odin set his son Skjöldr to rule in Leidre after their people (who here we equate with the cultural ancestors of the Germanics who migrated to Scandinavia) conquered the land
