extends Control

func _ready():
	wyrmgus.connect("interface_changed", self, "update_interface_graphics", [], CONNECT_DEFERRED)
	
func update_interface_graphics(old_interface, new_interface):
	var interface_graphics_folder = "res://graphics/interface/" + new_interface + "/"
	self.find_node("top_bar").texture = load(interface_graphics_folder + "resource.png")
	self.find_node("bottom_bar").texture = load(interface_graphics_folder + "filler_bottom.png")
	self.find_node("info_panel").texture = load(interface_graphics_folder + "infopanel.png")
	self.find_node("button_panel").texture = load(interface_graphics_folder + "buttonpanel.png")