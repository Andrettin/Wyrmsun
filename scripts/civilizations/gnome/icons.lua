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
	Name = "icon-gnomish-worker",
	Size = {46, 38},
	File = "gnome/icons/gnomish_worker.png"
})

DefineIcon({
	Name = "icon-gnomish-worker-gray-hair",
	Size = {46, 38},
	File = "gnome/icons/gnomish_worker_gray_hair.png"
})

DefineIcon({
	Name = "icon-gnomish-recruit",
	Size = {46, 38},
	File = "gnome/icons/gnomish_recruit.png"
})

DefineIcon({
	Name = "icon-gnomish-recruit-gray-hair",
	Size = {46, 38},
	File = "gnome/icons/gnomish_recruit_gray_hair.png"
})

DefineIcon({
	Name = "icon-gnomish-duelist",
	Size = {46, 38},
	File = "gnome/icons/duelist.png"
})

DefineIcon({
	Name = "icon-gnomish-duelist-gray-hair",
	Size = {46, 38},
	File = "gnome/icons/duelist_gray_hair.png"
})

DefineIcon({
	Name = "icon-gnomish-master-at-arms",
	Size = {46, 38},
	File = "gnome/icons/master_at_arms.png"
})

DefineIcon({
	Name = "icon-gnomish-master-at-arms-gray-hair",
	Size = {46, 38},
	File = "gnome/icons/master_at_arms_gray_hair.png"
})

DefineIcon({
	Name = "icon-gnomish-herbalist",
	Size = {46, 38},
	File = "gnome/icons/gnomish_herbalist.png"
})

DefineIcon({
	Name = "icon-gnomish-town-hall",
	Size = {46, 38},
	File = "gnome/icons/town_hall.png"
})

DefineIcon({
	Name = "icon-gnomish-farm",
	Size = {46, 38},
	File = "gnome/icons/farm.png"
})

DefineIcon({
	Name = "icon-gnomish-barracks",
	Size = {46, 38},
	File = "gnome/icons/barracks.png"
})

DefineIcon({
	Name = "icon-gnomish-thrusting-sword-1",
	Size = {46, 38},
	File = "gnome/icons/thrusting_sword_1.png"
})

DefineIcon({
	Name = "icon-gnomish-boots",
	Size = {46, 38},
	File = "gnome/icons/boots.png"
})

DefineIcon({
	Name = "icon-gnomish-boots-fur",
	Size = {46, 38},
	File = "gnome/icons/boots_fur.png"
})

DefineIcon({
	Name = "icon-gnomish-patrol-land",
	Size = {46, 38},
	File = "gnome/icons/patrol_land.png"
})

DefineIcon({
	Name = "icon-herbal-cure",
	Size = {46, 38},
	File = "gnome/icons/herbal_cure.png"
})

DefineIcon({
	Name = "icon-portent",
	Size = {46, 38},
	File = "gnome/icons/portent.png"
})

if (wyrmsun.tileset == "swamp" or wyrmsun.tileset == "dungeon") then
	DefineIcon({
		Name = "icon-gnomish-caravan",
		Size = {46, 38},
		File = "tilesets/swamp/gnome/icons/gnomish_caravan.png"
	})
elseif (wyrmsun.tileset == "conifer_forest_summer" or wyrmsun.tileset == "conifer_forest_autumn" or wyrmsun.tileset == "fairlimbed_forest") then
	DefineIcon({
		Name = "icon-gnomish-caravan",
		Size = {46, 38},
		File = "tilesets/forest/gnome/icons/gnomish_caravan.png"
	})
else	
	DefineIcon({
		Name = "icon-gnomish-caravan",
		Size = {46, 38},
		File = "tilesets/swamp/gnome/icons/gnomish_caravan.png"
	})
end
