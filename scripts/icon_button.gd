extends TextureButton

var icon_pressed_display = false
var icon_node
export var player_color = ""

func _ready():
	self.connect("draw", self, "update_icon_position")
	
	self.icon_node = self.find_node("icon")
	self.icon_node.set_player_color(self.player_color)

func update_icon_position():
	if (!icon_node):
		return
	
	if (self.icon_pressed_display == false and self.get_draw_mode() == DRAW_PRESSED):
		self.icon_pressed_display = true
		self.icon_node.rect_position += Vector2(1, 1)
	elif (self.icon_pressed_display == true and self.get_draw_mode() != DRAW_PRESSED):
		self.icon_pressed_display = false
		self.icon_node.rect_position -= Vector2(1, 1)

func _set(property, value):
	if (property == "player_color"):
		self.icon_node.set_player_color(self.player_color)

func set_graphics(file_path):
	self.icon_node.texture = load(file_path)