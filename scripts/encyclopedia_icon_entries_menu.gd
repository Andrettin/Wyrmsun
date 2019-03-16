extends "res://scripts/icon_buttons_menu.gd"

func _ready():
	var command = "if (RunningScenario == false) then"
	command += "\nif not (IsMusicPlaying()) then"
	command += "\nPlayMusicName(\"MenuTheme\")"
	command += "\nend"
	command += "\nend"
	wyrmgus.lua_command(command)
		
	var menu_area = self.find_node("menu_area")
	
	var icon_buttons = []
	for entry in encyclopedia.entries:
		if (entry.get_civilization() != encyclopedia.civilization):
			continue
		
		var entry_button = load("res://scenes/icon_button.tscn").instance()
		menu_area.add_child(entry_button)
		
		var graphics_file = entry.get_icon().get_file()
		if (graphics_file.find("dlcs/") != -1):
			graphics_file = "res://" + graphics_file
		else:
			graphics_file = "res://graphics/" + graphics_file
		
		entry_button.set_graphics(graphics_file)
		entry_button.set_player_color(encyclopedia.civilization.get_default_player_color())
		entry_button.set_tooltip(entry.get_name())
		
		icon_buttons.push_back(entry_button)
		
	place_icon_buttons(icon_buttons)
