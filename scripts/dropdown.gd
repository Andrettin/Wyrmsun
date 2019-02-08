extends OptionButton

func item_selected_sound(var id):
	self.find_node("dropdown_audio_player").play()