extends TextureRect

func _ready():
	update_position()
	get_tree().get_root().connect("size_changed", self, "update_position")

func update_position():
	self.rect_position.x = OS.window_size.x / 2 - self.rect_size.x / 2
