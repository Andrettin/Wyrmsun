extends Sprite

func set_image(new_image):
	self.texture = new_image.get_texture()
	self.hframes = new_image.get_texture().get_width() / new_image.get_frame_size().x
	self.vframes = new_image.get_texture().get_height() / new_image.get_frame_size().y

func set_tile_pos(tile_pos, half_tile_pixel_size):
	self.position = (tile_pos * wyrmgus.get_pixel_tile_size()) + half_tile_pixel_size
