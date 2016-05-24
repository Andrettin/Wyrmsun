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

DefineIcon({
	Name = "icon-goblin-town-hall",
	Size = {46, 38},
	File = "goblin/icons/town_hall.png"
})

DefineIcon({
	Name = "icon-goblin-stronghold",
	Size = {46, 38},
	File = "goblin/icons/stronghold.png"
})

DefineIcon({
	Name = "icon-goblin-mess-hall",
	Size = {46, 38},
	File = "goblin/icons/mess_hall.png"
})

DefineIcon({
	Name = "icon-goblin-farm",
	Size = {46, 38},
	File = "goblin/icons/farm.png"
})

DefineIcon({
	Name = "icon-goblin-lumber-mill",
	Size = {46, 38},
	File = "goblin/icons/lumber_mill.png"
})

DefineIcon({
	Name = "icon-goblin-smithy",
	Size = {46, 38},
	File = "goblin/icons/smithy.png"
})

DefineIcon({
	Name = "icon-goblin-watch-tower",
	Size = {46, 38},
	File = "goblin/icons/watch_tower.png"
})

DefineIcon({
	Name = "icon-goblin-guard-tower",
	Size = {46, 38},
	File = "goblin/icons/guard_tower.png"
})

DefineIcon({
	Name = "icon-goblin-worker",
	Size = {46, 38},
	File = "goblin/icons/goblin_worker.png"
})

DefineIcon({
	Name = "icon-goblin-magnate",
	Size = {46, 38},
	File = "goblin/icons/magnate.png"
})

DefineIcon({
	Name = "icon-goblin-swordsman",
	Size = {46, 38},
	File = "goblin/icons/swordsman.png"
})

DefineIcon({
	Name = "icon-goblin-spearman",
	Size = {46, 38},
	File = "goblin/icons/goblin_spearman.png"
})

DefineIcon({
	Name = "icon-goblin-archer",
	Size = {46, 38},
	File = "goblin/icons/goblin_archer.png"
})

DefineIcon({
	Name = "icon-goblin-headhunter",
	Size = {46, 38},
	File = "goblin/icons/headhunter.png"
})

DefineIcon({
	Name = "icon-goblin-thief",
	Size = {46, 38},
	File = "goblin/icons/goblin_thief.png"
})

DefineIcon({
	Name = "icon-goblin-war-machine",
	Size = {46, 38},
	File = "goblin/icons/goblin_war_machine.png"
})

DefineIcon({
	Name = "icon-goblin-glider",
	Size = {46, 38},
	File = "goblin/icons/glider.png"
})

DefineIcon({
	Name = "icon-goblin-patrol-land",
	Size = {46, 38},
	File = "goblin/icons/patrol_land.png"
})

DefineIcon({
	Name = "icon-goblin-return-goods",
	Size = {46, 38},
	File = "goblin/icons/return_goods.png"
})

DefineIcon({
	Name = "icon-goblin-coinage",
	Size = {46, 38},
	File = "goblin/icons/coinage.png"
})

if (wyrmsun.tileset == "swamp" or wyrmsun.tileset == "dungeon") then
	DefineIcon({
		Name = "icon-goblin-banner",
		Size = {46, 38},
		File = "tilesets/swamp/goblin/icons/goblin_banner.png"
	})
elseif (wyrmsun.tileset == "conifer_forest_summer" or wyrmsun.tileset == "conifer_forest_autumn" or wyrmsun.tileset == "fairlimbed_forest") then
	DefineIcon({
		Name = "icon-goblin-banner",
		Size = {46, 38},
		File = "tilesets/forest/goblin/icons/goblin_banner.png"
	})
else	
	DefineIcon({
		Name = "icon-goblin-banner",
		Size = {46, 38},
		File = "tilesets/swamp/goblin/icons/goblin_banner.png"
	})
end
