extends Sprite

const SHADER = preload("res://shaders/player_color_shader.shader")
const MATERIAL = preload("res://shaders/player_color_shader.tres")

var source_primary_player_color
var target_primary_player_color
var source_secondary_player_color
var target_secondary_player_color
var unit_type

func initialize_material():
	if (self.source_primary_player_color == null):
		self.source_primary_player_color = wyrmgus.get_player_color("violet")
	
	self.material = MATERIAL.duplicate()
	self.material.shader = load("res://shaders/player_color_shader.shader")

func set_unit_type(new_unit_type):
	self.unit_type = new_unit_type
	self.set_offset(Vector2(self.unit_type.get_offset_x(), self.unit_type.get_offset_y()))
	self.set_z_index(self.unit_type.get_draw_level())

func set_image(new_image):
	self.texture = new_image.get_texture()
	self.hframes = new_image.get_texture().get_width() / new_image.get_frame_size().x
	self.vframes = new_image.get_texture().get_height() / new_image.get_frame_size().y
	
	if (new_image.get_source_primary_player_color() != null):
		self.source_primary_player_color = new_image.get_source_primary_player_color()
	self.source_secondary_player_color = new_image.get_source_secondary_player_color()

func set_tile_pos(tile_pos):
	self.position = (tile_pos * wyrmgus.get_pixel_tile_size()) + self.unit_type.get_half_tile_pixel_size()

func set_map_layer(index):
	var map = self.get_parent().get_parent()
	self.get_parent().remove_child(self)
	map.map_layers[index].add_child(self)

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
