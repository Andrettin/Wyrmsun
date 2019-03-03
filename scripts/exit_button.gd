extends "res://scripts/button.gd"

func _ready():
	._ready()
	self.connect("pressed", self, "exit")

func exit():
	get_tree().quit()
