extends TextureRect

var source_primary_player_color
var target_primary_player_color
var source_secondary_player_color
var target_secondary_player_color
var icon

func _ready():
	self.source_primary_player_color = wyrmgus.get_player_color("violet")
	
func set_icon(icon):
	var palette_image = icon.get_image()
	self.texture = palette_image.get_texture()
	
	#if there is more than one icon in the image, set only the rectangle to which the icon belongs as its image
	if (palette_image.get_frame_size() != self.texture.get_size()):
		var rect_pos = Vector2(0, 0)
		rect_pos.x = int((icon.get_frame() % int(self.texture.get_width() / icon.get_image().get_frame_size().x)) * icon.get_image().get_frame_size().x)
		rect_pos.y = int(int(icon.get_frame() / int(self.texture.get_width() / icon.get_image().get_frame_size().x)) * icon.get_image().get_frame_size().y)
		var rect = Rect2(rect_pos, palette_image.get_frame_size())
		var image = self.texture.get_data().get_rect(rect)
		var image_texture = ImageTexture.new()
		image_texture.create_from_image(image)
		self.texture = image_texture
		
	if (palette_image.get_source_primary_player_color() != null):
		self.source_primary_player_color = palette_image.get_source_primary_player_color()
	self.source_secondary_player_color = palette_image.get_source_secondary_player_color()

func set_primary_player_color(player_color):
	self.target_primary_player_color = player_color
	if (self.target_primary_player_color and self.source_primary_player_color):
		self.apply_primary_player_color()

func set_secondary_player_color(player_color):
	self.target_secondary_player_color = player_color
	if (self.target_secondary_player_color and self.source_secondary_player_color):
		self.apply_secondary_player_color()

func apply_primary_player_color():
	var material = self.get_material()
	var source_colors = self.source_primary_player_color.get_colors()
	var target_colors = self.target_primary_player_color.get_colors()
	if (source_colors.size() != target_colors.size()):
		printerr("The quantity of color shades differs from source player color \"%s\" to target player color \"%s\"." % [self.source_primary_player_color.get_ident(), self.target_primary_player_color.get_ident()])
	var color_count = min(source_colors.size(), target_colors.size())
	
	for i in range(0, color_count):
		material.set_shader_param("source_primary_player_color_" + str(i + 1), source_colors[i])
		material.set_shader_param("target_primary_player_color_" + str(i + 1), target_colors[i])

func apply_secondary_player_color():
	var material = self.get_material()
	var source_colors = self.source_secondary_player_color.get_colors()
	var target_colors = self.target_secondary_player_color.get_colors()
	if (source_colors.size() != target_colors.size()):
		printerr("The quantity of color shades differs from source player color \"%s\" to target player color \"%s\"." % [self.source_secondary_player_color.get_ident(), self.target_secondary_player_color.get_ident()])
	var color_count = min(source_colors.size(), target_colors.size())
	
	for i in range(0, color_count):
		material.set_shader_param("source_secondary_player_color_" + str(i + 1), source_colors[i])
		material.set_shader_param("target_secondary_player_color_" + str(i + 1), target_colors[i])
