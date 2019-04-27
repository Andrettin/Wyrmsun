extends Control

func _ready():
	wyrmgus.connect("initialized", self.find_node("splash_timer"), "start", [], CONNECT_DEFERRED)
	
	self.find_node("sepia_timer").connect("timeout", self, "update_background")

func update_background():
	#fade out the starting background
	var starting_background = self.find_node("starting_background")
	if (starting_background.modulate.a > 0):
		starting_background.modulate.a -= min(0.01, starting_background.modulate.a)
	else:
		get_tree().change_scene("res://scenes/main_menu.tscn")
