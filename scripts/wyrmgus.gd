extends Wyrmgus

var wyrmgus_thread
var paused_game_dialog_count = 0 #the count of dialogs the presence of which pauses the game

func _ready():
	if (self.wyrmgus_thread == null):
		#replace the default pointing hand cursor with the Wyrmsun magnifying glass cursor
		Input.set_custom_mouse_cursor(load("res://graphics/ui/cursors/magnifying_glass.png"), Input.CURSOR_POINTING_HAND, Vector2(11, 11))
		
		self.connect("time_of_day_changed", music_player, "time_of_day_changed", [], CONNECT_DEFERRED)
		
		#if the player is hitting or being hit increment the tension to our music by one
		self.connect("unit_hit", music_player, "add_tension", [1], CONNECT_DEFERRED)
		
		self.update_user_directory()
		
		self.set_oaml_module(music_player)
		
		self.wyrmgus_thread = Thread.new()
		self.wyrmgus_thread.start(self, "run_")

#we need this function because starting a function in a new thread with Godot requires that function to take a parameter (i.e. userdata), which the run() function in Wyrmgus does not
func run_(userdata):
	self.run()
	
func update_user_directory():
	#set the user directory for Wyrmsun in the documents folder
	var user_directory = Directory.new()
	var user_directory_path = OS.get_system_dir(OS.SYSTEM_DIR_DOCUMENTS) + "/" + ProjectSettings.get_setting("application/config/name")
	if (!user_directory.dir_exists(user_directory_path)):
		var result = user_directory.make_dir_recursive(user_directory_path)
		if (result != OK):
			printerr("Error creating \"" + user_directory_path + "\" directory: " + str(result))
			return
	var result = user_directory.open(user_directory_path)
	if (result != OK):
		printerr("Error Directory::change_dir error for path \"" + user_directory_path + "\": " + str(result))
		return
	self.set_user_directory(user_directory.get_current_dir())

	
	
func get_civilization_victory_background_texture(civilization):
	var file_path = civilization.get_victory_background_file()
	file_path = file_path.replace(".png", "_sepia.png") #use the sepia version for better text visibility
	return self.get_image_texture(file_path)
	
func get_civilization_defeat_background_texture(civilization):
	var file_path = civilization.get_defeat_background_file()
	file_path = file_path.replace(".png", "_sepia.png") #use the sepia version for better text visibility
	return self.get_image_texture(file_path)
	
func get_image_texture(file_path):
	var texture
	if (file_path.find(self.get_user_directory()) == -1):
		if (file_path.find("dlcs/") != -1 or file_path.find("modules/") != -1):
			file_path = "res://" + file_path
		else:
			file_path = "res://graphics/" + file_path
		texture = load(file_path)
	else:
		#for images that don't have import files, we need to do it a bit differently
		var image = Image.new()
		image.load(file_path)
		texture = ImageTexture.new()
		texture.create_from_image(image)
	return texture
	
func process_dynamic_string(string, context_element):
	if (context_element.get_class() == "CCharacter"):
		if (string.find("HERO_MAJOR_DEITY") != -1):
			var deities = context_element.get_deities()
			if (deities.empty() == false):
				var major_deity = null
				for deity in deities:
					if (deity.is_major()):
						major_deity = deity
						break
				if (major_deity != null):
					var deity_name = ""
					if (context_element.get_civilization() != null):
						deity_name = major_deity.get_cultural_name(context_element.get_civilization())
					if (deity_name.empty()):
						deity_name = major_deity.get_name()
					string = string.replace("HERO_MAJOR_DEITY", deity_name)
		if (string.find("HERO_MINOR_DEITY_1") != -1):
			var deities = context_element.get_deities()
			if (deities.empty() == false):
				var minor_deity = null
				for deity in deities:
					if (deity.is_major() == false):
						minor_deity = deity
						break
				if (minor_deity != null):
					if (string.find("HERO_MINOR_DEITY_1_DOMAIN_1") != -1):
						var deity_domains = minor_deity.get_domains()
						if (deity_domains.empty() == false):
							var deity_domain = deity_domains.front()
							string = string.replace("HERO_MINOR_DEITY_1_DOMAIN_1", deity_domain.get_name())
					if (string.find("HERO_MINOR_DEITY_1_GOD_GODDESS") != -1):
						if (minor_deity.get_gender().get_ident() == "female"):
							string = string.replace("HERO_MINOR_DEITY_1_GOD_GODDESS", tr("Goddess"))
						else:
							string = string.replace("HERO_MINOR_DEITY_1_GOD_GODDESS", tr("God"))
					if (string.find("HERO_MINOR_DEITY_1") != -1):
						var deity_name = ""
						if (context_element.get_civilization() != null):
							deity_name = minor_deity.get_cultural_name(context_element.get_civilization())
						if (deity_name.empty()):
							deity_name = minor_deity.get_name()
						string = string.replace("HERO_MINOR_DEITY_1", deity_name)
	return string

func increment_paused_game_dialog_count():
	if (self.game_paused == false):
		self.game_paused = true
	paused_game_dialog_count += 1

func decrement_paused_game_dialog_count():
	paused_game_dialog_count -= 1
	if (paused_game_dialog_count == 0):
		self.game_paused = false

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
			if (category_count < 2):
				continue
			if (chosen_category != null):
				if (category.get_rank().get_index() < chosen_category.get_rank().get_index()):
					continue #give priority to categories of lower ranks
				elif (category.get_rank().get_index() == chosen_category.get_rank().get_index() and category_count < chosen_category_count):
					continue #give priority to categories with greater counts, if they have the same rank
			
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
			
		species_string_list.push_back(tr(name))
		
	species_string_list.sort()
	
	return species_string_list
