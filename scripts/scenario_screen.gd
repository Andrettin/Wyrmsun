extends Control

var interface_ident = "dwarven"

func _ready():
	wyrmgus.connect("this_player_changed", self, "this_player_changed", [], CONNECT_DEFERRED)
	
func this_player_changed():
	#FIXME: only update the interface graphics if the old and new players have different interfaces
	if (wyrmgus.get_this_player()):
		wyrmgus.get_this_player().connect("civilization_changed", self, "update_interface_graphics", [], CONNECT_DEFERRED)
	update_interface_graphics()
	#FIXME: disconnect the signal to update the interface graphics from the old player (the old player would have to be given as a parameter to the signal)

func update_interface_graphics():
	self.interface_ident = wyrmgus.get_this_player().get_interface()
	var interface_graphics_folder = "res://graphics/interface/" + self.interface_ident
	self.find_node("top_bar").texture = load(interface_graphics_folder + "/resource.png")
	self.find_node("bottom_bar").texture = load(interface_graphics_folder + "/filler_bottom.png")
	self.find_node("info_panel").texture = load(interface_graphics_folder + "/infopanel.png")
	self.find_node("button_panel").texture = load(interface_graphics_folder + "/buttonpanel.png")