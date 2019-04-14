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
	elif (category_ident == "items"):
		self.category = Category.Items
		potential_entries = wyrmgus.get_item_unit_types()
		potential_entries.sort_custom(self, "sort_items")
	elif (category_ident == "texts"):
		self.category = Category.Texts
		var literary_texts = wyrmgus.get_literary_texts()
		for literary_text in literary_texts:
			if (literary_text.get_main_text() == null):
				potential_entries.push_back(literary_text)
	elif (category_ident == "units"):
		self.category = Category.Units
		potential_entries = wyrmgus.get_unit_unit_types()
			
	for potential_entry in potential_entries:
		if (potential_entry.is_hidden()):
			continue
		if (potential_entry.get_ident().begins_with("unit-template-")): #ignore unit type templates
			continue
			
		self.entries.push_back(potential_entry)
			
func get_category_ident():
	if (self.category == Category.Buildings):
		return "buildings"
	elif (self.category == Category.Items):
		return "items"
	elif (self.category == Category.Texts):
		return "texts"
	elif (self.category == Category.Units):
		return "units"
	else:
		return ""
	
func get_category_name():
	if (self.category == Category.Buildings):
		return "Buildings"
	elif (self.category == Category.Items):
		return "Items"
	elif (self.category == Category.Texts):
		return "Texts"
	elif (self.category == Category.Units):
		return "Units"
	else:
		return ""
	
func is_category_separated_by_civilization():
	if (self.category == Category.Buildings || self.category == Category.Units):
		return true
	else:
		return false

func open_entry(entry, origin_scene):
	var entry_menu = load("res://scenes/encyclopedia_entry_menu.tscn").instance()
	entry_menu.origin_scene = origin_scene
	get_tree().get_root().add_child(entry_menu)
	entry_menu.popup()
	entry_menu.change_entry(entry)

func open_entry_link(entry_link, origin_scene):
	var link_array = entry_link.split(":")
	var entry_type_ident = link_array[0]
	var entry_ident = link_array[1]
	entry_ident = entry_ident.replace("_", "-")
	
	var entry
	if (entry_type_ident == "building" || entry_type_ident == "item" || entry_type_ident == "unit"):
		entry = wyrmgus.get_unit_type(entry_ident)
	elif (entry_type_ident == "literary_text"):
		entry = wyrmgus.get_literary_text(entry_ident)
	
	set_category_and_civilization_from_entry(entry)
		
	open_entry(entry, origin_scene)
	
func get_category_ident_for_entry(entry):
	if (entry.is_class("CLiteraryText")):
		return "texts"
	elif (entry.is_class("CUnitType")):
		if (entry.is_unit()):
			return "units"
		elif (entry.is_building()):
			return "buildings"
		if (entry.is_item()):
			return "items"

func set_category_and_civilization_from_entry(entry):
	var category_ident = get_category_ident_for_entry(entry)
	set_category(category_ident)
	if (entry.has_method("get_civilization")):
		self.civilization = entry.get_civilization()
	else:
		self.civilization = null
	
func sort_items(a, b):
	var item_class_a = a.get_item_class()
	var item_class_b = b.get_item_class()
	if (item_class_a != item_class_b and item_class_a != null and item_class_b != null):
		var item_slot_a = item_class_a.get_slot()
		var item_slot_b = item_class_b.get_slot()
		if (item_slot_a != item_slot_b):
			if (item_slot_a == null and item_slot_b != null):
				return false
			elif (item_slot_a != null and item_slot_b == null):
				return true
			elif (item_slot_a != null and item_slot_b != null):
				return item_slot_a.get_name() < item_slot_b.get_name()
		else:
			return item_class_a.get_name() < item_class_b.get_name()
	if (a.get_copper_cost() != b.get_copper_cost()):
		return a.get_copper_cost() < b.get_copper_cost()
	else:
		return a.get_name() < b.get_name()
