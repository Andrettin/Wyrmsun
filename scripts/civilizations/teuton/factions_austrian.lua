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
--      (c) Copyright 2015-2022 by Andrettin
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

DefineFaction("carinthia", {
	Name = "Carinthia", -- "Kärnten"
	Adjective = "Carinthian",
	Civilization = "teuton",
	Type = "polity",
	Color = "brown",
	FactionUpgrade = "upgrade-faction-carinthia",
	Icon = "icon-flag-five-orange-birds-on-black",
	DefaultTier = "duchy" -- Duchy of Carinthia within the Holy Roman Empire; Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
})

-- Trading Companies

DefineFaction("kaiserliche-privilegierte-orientalische-kompagnie", { -- Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, p. 477.
	Name = "Privileged Imperial Oriental Company",
	Adjective = "Imperial Oriental",
	Civilization = "teuton",
	Type = "trading_company",
	Color = "white",
	DefaultTier = "barony",
--	Description = "The \"Kaiserliche privilegierte orientalische Kompagnie\", or Privileged Imperial Oriental Company, is an Austrian trading company founded on its Adriatic possessions. It engages in trade not only along the Adriatic coast itself, but also with the eastern Mediterranean.",
	HistoricalDiplomacyStates = {
		1719, "austria", "vassal" -- "Kaiserliche privilegierte orientalische Kompagnie" founded in Austria's Adriatic possessions in 1719; Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, p. 477.
	}
})

DefineFaction("haubt-handlungs-compagnie-von-triest-und-fiume", { -- Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, p. 477.
	Name = "Main Commercial Company of Trieste and Fiume",
	Adjective = "Main Commercial Triestan",
	Civilization = "teuton",
	Type = "trading_company",
	Color = "white",
	DefaultTier = "barony",
--	Description = "The \"Haubt-Handlungs-Compagnie von Triest und Fiume\", or Main Commercial Company of Trieste and Fiume, is an Austrian trading company founded on those two cities. It engages heavily in trade and manufacturing.",
	HistoricalDiplomacyStates = {
		1750, "austria", "vassal" -- "Haubt-Handlungs-Compagnie von Triest und Fiume" founded in 1750 in Austrian possessions; Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, p. 477.
	}
})

DefineFaction("temisvarer-privilegierte-handelskompagnie", { -- Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, pp. 477-478.
	Name = "Privileged Temesvaran Trading Company",
	Adjective = "Temesvaran",
	Civilization = "teuton",
	Type = "trading_company",
	Color = "white",
	DefaultTier = "barony",
--	Description = "The \"Temisvarer privilegierte Handelskompagnie\", or Privileged Temesvaran Trading Company, is an Austrian trading company with triple headquarters in Vienna, Trieste and Temesvar. It specializes in connecting the fertile lands of the Danube with the Adriatic Sea, bringing livestock and agricultural goods to port and selling foreign imports along the Danube.",
	HistoricalDiplomacyStates = {
		1759, "austria", "vassal" -- "Temisvarer privilegierte Handelskompagnie" founded in 1759 in Austrian possessions; Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, pp. 477-478.
	}
})
