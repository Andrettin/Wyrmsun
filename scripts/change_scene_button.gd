extends "res://scripts/button.gd"

export var target_scene = ""

func _pressed():
	if (target_scene.empty() == false):
		get_tree().change_scene("res://scenes/" + target_scene + ".tscn")
