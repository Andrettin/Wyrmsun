extends Node

#saves encyclopedia information in-between encyclopedia scenes

enum Category {
	Buildings,
	Civilizations,
	Deities,
	Factions,
	GameConcepts,
	Heroes,
	Items,
	MagicPrefixes,
	MagicSuffixes,
	Planes,
	RunicSuffixes,
	Technologies,
	Texts,
	Uniques,
	Units,
	Worlds
}

#the current category
var category = -1

#the current civilization
var civilization

#entries for the current category
var entries = []

#the current entry
var entry

func set_category(category_ident):
	self.entries = []
	
	if (category_ident == "buildings"):
		self.category = Category.Buildings
		var potential_entries = wyrmgus.get_building_unit_types()
		
		for potential_entry in potential_entries:
			if (!potential_entry.is_hidden()):
				self.entries.push_back(potential_entry)
			
func get_category_name():
	if (self.category == Category.Buildings):
		return "Buildings"
	else:
		return ""
	
func is_category_separated_by_civilization():
	if (self.category == Category.Buildings):
		return true
	else:
		return false

func open_entry(entry):
	self.entry = entry
	
	if (self.category == Category.Buildings):
		get_tree().change_scene("res://scenes/encyclopedia_building_entry_menu.tscn")
