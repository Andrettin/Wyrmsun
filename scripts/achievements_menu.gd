extends Control

var achievements = []

func _ready():
	self.achievements = wyrmgus.get_achievements()
	var menu_area_node = self.find_node("menu_area")
	
	var item_x = 1
	var item_y = 1
	for achievement in self.achievements:
		if (achievement.is_hidden()):
			continue
		
		var achievement_button = load("res://scenes/icon_button.tscn").instance()
		menu_area_node.add_child(achievement_button)
		
		achievement_button.set_graphics("res://graphics/" + achievement.get_icon().get_file())
		
		achievement_button.rect_position.x = 23 + 4 + (54 * item_x)
		achievement_button.rect_position.y = 10 + 4 + (46 * item_y)
		
		item_x = item_x + 1
		
		if (item_x > 9):
			item_x = 1
			item_y = item_y + 1
