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
--      (c) Copyright 2014-2021 by Andrettin
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

function DeleteCustomHeroMenu(hero)
	if (hero ~= "") then
		local confirm = WarGameMenu(panel(4))

		confirm:resize(288 * get_scale_factor(), 128 * get_scale_factor())

		confirm:addLabel(_("Delete ") .. hero, 288 / 2 * get_scale_factor(), 11 * get_scale_factor())
		confirm:addLabel(_("Are you sure?") .. " This cannot be undone.", 288 / 2 * get_scale_factor(), 45 * get_scale_factor(), Fonts["game"])

		confirm:addHalfButton(_("~!Yes"), "y", (1 * (288 / 3) - 90) * get_scale_factor(), (120 - 16 - 27) * get_scale_factor(),
			function()
				DeleteCustomHero(hero)
				confirm:stop()
			end
		)

		confirm:addHalfButton(_("~!No"), "n", (3 * (288 / 3) - 116) * get_scale_factor(), (120 - 16 - 27) * get_scale_factor(),
			function() confirm:stop() end
		)

		confirm:run()
	end
end
