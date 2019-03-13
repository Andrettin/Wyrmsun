extends "res://scripts/button.gd"

var civilization

func _ready():
	self.connect("pressed", self, "change_scene")

func change_scene():
	encyclopedia.civilization = self.civilization
	get_tree().change_scene("res://scenes/encyclopedia_icon_entries_menu.tscn")
