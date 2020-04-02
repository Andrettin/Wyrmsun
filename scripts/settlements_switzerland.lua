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
--      (c) Copyright 2016-2020 by Andrettin
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

DefineSite("geneva", {
	Name = "Geneva",
	MapTemplate = "earth",
	Position = {3982, 997},
	Major = true,
	CulturalNames = {
		"french", "Geneva"
	},
	HistoricalOwners = {
		395, "rome", -- Geneva was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		481, "burgundy", -- Geneva was a Burgundian possession in the 481-532 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		486, "burgundy", -- Geneva was a part of the Kingdom of the Burgundians in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "burgundia" -- Geneva went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
	},
	HistoricalBuildings = {
		395, 0, "town-hall",
		395, 0, "temple" -- Geneva was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"europe", "roman-danube", "west-and-central-europe"}
})

DefineSite("martigny", {
	Name = "Martigny",
	MapTemplate = "earth",
	Position = {3996, 999},
	CulturalNames = {
		"french", "Martigny"
	},
	HistoricalOwners = {
		395, "rome", -- Martigny was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		481, "burgundy", -- Martigny's area was a Burgundian possession in the 481-532 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		486, "burgundy", -- Martigny's area was a part of the Kingdom of the Burgundians in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "burgundia" -- Martigny's area went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
	},
	HistoricalBuildings = {
		395, 0, "temple" -- Martigny was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"europe", "roman-danube", "west-and-central-europe"}
})

DefineSite("vindonissa", {
	Name = "Vindonissa",
	MapTemplate = "earth",
	Position = {4029, 969},
	CulturalNames = {
		"french", "Martigny"
	},
	HistoricalOwners = {
		395, "rome", -- Vindonissa was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		481, "alamanni-tribe", -- Vindonissa's area was an Alamannic possession in the 481-536 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		486, "alamanni-tribe", -- Vindonissa's area was belonged to the Alamanni in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "austrasia" -- Vindonissa's area went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
	},
	HistoricalBuildings = {
		395, 0, "temple" -- Vindonissa was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"europe", "roman-danube", "west-and-central-europe"}
})
