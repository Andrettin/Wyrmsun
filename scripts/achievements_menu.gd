extends Control

var achievements = []

func _ready():
	var command = "if not (IsMusicPlaying()) then"
	command += "\nPlayMusicName(\"MenuTheme\")"
	command += "\nend"
	wyrmgus.lua_command(command)
	
	self.achievements = wyrmgus.get_achievements()
	var menu_area_node = self.find_node("menu_area")
	
	var item_x = 1
	var item_y = 1
	for achievement in self.achievements:
		if (achievement.is_hidden()):
			continue
		
		var achievement_button = load("res://scenes/icon_button.tscn").instance()
		menu_area_node.add_child(achievement_button)
		
		var graphics_file = achievement.get_icon().get_file()
		if (graphics_file.find("dlcs/") != -1):
			graphics_file = "res://" + graphics_file
		else:
			graphics_file = "res://graphics/" + graphics_file
		
		achievement_button.set_graphics(graphics_file)
		achievement_button.set_player_color(achievement.get_player_color())
		achievement_button.set_tooltip(achievement.get_name())
		achievement_button.connect("pressed", self, "show_achievement_dialog", [achievement])
		if (!achievement.is_obtained()):
			achievement_button.set_icon_transparency(0.33)
		
		achievement_button.rect_position.x = 23 + 4 + (54 * item_x)
		achievement_button.rect_position.y = 10 + 4 + (36 * 1.5) + (46 * item_y)
		
		item_x = item_x + 1
		
		if (item_x > 9):
			item_x = 1
			item_y = item_y + 1

func show_achievement_dialog(achievement):
	var achievement_dialog = load("res://scenes/achievement_dialog.tscn").instance()
	self.add_child(achievement_dialog)
	achievement_dialog.set_achievement(achievement)
