extends Control

func _ready():
	var command = "if (RunningScenario == false) then"
	command += "\nif not (IsMusicPlaying()) then"
	command += "\nPlayMusicName(\"MenuTheme\")"
	command += "\nend"
	command += "\nend"
	wyrmgus.lua_command(command)
		
	var menu_area = self.find_node("menu_area")
	
	var item_x = 0
	var item_y = 1
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
		
		entry_button.rect_position.x = 23 + 4 + (54 * item_x)
		entry_button.rect_position.y = 10 + 4 + (36 * 1.5) + (46 * item_y)
		
		item_x += 1
		
		if (item_x > 10):
			item_x = 0
			item_y += 1
