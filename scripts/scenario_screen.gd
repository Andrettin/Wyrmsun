extends Control

var supply = 0
var demand = 0

func _ready():
	wyrmgus.connect("interface_changed", self, "update_interface_graphics", [], CONNECT_DEFERRED)
	wyrmgus.connect("dialogue_called", self, "show_dialogue_panel", [], CONNECT_DEFERRED)
	wyrmgus.connect("resource_stored_changed", self, "update_resource_count", [], CONNECT_DEFERRED)
	wyrmgus.connect("time_of_day_changed", self, "update_time_of_day", [], CONNECT_DEFERRED)
	wyrmgus.connect("season_changed", self, "update_season", [], CONNECT_DEFERRED)
	wyrmgus.connect("age_changed", self, "update_age", [], CONNECT_DEFERRED)
	wyrmgus.connect("supply_changed", self, "update_supply", [], CONNECT_DEFERRED)
	wyrmgus.connect("demand_changed", self, "update_demand", [], CONNECT_DEFERRED)
	
func update_interface_graphics(old_interface, new_interface):
	var interface_graphics_folder = "res://graphics/interface/" + new_interface + "/"
	self.find_node("top_bar").texture = load(interface_graphics_folder + "resource.png")
	self.find_node("bottom_bar").texture = load(interface_graphics_folder + "filler_bottom.png")
	self.find_node("info_panel").texture = load(interface_graphics_folder + "infopanel.png")
	self.find_node("button_panel").texture = load(interface_graphics_folder + "buttonpanel.png")
	
func show_dialogue_panel(dialogue):
	wyrmgus.increment_paused_game_dialog_count()
	var dialogue_panel = load("res://scenes/dialogue_panel.tscn").instance()
	self.find_node("canvas_layer").add_child(dialogue_panel)
	dialogue_panel.set_dialogue(dialogue)
	dialogue_panel.popup()
	
func update_resource_count(resource, amount):
	var resource_count_label = null
	if (resource.get_ident() == "copper"):
		resource_count_label = self.find_node("copper_count")
	elif (resource.get_ident() == "lumber"):
		resource_count_label = self.find_node("lumber_count")
	elif (resource.get_ident() == "stone"):
		resource_count_label = self.find_node("stone_count")
		
	if (resource_count_label == null):
		return
		
	var amount_suffix = ""
	if (amount >= 100000):
		amount /= 1000
		amount_suffix = "k"
	
	resource_count_label.bbcode_text = str(amount) + amount_suffix
	
func update_time_of_day(old_time_of_day, new_time_of_day):
	var time_of_day_icon_node = self.find_node("time_of_day_icon")
	if (new_time_of_day != null):
		time_of_day_icon_node.visible = true
		time_of_day_icon_node.texture = new_time_of_day.get_image().get_texture()
		time_of_day_icon_node.hint_tooltip = tr(new_time_of_day.get_name())
	else:
		time_of_day_icon_node.visible = false
		
func update_season(old_season, new_season):
	var season_icon_node = self.find_node("season_icon")
	if (new_season != null):
		season_icon_node.visible = true
		season_icon_node.texture = new_season.get_image().get_texture()
		season_icon_node.hint_tooltip = tr(new_season.get_name())
	else:
		season_icon_node.visible = false
		
func update_age(old_age, new_age):
	var age_icon_node = self.find_node("age_icon")
	var age_label_node = self.find_node("age_label")
	if (new_age != null):
		age_icon_node.visible = true
		age_label_node.visible = true
		age_icon_node.texture = new_age.get_image().get_texture()
		age_label_node.bbcode_text = tr(new_age.get_name())
	else:
		age_icon_node.visible = false
		age_label_node.visible = false

func update_supply(new_supply):
	self.supply = new_supply
	self.update_food_label()

func update_demand(new_demand):
	self.demand = new_demand
	self.update_food_label()

func update_food_label():
	var food_label = self.find_node("food_label")
	food_label.bbcode_text = str(self.demand) + "/" + str(self.supply)
