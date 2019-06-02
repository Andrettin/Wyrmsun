extends "res://scripts/icon_button.gd"

var entry

func _ready():
	self.connect("pressed", self, "open_entry")

func set_entry(entry):
	self.entry = entry
	
	if (entry.get_icon() == null):
		printerr("Entry \"%s\" has no icon." % [entry.get_ident()])
	
	set_icon(entry.get_icon())
	
	var tooltip_text = ""
	
	if (entry.has_method("get_full_name")):
		tooltip_text += entry.get_full_name()
	else:
		tooltip_text += entry.get_name()
	
	if (entry.has_method("get_faction") and entry.get_faction() != null):
		var faction = entry.get_faction()
		set_player_color(faction.get_primary_color())
		tooltip_text += " (" + faction.get_name() + ")"
	elif (encyclopedia.civilization != null):
		set_player_color(encyclopedia.civilization.get_default_player_color())
	else:
		set_player_color(wyrmgus.get_civilization("neutral").get_default_player_color())
		
	set_tooltip(tooltip_text)

func open_entry():
	encyclopedia.open_entry(self.entry, get_tree().current_scene)
