extends CheckBox

func _toggled(button_pressed):
	audio_player.play_sound_file("res://sounds/interface/click.wav")
