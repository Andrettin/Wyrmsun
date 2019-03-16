extends Control

func place_icon_buttons(icon_buttons):
	var menu_area = self.find_node("menu_area")
	
	var item_x = 0
	var item_y = 1
	for icon_button in icon_buttons:
		icon_button.rect_position.x = 23 + 4 + (54 * item_x)
		icon_button.rect_position.y = 10 + 4 + (36 * 1.5) + (46 * item_y)
		
		item_x += 1
		
		if (item_x > 10):
			item_x = 0
			item_y += 1
