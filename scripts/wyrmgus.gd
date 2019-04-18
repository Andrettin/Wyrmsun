extends Wyrmgus

var wyrmgus_thread

func _ready():
	if (self.wyrmgus_thread == null):
		#replace the default pointing hand cursor with the Wyrmsun magnifying glass cursor
		Input.set_custom_mouse_cursor(load("res://graphics/ui/cursors/magnifying_glass.png"), Input.CURSOR_POINTING_HAND, Vector2(11, 11))
		
		self.connect("time_of_day_changed", music_player, "time_of_day_changed", [], CONNECT_DEFERRED)
		
		#if the player is hitting or being hit increment the tension to our music by one
		self.connect("unit_hit", music_player, "add_tension", [1], CONNECT_DEFERRED)
		
		self.set_oaml_module(music_player)
		self.wyrmgus_thread = Thread.new()
		self.wyrmgus_thread.start(self, "run_")

#we need this function because starting a function in a new thread with Godot requires that function to take a parameter (i.e. userdata), which the run() function in Wyrmgus does not
func run_(userdata):
	self.run()
	
#gets the sapient species from a species list
func get_sapient_species_from_list(species_list):
	var sapient_species_list = []
	for species in species_list:
		if (species.is_sapient() == true):
			sapient_species_list.push_back(species)
			
	return sapient_species_list

#gets the fauna species from a species list
func get_fauna_species_from_list(species_list, ignore_prehistoric):
	var fauna_species_list = []
	for species in species_list:
		if (species.is_sapient() == false and (species.is_prehistoric() == false or ignore_prehistoric == false)):
			fauna_species_list.push_back(species)
			
	return fauna_species_list
	
#gets a succint string list of species names, using the common name of species categories instead if too many species of a given category are listed
func get_succint_species_string_list(species_list):
	var list_changed = true
	while (species_list.size() > 10 and list_changed == true):
		list_changed = false
		var category_counts = {}
		for species in species_list:
			var categories = null
			if (species.has_method("get_all_upper_categories")):
				categories = species.get_all_upper_categories()
			elif (species.has_method("get_all_categories")):
				categories = species.get_all_categories()
			
			if (categories.empty() == false):
				for category in categories:
					if (!category_counts.has(category)):
						category_counts[category] = 0
					category_counts[category] += 1
				
		var new_list = []
		#pick the category with the smallest count out of those with counts greater than 10
		var chosen_category = null
		var chosen_category_count = -1
		for category in category_counts.keys():
			var category_count = category_counts.get(category)
			if (category_count <= 10):
				continue
			if (chosen_category == null or category_count < chosen_category_count or category.get_rank().get_index() > chosen_category.get_rank().get_index()): #give priority to categories of lower ranks
				chosen_category = category
				chosen_category_count = category_count
		if (chosen_category != null):
			new_list.push_back(chosen_category)
			list_changed = true
				
			for species in species_list:
				var categories = null
				if (species.has_method("get_all_upper_categories")):
					categories = species.get_all_upper_categories()
				elif (species.has_method("get_all_categories")):
					categories = species.get_all_categories()
					
				if (categories.empty() == false and categories.has(chosen_category)):
					continue #ignore species (or species categories) whose (upper) categories are in the list
					
				if (new_list.has(species)):
					continue #avoid duplicates, which could happen due to the category insertion algorithm
					
				new_list.push_back(species)
				
			species_list = new_list
		
	var species_string_list = []
	for species in species_list:
		var name = ""
		if (species.has_method("get_common_name_plural")):
			if (species.get_common_name_plural().empty() == false):
				name = species.get_common_name_plural() #species category common name plural
			else:
				name = species.get_name() #species category scientific name, which is already plural
		else:
			if (species.get_name_plural().empty() == false):
				name = species.get_name_plural()
			else:
				name = species.get_name()
			
		species_string_list.push_back(name)
		
	species_string_list.sort()
	
	return species_string_list
