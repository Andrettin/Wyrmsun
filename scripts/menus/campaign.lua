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

campaign_menu = nil

function RunCampaignMenu()
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

	local menu = WarMenu()
	campaign_menu = menu
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2
			
	local campaign_dd
	local potential_campaigns = GetCampaigns()
	local campaign_ident_list = {}
	local campaign_list = {}
	for i = 1, table.getn(potential_campaigns) do
		if (GetCampaignData(potential_campaigns[i], "Hidden") == false) then
			local required_quests = GetCampaignData(potential_campaigns[i], "RequiredQuests")
			local completed_prerequisites = true
			for j = 1, table.getn(required_quests) do
				if (GetQuestData(required_quests[j], "Completed") == false) then
					completed_prerequisites = false
					break
				end
			end
			if (completed_prerequisites) then
				table.insert(campaign_ident_list, potential_campaigns[i])
			end
		end
	end
	
	local function compare_campaign(a, b)
		if (GetCivilizationData(GetFactionData(GetCampaignData(a, "Faction"), "Civilization"), "Species") ~= GetCivilizationData(GetFactionData(GetCampaignData(b, "Faction"), "Civilization"), "Species")) then
			return GetCivilizationData(GetFactionData(GetCampaignData(a, "Faction"), "Civilization"), "Species") < GetCivilizationData(GetFactionData(GetCampaignData(b, "Faction"), "Civilization"), "Species")
		elseif (GetCampaignData(a, "StartYear") ~= GetCampaignData(b, "StartYear")) then
			return GetCampaignData(a, "StartYear") < GetCampaignData(b, "StartYear")
		else
			return a < b
		end
	end
	
	table.sort(campaign_ident_list, compare_campaign)
	
	for i=1,table.getn(campaign_ident_list) do
		local campaign_name = GetCampaignData(campaign_ident_list[i], "Name")
		if not (GetQuestData(campaign_ident_list[i], "Completed")) then
			campaign_name = _(campaign_name) .. " ~<(!)~>"
		end
		table.insert(campaign_list, campaign_name)
	end
	
	campaign_dd = menu:addDropDown(campaign_list, (Video.Width / 2) - (240 / 2) * get_scale_factor(), offy + (104 + 36*-0.5) * get_scale_factor(),
		function(dd)
			SetCurrentCampaign(campaign_ident_list[campaign_dd:getSelected() + 1])
			set_selected_campaign(campaign_ident_list[campaign_dd:getSelected() + 1])
		end
	)
	campaign_dd:setSize(240 * get_scale_factor(), 20 * get_scale_factor())
	if (get_selected_campaign() ~= "" and GetArrayIncludes(campaign_ident_list, get_selected_campaign())) then
		campaign_dd:setSelected(GetElementIndexFromArray(campaign_ident_list, get_selected_campaign()) - 1)
		SetCurrentCampaign(get_selected_campaign())
	else
		campaign_dd:setSelected(0)
		SetCurrentCampaign(campaign_ident_list[1])
	end
	
	menu:run()
end
