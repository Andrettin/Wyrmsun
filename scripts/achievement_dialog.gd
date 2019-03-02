extends Control

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