extends "res://scripts/icon_button.gd"

var entry

func _ready():
	self.connect("pressed", self, "open_entry")

func open_entry():
	encyclopedia.open_entry(self.entry)
