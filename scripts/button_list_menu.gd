extends Control

func place_buttons(buttons):
	var item_x = 0
	if (buttons.size() > 20):
		item_x = -2
	elif (buttons.size() > 10):
		item_x = -1
	var item_y = -2
	
	for button in buttons:
		button.rect_position.x = 208 + (113 * item_x)
		button.rect_position.y = 104 + (36 * (item_y + 2))
		
		if (item_y > 6):
			item_x += 2
			item_y = -2
		else:
			item_y += 1
