extends Control

func _ready():
	wyrmgus.connect("interface_changed", self, "update_interface_graphics", [], CONNECT_DEFERRED)
	wyrmgus.connect("dialogue_called", self, "show_dialogue_panel", [], CONNECT_DEFERRED)
	
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
