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
--      credits.lua - Define the menu for credits.
--
--      (c) Copyright 2006-2010 by Jimmy Salmon and Pali Rohár
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

function RunShowCreditsMenu()
  local menu = WarMenu(nil, "ui/Credits_background.png")
  local offx = (Video.Width - 640) / 2
  local offy = (Video.Height - 480) / 2

  local credits = {
	"Wyrmsun Design and Maintenance",
	"  Andre Novellino Gouvea (Andrettin)",
	"Programming and Scripting",
	"  Jimmy Salmon",
	"  Francois Beerten",
	"  Nehal Mistry",
	"  Joris Dauphin",
	"  Russell Smith",
	"  Pali Rohar",
	"  cybermind",
	"  Andre Novellino Gouvea (Andrettin)",
	"  DinkyDyeAussie",
	"Graphics and Artwork",
	"  b_o",
	"  Joao Victor G. Costa (Jinn)",
	"  Leo",
	"  Cuzco",
	"  Elvish_Hunter",
	"  Emilien Rotival (LordBob)",
	"  Francois Beerten",
	"  Frank Loeffler",
	"  igoku",
	"  Mikodrak",
	"  Oray Studios",
	"  Paolo D'Inca",
	"  Ransom.00",
	"  Rick Elliot",
	"  Soeren Soendergaard Jensen",
	"  StumpyStrust",
	"  Tina Petersen Jensen",
	"  TimberDragon",
	"  Veneteaou",
	"Sound Effects",
	"  b_o",
	"  Battle for Wesnoth Team",
	"  Corey Woodworth (woodwizzle)",
	"  David Slimp",
	"  J.W. Bjerk (Eleazar)",
	"  Lari Nieminen (zookeeper)",
	"  Wolfgang Kohler",
	"Music",
	"  Battle for Wesnoth Team",
	"  Aleksi Aubry-Carlson (Aleksi)",
	"  Doug Kaufman (dkaufman)",
	"  Gianmarco Leone (gmlion)",
	"  Jeremy Nicoll (jeremy2/eltiare)",
	"  Joseph G. Toscano (ZhayTee)",
	"  Mattias Westlund (West)",
	"  Ryan Reilly (Rain)",
	"  Timothy Pinkham (TimothyP)",
	"Maps",
	"  Battle for Wesnoth Team",
	"  David White (Sirp)",
	"  Eric S. Raymond (ESR)", -- Northern Rebirth maps and scenarios
	"  GM1530",
	"  John Ericson",
	"  Joseph Simmons (turin)",
	"  Kyran Jackson",
	"  Lari Nieminen (zookeeper)",
	"  Martin McMahon",
	"  Mathieu Roy",
	"  Miguel Farah F.",
	"  Paolo Sammicheli",
	"  Rob Best",
	"  Taurus", -- Northern Rebirth maps and scenarios
	"Events and Quests",
	"  Andre Novellino Gouvea (Andrettin)",
	"  Battle for Wesnoth Team",
	"  Asa Swain",
	"  Joseph Simmons (turin)",
	"  Lari Nieminen (zookeeper)",
	"  Piotr Cychowski (Mist/cycholka)",
	"Encyclopedia",
	"  Andre Novellino Gouvea (Andrettin)",
	"  Battle for Wesnoth Team",
	"Testing",
	"  b_o",
	"  Joao Victor G. Costa (Jinn)",
	"  TaShadan",
	"Stratagus Patches",
	"  Martin Renold",
	"  Carlos Perello Marin",
	"  Pludov",
	"Past Stratagus Programmers",
	"  Andreas 'Ari' Arens",
	"  Lutz 'Johns' Sammer",
	"  Edgar 'Froese' Toernig",
	"  Crestez Leonard",
	"  Mark Pazolli",
	"  Valery Shchedrin",
	"  Iftikhar Rathore",
	"  Charles K Hardin",
	"  Fabrice Rossi",
	"  DigiCat",
	"  Josh Cogliati",
	"  Patrick Mullen",
	"  Vladi Belperchinov-Shabanski",
	"  Cris Daniluk",
	"  Patrice Fortier",
	"  FT Rathore",
	"  Trent Piepho",
	"  Jon Gabrielson",
	"  Lukas Hejtmanek",
	"  Steinar Hamre",
	"  Ian Farmer",
	"  Sebastian Drews",
	"  Jarek Sobieszek",
	"  Anthony Towns",
	"  Stefan Dirsch",
	"  Al Koskelin",
	"  George J. Carrette",
	"  Dirk 'Guardian' Richartz",
	"  Michael O'Reilly",
	"  Dan Hensley",
	"  Sean McMillian",
	"  Mike Earl",
	"  Ian Turner",
	"  David Slimp",
	"  Iuri Fiedoruk",
	"  Luke Mauldin",
	"  Nathan Adams",
	"  Stephan Rasenberger",
	"  Dave Reed",
	"  Josef Spillner",
	"  James Dessart",
	"  Jan Uerpmann",
	"  Aaron Berger",
	"  Latimerius",
	"  Antonis Chaniotis",
	"  Samuel Hays",
	"  David Martinez Moreno",
	"  Flavio Silvestrow",
	"  Daniel Burrows",
	"  Dave Turner",
	"  Ben Hines",
	"  Kachalov Anton",
	"Past Stratagus Patch Contributors",
	"  Martin Hajduch",
	"  Jeff Binder",
	"  Ludovic",
	"  Juan Pablo",
	"  Phil Hannent",
	"  Alexander MacLean",
	"",
	"Code used:",
	"  SDL Copyright by Sam Lantinga",
	"  ZLIB Copyright by Jean-loup Gailly and Mark Adler",
	"  BZ2LIB Copyright by Julian Seward",
	"  PNG Copyright by Glenn Randers-Pehrson",
	"  OGG/Vorbis Copyright by Xiph.org Foundation",
	"  VP3 codec Copyright by On2 Technologies Inc.",
	"  Guichan Copyright by Per Larsson and Olof Naessen",
	"  tolua++ Copyright by Codenix",
	"",
	"",
	"The Stratagus Team thanks all the people who have contributed",
	"patches, bug reports, and ideas.",
	"",
	wyrmsun.Name .. " Homepage: ", wyrmsun.Homepage,
	"Stratagus Homepage: ", GetStratagusHomepage(),
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
  }

  local sw = ScrollingWidget(328, 275)
  menu:add(sw, offx + 140, offy + 80)
  sw:setBackgroundColor(Color(0,0,0,0))
  sw:setActionCallback(function() sw:restart() end)
  for i,f in ipairs(credits) do
    sw:add(Label(f), 0, 24 * (i - 1) + 275)
  end

  menu:addHalfButton("~!Continue", "c", offx + 455, offy + 440,
    function() menu:stop() end)

  local speed = GetGameSpeed()
  SetGameSpeed(30)

  menu:run()

  SetGameSpeed(speed)
end

