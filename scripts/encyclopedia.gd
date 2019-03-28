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

#whether the entry (if a literary text) should be started from the last page
var last_page = false

func set_category(category_ident):
	if (category_ident == get_category_ident()):
		return
	
	self.entries = []
	var potential_entries = []
	
	if (category_ident == "buildings"):
		self.category = Category.Buildings
		potential_entries = wyrmgus.get_building_unit_types()
		
	elif (category_ident == "texts"):
		self.category = Category.Texts
		var literary_texts = wyrmgus.get_literary_texts()
		for literary_text in literary_texts:
			if (literary_text.get_main_text() == null):
				potential_entries.push_back(literary_text)
			
	for potential_entry in potential_entries:
		if (!potential_entry.is_hidden()):
			self.entries.push_back(potential_entry)
			
func get_category_ident():
	if (self.category == Category.Buildings):
		return "buildings"
	elif (self.category == Category.Texts):
		return "texts"
	else:
		return ""
	
func get_category_name():
	if (self.category == Category.Buildings):
		return "Buildings"
	elif (self.category == Category.Texts):
		return "Texts"
	else:
		return ""
	
func is_category_separated_by_civilization():
	if (self.category == Category.Buildings):
		return true
	else:
		return false

func open_entry(entry, origin_scene):
	var entry_menu = load("res://scenes/encyclopedia_entry_menu.tscn").instance()
	entry_menu.origin_scene = origin_scene
	get_tree().get_root().add_child(entry_menu)
	entry_menu.change_entry(entry)

func open_entry_link(entry_link, origin_scene):
	var link_array = entry_link.split(":")
	var entry_type_ident = link_array[0]
	var entry_ident = link_array[1]
	entry_ident = entry_ident.replace("_", "-")
	
	var entry
	if (entry_type_ident == "literary_text"):
		entry = wyrmgus.get_literary_text(entry_ident)
	
	var category_ident = get_category_ident_for_entry(entry)
	set_category(category_ident)
	if (entry.has_method("get_civilization")):
		self.civilization = entry.get_civilization()
	else:
		self.civilization = null
		
	open_entry(entry, origin_scene)
	
func get_category_ident_for_entry(entry):
	if (entry.is_class("CLiteraryText")):
		return "texts"
