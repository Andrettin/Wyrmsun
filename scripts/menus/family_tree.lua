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
--      (c) Copyright 2018-2020 by Andrettin
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

function RunFamilyTreeMenu(hero)
	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	menu:addLabel(_("~<Family Tree~>") .. "~<: " .. GetCharacterData(hero, "FullName") .. "~>", offx + 320, offy + 104 + 36*-2)

	AddFamilyTreeIcon(hero, menu, Video.Width / 2 - 46 / 2, Video.Height / 2 - 38 / 2, "both")

	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 212 + (36 * 6),
		function()
			menu:stop();
		end
	)

	menu:run()
end

function AddFamilyTreeIcon(character, menu, x, y, direction)
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	if (
		y <= offy + 104 + 36*-2 -- cannot be placed over the title
		or y + 46 >= offy + 212 + (36 * 6) -- cannot be placed over the "Previous Menu" button
	) then
		return nil;
	end

	local character_icon_frame = GetIconData(GetCharacterData(character, "Icon"), "Frame")
	local character_icon = GetIconData(GetCharacterData(character, "Icon"), "File")
	local character_civilization = GetCharacterData(character, "Civilization")
	local character_faction = GetCharacterData(character, "Faction")
	local playercolor = "gray"
	if (character_faction ~= "") then
			playercolor = GetFactionData(character_faction, "Color")
	elseif (character_civilization ~= "") then
			playercolor = GetCivilizationData(character_civilization, "DefaultColor")
	end
	local b = PlayerColorImageButton("", playercolor)
	b:setActionCallback(
		function()
			PlaySound("click");
			menu:stop();
			RunFamilyTreeMenu(character);
		end
	)
	menu:add(b, x, y)
	b:setNormalImage(character_icon)
	b:setPressedImage(character_icon)
	b:setDisabledImage(character_icon)
	b:set_frame(character_icon_frame)
	b:setBorderSize(0)
	b:setIconFrameImage()
	b:setTooltip(GetCharacterData(character, "FullName"))
	
	if (direction == "upwards" or direction == "both") then
		if (GetCharacterData(character, "Father") ~= "" and GetCharacterData(GetCharacterData(character, "Father"), "IsUsable")) then
			local father_x = x
			if (GetCharacterData(character, "Mother") ~= "" and GetCharacterData(GetCharacterData(character, "Mother"), "IsUsable")) then
				father_x = father_x - 54 / 2 - 14
			end
			AddFamilyTreeIcon(GetCharacterData(character, "Father"), menu, father_x, y - 46 - 5, "upwards")
		end
		
		if (GetCharacterData(character, "Mother") ~= "" and GetCharacterData(GetCharacterData(character, "Mother"), "IsUsable")) then
			local mother_x = x
			if (GetCharacterData(character, "Father") ~= "" and GetCharacterData(GetCharacterData(character, "Father"), "IsUsable")) then
				mother_x = mother_x + 54 / 2 + 14
			end
			AddFamilyTreeIcon(GetCharacterData(character, "Mother"), menu, mother_x, y - 46 - 5, "upwards")
		end
	end
	
	if (direction == "downwards" or direction == "both") then
		local potential_character_children = GetCharacterData(character, "Children")
		local character_children = {}
		for i = 1, table.getn(potential_character_children) do
			if (GetCharacterData(potential_character_children[i], "IsUsable")) then
				table.insert(character_children, potential_character_children[i])
			end
		end
		
		local children_start_x = x - (GetCharacterFamilyTreeWidth(character, y) / 2 - (54 + 14) / 2)
		for i = 1, table.getn(character_children) do
			AddFamilyTreeIcon(character_children[i], menu, children_start_x + (GetCharacterFamilyTreeWidth(character_children[i], y + 46 + 5) / 2 - (54 + 14) / 2), y + 46 + 5, "downwards")
			children_start_x = children_start_x + GetCharacterFamilyTreeWidth(character_children[i], y + 46 + 5)
		end
	end
	
	return b
end

function GetCharacterFamilyTreeWidth(character, y)
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	if (
		y <= offy + 104 + 36*-2 -- cannot be placed over the title
		or y + 46 >= offy + 212 + (36 * 6) -- cannot be placed over the "Previous Menu" button
	) then
		return 0;
	end
	
	local family_tree_width = 0
	
	local potential_character_children = GetCharacterData(character, "Children")
	local character_children = {}
	for i = 1, table.getn(potential_character_children) do
		if (GetCharacterData(potential_character_children[i], "IsUsable")) then
			table.insert(character_children, potential_character_children[i])
		end
	end
	for i = 1, table.getn(character_children) do
		family_tree_width = family_tree_width + GetCharacterFamilyTreeWidth(character_children[i], y + 46 + 5)
	end
	
	if (family_tree_width == 0) then -- no children, so the width is just the character's icon
		family_tree_width = 54 + 14
	end
	
	return family_tree_width
end