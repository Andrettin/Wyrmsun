extends TextureRect

func _ready():
	update_size()
	get_tree().get_root().connect("size_changed", self, "update_size")

func update_size():
	self.rect_size = Vector2(OS.window_size.x / 2, OS.window_size.y / 4)
	self.texture = preload("res://graphics/interface/wyrmsun_logo_1_8th.png")
	if (self.texture.get_width() > self.rect_size.x or self.texture.get_height() > self.rect_size.y):
		self.texture = preload("res://graphics/interface/wyrmsun_logo_1_16th.png")
	self.rect_position.x = (OS.window_size.x / 2) - (self.rect_size.x / 2)
