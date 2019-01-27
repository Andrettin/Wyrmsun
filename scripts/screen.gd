extends Node

var background_node

func _ready():
	background_node = self.find_node("background")
	update_size()
	get_tree().get_root().connect("size_changed", self, "update_size")

func update_size():
	self.rect_size = OS.window_size
	if (background_node):
		background_node.rect_size = self.rect_size
