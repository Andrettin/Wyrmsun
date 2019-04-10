extends Popup

#the current page, if the entry is a literary text
var current_page

#the entry for the menu
var entry

#the scene which originated the creation of this one
var origin_scene

func _ready():
	var command = "if (RunningScenario == false) then"
	command += "\nif not (IsMusicPlaying()) then"
	command += "\nPlayMusicName(\"MenuTheme\")"
	command += "\nend"
	command += "\nend"
	wyrmgus.lua_command(command)
	
	var entry_description_label = self.find_node("entry_description")
	entry_description_label.connect("meta_clicked", encyclopedia, "open_entry_link", [self])
	
func change_entry(entry):
	self.entry = entry
	
	var menu_area = self.find_node("menu_area")
	var menu_title = menu_area.find_node("menu_title")
	menu_title.bbcode_text = "[center][color=#f4e020]" + entry.get_name() + "[/color][/center]"
	
	if (entry.is_class("CLiteraryText")):
		self.current_page = entry.get_first_page()
	
	update_entry_icon_button()
	update_entry_description()
	update_previous_and_next_buttons()
	update_page_number_visibility()
	
	if (entry.is_class("CLiteraryText") and encyclopedia.last_page and entry.get_last_page() != null):
		change_page(entry.get_last_page())
		encyclopedia.last_page = false
	
func update_entry_icon_button():
	var entry_icon_button = self.find_node("entry_icon_button")
	
	entry_icon_button.set_tooltip(entry.get_name())
	var graphics_file = entry.get_icon().get_file()
	if (graphics_file.find("dlcs/") != -1):
		graphics_file = "res://" + graphics_file
	else:
		graphics_file = "res://graphics/" + graphics_file
	
	entry_icon_button.set_graphics(graphics_file)
	
	if (entry.has_method("get_faction") and entry.get_faction() != null):
		var faction = entry.get_faction()
		entry_icon_button.set_player_color(faction.get_primary_color())
	elif (encyclopedia.civilization != null):
		entry_icon_button.set_player_color(encyclopedia.civilization.get_default_player_color())

func update_entry_description():
	var entry_description_label = self.find_node("entry_description")
	var entry_description_text = ""
	
	if (entry.has_method("get_civilization") and entry.get_civilization() != null and entry.get_civilization().is_hidden() == false):
		entry_description_text += "Civilization:" + " " + entry.get_civilization().get_name() + "\n\n"
	
	if (entry.has_method("get_faction") and entry.get_faction() != null):
		entry_description_text += "Faction:" + " " + entry.get_faction().get_name() + "\n\n"
	
	if (entry.has_method("get_unit_class") and entry.get_unit_class() != null):
		entry_description_text += "Class:" + " " + entry.get_unit_class().get_name() + "\n\n"
	
	if (entry.has_method("get_description") and entry.get_description().empty() == false):
		entry_description_text += "Description:" + " " + entry.get_description() + "\n\n"
	
	if (entry.has_method("get_quote") and entry.get_quote().empty() == false):
		entry_description_text += "Quote:" + " " + entry.get_quote() + "\n\n"
		
	if (entry.is_class("CUnitType")):
		var cost_strings = get_cost_strings(entry)
		var first_cost = true
		for cost_string in cost_strings:
			if (first_cost):
				entry_description_text += tr("Costs") + ": "
				first_cost = false
			else:
				entry_description_text += ", "
			entry_description_text += cost_string
		if (!first_cost): #the costs string was written, so add a period to it
			entry_description_text += ".\n\n"
		
		var stat_strings = get_stat_strings(entry)
		var first_stat = true
		for stat_string in stat_strings:
			if (first_stat):
				entry_description_text += tr("Stats") + ": "
				first_stat = false
			else:
				entry_description_text += ", "
			entry_description_text += stat_string
		if (!first_stat): #the stats string was written, so add a period to it
			entry_description_text += ".\n\n"
	elif (entry.is_class("CLiteraryText")):
		if (entry.get_author().empty() == false):
			if (entry.get_main_text() == null or entry.get_author() != entry.get_main_text().get_author()):
				entry_description_text += "Author:" + " " + entry.get_author() + "\n\n"
			
		if (entry.get_translator().empty() == false):
			if (entry.get_main_text() == null or entry.get_translator() != entry.get_main_text().get_translator()):
				entry_description_text += "Translator:" + " " + entry.get_translator() + "\n\n"
	
		if (entry.get_publisher().empty() == false):
			if (entry.get_main_text() == null or entry.get_publisher() != entry.get_main_text().get_publisher()):
				entry_description_text += "Publisher:" + " " + entry.get_publisher() + "\n\n"
	
		if (entry.get_publication_year() != 0):
			if (entry.get_main_text() == null or entry.get_publication_year() != entry.get_main_text().get_publication_year()):
				entry_description_text += "Year of Publication:" + " " + str(entry.get_publication_year()) + "\n\n"
	
		if (entry.get_license().empty() == false):
			if (entry.get_main_text() == null or entry.get_license() != entry.get_main_text().get_license()):
				entry_description_text += "License:" + " " + entry.get_license() + "\n\n"
			
		if (self.current_page != null):
			if (entry_description_text.empty() == false):
				#add a bit of separation between the description and the text of the page itself
				entry_description_text += "\n\n"
			entry_description_text += self.current_page.get_text()
			
		#draw a table of contents for subsections of the literary text for the last page of the literary text
		var sections = entry.get_sections()
		if (sections.empty() == false and (self.current_page == null or self.current_page.get_next_page() == null)):
			entry_description_text += "\n\n" + "Table of Contents" + "\n"
			
			for section in sections:
				entry_description_text += "\n[url=literary_text:" + section.get_ident() + "]"
				entry_description_text += section.get_name()
				entry_description_text += "[/url]"
	
	if (entry.has_method("get_background") and entry.get_background().empty() == false):
		entry_description_text += "Background:" + " " + entry.get_background() + "\n\n"
		
	entry_description_label.bbcode_text = entry_description_text

func update_previous_and_next_buttons():
	var previous_button = self.find_node("previous_button")
	var next_button = self.find_node("next_button")
	
	if (entry.is_class("CLiteraryText")):
		if ((self.current_page == null or self.current_page.get_previous_page() == null) and entry.get_previous_section() == null and entry.get_main_text() == null):
			previous_button.visible = false
		else:
			previous_button.visible = true
			previous_button.set_tooltip("Previous Page")
			
		if ((self.current_page == null or self.current_page.get_next_page() == null) and entry.get_next_section() == null and entry.get_sections().empty() == true and (entry.get_main_text() == null or entry.get_main_text().get_next_section() == null)):
			next_button.visible = false
		else:
			next_button.visible = true
			next_button.set_tooltip("Next Page")
	else:
		previous_button.visible = false
		next_button.visible = false
		
func previous_button_pressed():
	if (entry.is_class("CLiteraryText")):
		if (self.current_page != null and self.current_page.get_previous_page() != null):
			change_page(self.current_page.get_previous_page())
		elif (entry.get_previous_section() != null):
			encyclopedia.last_page = true
			var new_entry = entry.get_previous_section()
			#set to the last subsection within the previous section
			while (new_entry.get_sections().empty() == false):
				new_entry = new_entry.get_sections().back()
			change_entry(new_entry)
		elif (entry.get_main_text() != null):
			encyclopedia.last_page = true
			if (origin_scene.get("entry") == entry.get_main_text()):
				origin_scene.change_entry(entry.get_main_text())
				exit_entry_menu()
			else:
				change_entry(entry.get_main_text())

func next_button_pressed():
	if (entry.is_class("CLiteraryText")):
		if (self.current_page != null and self.current_page.get_next_page() != null):
			change_page(self.current_page.get_next_page())
		elif (entry.get_sections().empty() == false):
			encyclopedia.open_entry(entry.get_sections().front(), self)
		elif (entry.get_next_section() != null):
			change_entry(entry.get_next_section())
		elif (entry.get_main_text() != null and entry.get_main_text().get_next_section() != null):
			if (origin_scene.get("entry") == entry.get_main_text()):
				origin_scene.change_entry(entry.get_main_text().get_next_section())
				exit_entry_menu()
			else:
				change_entry(entry.get_main_text().get_next_section())

func change_page(page):
	self.current_page = page
	
	var entry_description_label = self.find_node("entry_description")
	
	if (page.get_number() == 1):
		#this is the first page, so show the information on the literary text as well
		update_entry_description()
	else:
		entry_description_label.bbcode_text = page.get_text()
		entry_description_label.update_for_scroll_bar()
	
	update_page_number()
	entry_description_label.get_v_scroll().value = 0
	update_previous_and_next_buttons()

func update_page_number_visibility():
	var page_number_label = self.find_node("page_number")
	
	if (entry.is_class("CLiteraryText")):
		page_number_label.visible = true
		update_page_number()
	else:
		page_number_label.visible = false
	
func update_page_number():
	var page_number_label = self.find_node("page_number")
	if (entry.is_page_numbering_enabled() and self.current_page != null):
		var page_number = (entry.get_initial_page_number() - 1) + self.current_page.get_number()
		var page_number_text = ""
		if (entry.has_lowercase_roman_numeral_page_numbering()):
			page_number_text = wyrmgus.number_to_roman_numeral(page_number).to_lower()
		else:
			page_number_text = str(page_number)
		page_number_label.bbcode_text = "[center]" + page_number_text + "[/center]"
	else:
		page_number_label.bbcode_text = ""

func get_cost_strings(entry):
	var cost_strings = []
	if (entry.get_copper_cost() > 0):
		cost_strings.push_back(str(entry.get_copper_cost()) + " " + tr("Copper"))
	if (entry.get_lumber_cost() > 0):
		cost_strings.push_back(str(entry.get_lumber_cost()) + " " + tr("Lumber"))
	if (entry.get_stone_cost() > 0):
		cost_strings.push_back(str(entry.get_stone_cost()) + " " + tr("Stone"))
	if (entry.get_coal_cost() > 0):
		cost_strings.push_back(str(entry.get_coal_cost()) + " " + tr("Coal"))
	if (entry.get_food_demand() > 0):
		cost_strings.push_back(str(entry.get_food_demand()) + " " + tr("Food"))
	return cost_strings

func get_stat_strings(entry):
	var stat_strings = []
	if (!entry.is_indestructible()):
		if (entry.get_hit_points() > 0):
			stat_strings.push_back(str(entry.get_hit_points()) + " " + tr("Hit Points"))
	if (entry.get_mana() > 0):
		stat_strings.push_back(str(entry.get_mana()) + " " + tr("Mana"))
	if (entry.get_damage() > 0):
		stat_strings.push_back(str(entry.get_damage()) + " " + tr("Damage"))
	if (entry.get_acid_damage() > 0):
		stat_strings.push_back(str(entry.get_acid_damage()) + " " + tr("Acid Damage"))
	if (entry.get_fire_damage() > 0):
		stat_strings.push_back(str(entry.get_fire_damage()) + " " + tr("Fire Damage"))
	if (!entry.is_indestructible()):
		if (entry.get_armor() > 0):
			stat_strings.push_back(str(entry.get_armor()) + " " + tr("Armor"))
		if (entry.get_fire_resistance() > 0):
			stat_strings.push_back(str(entry.get_fire_resistance()) + "% " + tr("Fire Resistance"))
	if (entry.get_range() > 0 and entry.can_attack()):
		stat_strings.push_back(str(entry.get_range()) + " " + tr("Range"))
	if (entry.get_terrain_type() == null):
		if (entry.get_sight() > 0):
			stat_strings.push_back(str(entry.get_sight()) + " " + tr("Sight"))
	if (entry.get_accuracy() > 0 and entry.can_attack()):
		stat_strings.push_back(str(entry.get_accuracy()) + " " + tr("Accuracy"))
	if (!entry.is_indestructible()):
		if (entry.get_evasion() > 0):
			stat_strings.push_back(str(entry.get_evasion()) + " " + tr("Evasion"))
	if (entry.get_speed() > 0):
		stat_strings.push_back(str(entry.get_speed()) + " " + tr("Speed"))
	if (entry.get_day_sight_bonus() != 0):
		stat_strings.push_back(str(entry.get_day_sight_bonus()) + " " + tr("Day Sight Bonus"))
	if (entry.get_night_sight_bonus() != 0):
		stat_strings.push_back(str(entry.get_night_sight_bonus()) + " " + tr("Night Sight Bonus"))
	if (entry.get_food_supply() > 0):
		stat_strings.push_back(str(entry.get_food_supply()) + " " + tr("Food Supply"))
	if (entry.get_garrisoned_range_bonus() > 0):
		stat_strings.push_back(str(entry.get_garrisoned_range_bonus()) + " " + tr("Garrisoned Range Bonus"))
	if (entry.get_research_speed_bonus() > 0):
		stat_strings.push_back(str(entry.get_research_speed_bonus()) + "% " + tr("Research Speed Bonus"))
	if (entry.get_ownership_influence_range() > 0):
		stat_strings.push_back(str(entry.get_ownership_influence_range()) + " " + tr("Ownership Influence Range"))
	if (entry.get_speed_bonus() > 0):
		stat_strings.push_back(str(entry.get_speed_bonus()) + " " + tr("Speed Bonus"))
		
	if (entry.is_indestructible()):
		stat_strings.push_back(tr("Indestructible"))
	if (entry.has_regeneration_aura()):
		stat_strings.push_back(tr("Regeneration Aura"))
		
	return stat_strings

func exit_entry_menu():
	if (origin_scene.get("entry")):
		encyclopedia.set_category_and_civilization_from_entry(origin_scene.get("entry"))
	queue_free()
	get_parent().remove_child(self)
