extends TextureButton

var icon_pressed_display = false
var icon_node
export var icon_ident = ""

func _ready():
	self.connect("draw", self, "update_icon_position")
	self.connect("pressed", audio_player, "play_sound_file", ["res://sounds/interface/click.wav"])
	self.icon_node = self.find_node("icon")
	
	if (self.icon_ident.empty() == false):
		self.set_icon(wyrmgus.get_icon(self.icon_ident))

func update_icon_position():
	if (!icon_node):
		return
	
	if (self.icon_pressed_display == false and self.get_draw_mode() == DRAW_PRESSED):
		self.icon_pressed_display = true
		self.icon_node.rect_position += Vector2(1, 1)
	elif (self.icon_pressed_display == true and self.get_draw_mode() != DRAW_PRESSED):
		self.icon_pressed_display = false
		self.icon_node.rect_position -= Vector2(1, 1)
		
func set_icon(icon):
	self.icon_node.texture = wyrmgus.get_icon_texture(icon)
	
	#if there is more than one icon in the image, set only the rectangle to which the icon belongs as its image
	if (icon.get_size() != self.icon_node.texture.get_size()):
		var rect_pos = Vector2(0, 0)
		rect_pos.x = int((icon.get_frame() % int(self.icon_node.texture.get_width() / icon.get_size().x)) * icon.get_size().x)
		rect_pos.y = int(int(icon.get_frame() / int(self.icon_node.texture.get_width() / icon.get_size().x)) * icon.get_size().y)
		var rect = Rect2(rect_pos, icon.get_size())
		var image = self.icon_node.texture.get_data().get_rect(rect)
		var texture = ImageTexture.new()
		texture.create_from_image(image)
		self.icon_node.texture = texture

func set_primary_player_color(player_color):
	self.icon_node.set_primary_player_color(player_color)

func set_secondary_player_color(player_color):
	self.icon_node.set_secondary_player_color(player_color)

func set_tooltip(tooltip):
	self.hint_tooltip = tooltip
	self.icon_node.hint_tooltip = tooltip
	
func set_icon_transparency(transparency):
	self.icon_node.modulate.a = transparency
