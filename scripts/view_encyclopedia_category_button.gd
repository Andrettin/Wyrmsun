extends "res://scripts/button.gd"

export var encyclopedia_category = ""

func _ready():
	self.connect("pressed", self, "change_scene")

func change_scene():
	encyclopedia.set_category(self.encyclopedia_category)
	if (encyclopedia.is_category_separated_by_civilization()):
		get_tree().change_scene("res://scenes/encyclopedia_category_civilization_menu.tscn")
