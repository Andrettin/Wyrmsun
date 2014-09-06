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
--      localization.lua - Defines the map generation scripts.
--
--      (c) Copyright 2013 by Andre Novellino Gouvêa
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

if (wyr.preferences.Language == "English") then
	single_player_game_name = "~!Single Player Game"
	multi_player_game_name = "~!Multi Player Game"
	title_load_game_name = "~!Load Game"
	replay_game_name = "~!Replay Game"
	options_name = "~!Options"
	map_editor_name = "Map ~!Editor"
	show_credits_name = "S~!how Credits"
	exit_program_name = "E~!xit Program"
	load_game_name = "Load Game"
	previous_menu_name = "~!Previous Menu"
	new_map_name = "~!New Map"
	load_map_name = "~!Load Map"
	select_map_name = "~!Select Map"
	edit_map_name = "~!Edit Map"
	load_name = "~!Load"
	cancel_name = "~!Cancel"
	select_scenario_name = "Select Map"
	hotkey_select_scenario_name = "S~!elect Map"
	units_name = "~<Units:~>"
	
--	dwarven_species_and_civilization_name = "Dwarf - Knalgan"
	dwarven_species_and_civilization_name = "Dwarf"
--	dwarven_civilization_name = "Knalgan"
	dwarven_civilization_name = "Dwarf"

	barracks_name = "Barracks"
	lumber_mill_name = "Lumber Mill"
	
	dwarven_miner_name = "Miner"
	dwarven_axefighter_name = "Axefighter"
	dwarven_town_hall_name = "Mead Hall"
	dwarven_mushroom_farm_name = "Mushroom Farm"
	dwarven_barracks_name = "War Hall"

	gnomish_recruit_name = "Gnomish Recruit"
	gnomish_caravan_name = "Gnomish Caravan"

	gold_mine_name = "Gold Mine"

	rat_name = "Rat"

	tales_of_nidavellir_name = "Tales of Nidavellir"
	the_scepter_of_fire_name = "The ~!Scepter of Fire"
	a_bargain_is_struck_name = "I. A Bargain is Struck"
	a_bargain_is_struck_objective_1 = "- Bring the Gnomish caravans and the envoy to your Mead Hall"
elseif (wyr.preferences.Language == "German") then
--	dwarven_miner_name = "Miner"
--	dwarven_axefighter_name = "Axefighter"
	dwarven_town_hall_name = "Methalle"

	dwarven_species_and_civilization_name = "Zwerg"
	dwarven_civilization_name = "Zwerg"
elseif (wyr.preferences.Language == "Portuguese") then
	single_player_game_name = "Jogo de Um Jogador"
	multi_player_game_name = "Jogo ~!Multijogador"
	title_load_game_name = "Carregar Jogo"
	replay_game_name = "~!Rever Jogo"
	options_name = "~!Opções"
	map_editor_name = "~!Editor de Mapas"
	show_credits_name = "Mostrar Créditos"
	exit_program_name = "Sair do Programa"
	load_game_name = "Carregar Jogo"
	previous_menu_name = "Menu Anterior"
	new_map_name = "~!Novo Mapa"
	load_map_name = "Carregar Mapa"
	select_map_name = "~!Selecionar Mapa"
	edit_map_name = "~!Editar Mapa"
	load_name = "Carregar"
	cancel_name = "~!Cancelar"
	select_scenario_name = "Selecione Mapa"
	hotkey_select_scenario_name = "S~!elecione Mapa"
	units_name = "~<Unidades:~>"

--	dwarven_species_and_civilization_name = "Anão - Gnalgano"
	dwarven_species_and_civilization_name = "Anão"
--	dwarven_civilization_name = "Gnalgano"
	dwarven_civilization_name = "Anão"

	barracks_name = "Quartel"
	lumber_mill_name = "Serraria"
	
	dwarven_miner_name = "Mineiro"
	dwarven_axefighter_name = "Machadeiro"
	dwarven_town_hall_name = "Salão de Hidromel"
	dwarven_mushroom_farm_name = "Fazenda de Cogumelos"
	dwarven_barracks_name = "Salão de Guerra"

	gnomish_recruit_name = "Recruta Gnomo"
	gnomish_caravan_name = "Caravana Gnoma"

	gold_mine_name = "Mina de Ouro"
	rat_name = "Rato"

	tales_of_nidavellir_name = "Lendas de Nidavellir"
	the_scepter_of_fire_name = "O Cetro de Fogo"
	a_bargain_is_struck_name = "I. Uma Barganha é Feita"
	a_bargain_is_struck_objective_1 = "- Traga as caravanas gnomas e o enviado até seu Salão de Hidromel"
end
