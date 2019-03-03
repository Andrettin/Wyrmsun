extends "res://scripts/button.gd"

export var target_scene = ""

func _ready():
	._ready()
	self.connect("pressed", self, "change_scene")

func change_scene():
	if (self.target_scene.empty() == false):
		get_tree().change_scene("res://scenes/" + self.target_scene + ".tscn")
