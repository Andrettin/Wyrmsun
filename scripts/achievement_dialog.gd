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
	icon_button.set_icon(achievement.get_icon())
	icon_button.set_primary_player_color(achievement.get_primary_player_color())
	icon_button.set_secondary_player_color(achievement.get_secondary_player_color())
