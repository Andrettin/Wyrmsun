extends Popup

var achievement

func set_achievement(achievement):
	self.achievement = achievement
	var title_label = self.find_node("title_label")
	title_label.bbcode_text = "[center]" + achievement.get_name() + "[/center]"
	
	var description_label = self.find_node("description_label")
	var description_text = achievement.get_description()
	if (achievement.get_progress_max() > 0):
		description_text += "\n\n" + "Progress: "
		description_text += str(achievement.get_progress())
		description_text += "/"
		description_text += str(achievement.get_progress_max())
	description_label.bbcode_text = description_text
	
	var icon_button = self.find_node("icon_button")
	var graphics_file = achievement.get_icon().get_file()
	if (graphics_file.find("dlcs/") != -1):
		graphics_file = "res://" + graphics_file
	else:
		graphics_file = "res://graphics/" + graphics_file
	icon_button.set_graphics(graphics_file)
	icon_button.set_player_color(achievement.get_player_color())
