extends TextureButton

var icon_pressed_display = false
var icon_node
export var file_path = ""

func _ready():
	self.connect("draw", self, "update_icon_position")
	self.connect("pressed", audio_player, "play_sound_file", ["res://sounds/interface/click.wav"])
	self.icon_node = self.find_node("icon")
	
	if (self.file_path.empty() == false):
		self.set_graphics(self.file_path)

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
	set_graphics(icon.get_file())
	
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

func set_graphics(file_path):
	if (file_path.find(wyrmgus.get_user_directory()) == -1):
		if (file_path.find("dlcs/") != -1 or file_path.find("modules/") != -1):
			file_path = "res://" + file_path
		else:
			file_path = "res://graphics/" + file_path
		self.icon_node.texture = load(file_path)
	else:
		#for images that don't have import files, we need to do it a bit differently
		var image = Image.new()
		image.load(file_path)
		var texture = ImageTexture.new()
		texture.create_from_image(image)
		self.icon_node.texture = texture
	
func set_player_color(player_color):
	self.icon_node.set_player_color(player_color)

func set_tooltip(tooltip):
	self.hint_tooltip = tooltip
	self.icon_node.hint_tooltip = tooltip
	
func set_icon_transparency(transparency):
	self.icon_node.modulate.a = transparency
