extends "res://scripts/icon_buttons_menu.gd"

var achievements = []

func _ready():
	if (!music_player.oaml_module.is_playing()):
		music_player.oaml_module.play_track("MenuTheme")
		
	self.achievements = wyrmgus.get_achievements()
	
	var menu_area = self.find_node("menu_area")
	
	var icon_buttons = []
	for achievement in self.achievements:
		if (achievement.is_hidden()):
			continue
		
		var achievement_button = load("res://scenes/icon_button.tscn").instance()
		menu_area.add_child(achievement_button)
		
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
		
		icon_buttons.push_back(achievement_button)
		
	place_icon_buttons(icon_buttons)
	
func show_achievement_dialog(achievement):
	var achievement_dialog = load("res://scenes/achievement_dialog.tscn").instance()
	self.add_child(achievement_dialog)
	achievement_dialog.set_achievement(achievement)
	achievement_dialog.popup()
