extends Node2D

const SCROLL_SPEED = 160 #pixels per second

var map_layers = []

func _ready():
	wyrmgus.connect("unit_placed", self, "create_unit_sprite")
	wyrmgus.connect("map_layer_created", self, "create_map_layer", [], CONNECT_DEFERRED)
	wyrmgus.connect("current_map_layer_changed", self, "change_current_map_layer", [], CONNECT_DEFERRED)

func _physics_process(delta):
	var motion = Vector2()
	
	if Input.is_action_pressed("ui_up"):
		motion += Vector2(0, -1)
	if Input.is_action_pressed("ui_down"):
		motion += Vector2(0, 1)
	if Input.is_action_pressed("ui_left"):
		motion += Vector2(-1, 0)
	if Input.is_action_pressed("ui_right"):
		motion += Vector2(1, 0)
	
	motion *= SCROLL_SPEED
	motion *= delta
	
	if Input.is_action_pressed("ui_ctrl"):
		motion *= 15
	
	var camera = self.find_node("camera")
	camera.position += motion

func create_unit_sprite(unit):
	var unit_type = unit.get_type()
	if (unit_type == null):
		printerr("Unit has no type.")
		return
	
	var unit_image = unit.get_image()
	if (unit_image == null):
		printerr("Unit of type \"" + unit_type.get_ident() + "\" has no image.")
		return
	
	var unit_player = unit.get_player()
	
	var unit_sprite = preload("res://scenes/unit.tscn").instance()
	unit_sprite.unit = unit
	
	unit_sprite.call_deferred("set_unit_type", unit_type)
	
	unit_sprite.call_deferred("initialize_material") #initialize the material in the UI thread, otherwise the game logic thread will hang for a while
	
	unit_sprite.call_deferred("set_image", unit_image)
	
	unit_sprite.call_deferred("set_primary_player_color", unit_player.get_primary_color())
	unit_sprite.call_deferred("set_secondary_player_color", unit_player.get_secondary_color())
	
	unit_sprite.call_deferred("set_tile_pos", unit.get_tile_pos())
	unit_sprite.call_deferred("set_pixel_offset", unit.get_pixel_offset())
	
	unit_sprite.call_deferred("set_frame", unit.get_frame())
	unit_sprite.call_deferred("set_flip_h", unit.is_flipped())
	
	unit_sprite.map_layer = unit.get_map_layer()
	var map_layer_index = unit.get_map_layer().get_index()
	map_layers[map_layer_index].call_deferred("add_child", unit_sprite)
	
	unit_sprite.call_deferred("set_selected", unit.is_selected(), unit.get_selection_color())

	#delete the unit node if the unit is removed from the map; node that "removed" here can mean that the unit is e.g. inside a building; it may continue existing, it is just not displayed on the map
	unit.connect("removed", unit_sprite, "remove_unit", [], CONNECT_DEFERRED)
	unit.connect("image_changed", unit_sprite, "set_image", [], CONNECT_DEFERRED)
	unit.connect("tile_pos_changed", unit_sprite, "set_tile_pos", [], CONNECT_DEFERRED)
	unit.connect("map_layer_changed", unit_sprite, "set_map_layer", [], CONNECT_DEFERRED)
	unit.connect("frame_changed", unit_sprite, "set_frame", [], CONNECT_DEFERRED)
	unit.connect("flipped_changed", unit_sprite, "set_flip_h", [], CONNECT_DEFERRED)
	unit.connect("pixel_offset_changed", unit_sprite, "set_pixel_offset", [], CONNECT_DEFERRED)
	unit.connect("selected_changed", unit_sprite, "set_selected", [], CONNECT_DEFERRED)
	unit.connect("selection_color_changed", unit_sprite, "set_selection_color", [], CONNECT_DEFERRED)

	unit_player.connect("primary_color_changed", unit_sprite, "set_primary_player_color", [], CONNECT_DEFERRED)
	unit_player.connect("secondary_color_changed", unit_sprite, "set_secondary_player_color", [], CONNECT_DEFERRED)
	
func create_map_layer(index):
	if (index > 0 and (index - 1) >= map_layers.size()):
		self.create_map_layer(index - 1)
	
	var map_layer = preload("res://scenes/map_layer.tscn").instance()
	map_layer.visible = false
	self.add_child(map_layer)
	map_layers.push_back(map_layer)

func change_current_map_layer(old_index, new_index):
	if (old_index != -1):
		map_layers[old_index].visible = false
	if (new_index != -1):
		map_layers[new_index].visible = true
