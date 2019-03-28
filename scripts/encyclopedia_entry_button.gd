extends "res://scripts/icon_button.gd"

var entry

func _ready():
	self.connect("pressed", self, "open_entry")

func set_entry(entry):
	self.entry = entry
	
	var graphics_file = entry.get_icon().get_file()
	if (graphics_file.find("dlcs/") != -1):
		graphics_file = "res://" + graphics_file
	else:
		graphics_file = "res://graphics/" + graphics_file
	
	set_graphics(graphics_file)
	
	var tooltip_text = entry.get_name()
	if (entry.has_method("get_faction") and entry.get_faction() != null):
		var faction = entry.get_faction()
		set_player_color(faction.get_primary_color())
		tooltip_text += " (" + faction.get_name() + ")"
	elif (encyclopedia.civilization != null):
		set_player_color(encyclopedia.civilization.get_default_player_color())
		
	set_tooltip(tooltip_text)

func open_entry():
	encyclopedia.open_entry(self.entry, get_tree().current_scene)
