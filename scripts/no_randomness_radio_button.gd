extends "res://scripts/radio_button.gd"

func _ready():
	#FIXME: set the checkbox to toggled according to the preferences
	pass

func _toggled(button_pressed):
	._toggled(button_pressed)
	
	var command = "wyr.preferences.NoRandomness = "	
	if (button_pressed):
		command += "true"
	else:
		command += "false"
		
	command += "\nSavePreferences()"
	
	wyrmgus.lua_command(command)
