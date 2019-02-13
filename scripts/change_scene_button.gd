extends "res://scripts/button.gd"

export var target_scene = ""

func _pressed():
	if (target_scene.empty() == false):
		get_tree().change_scene("res://scenes/" + target_scene + ".tscn")
		#changing the scene will remove this button's audio player (resulting in the sound not being played), so we need to make the global audio player play it
		audio_player.play_sound_file("res://sounds/interface/click.wav")
