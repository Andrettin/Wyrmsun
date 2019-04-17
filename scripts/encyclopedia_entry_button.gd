extends "res://scripts/button.gd"

var entry

func _ready():
	self.connect("pressed", self, "open_entry")

func set_entry(entry):
	self.entry = entry
	
	set_button_text(entry.get_name())

func open_entry():
	encyclopedia.open_entry(self.entry, get_tree().current_scene)
