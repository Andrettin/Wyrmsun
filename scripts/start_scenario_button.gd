extends "res://scripts/button.gd"

func _pressed():
	var command = "RunningScenario = true"
	command += "\nGetMapInfo(\"scripts/map_templates/campaign.smp\")"
	command += "\nGameSettings.NoRandomness = wyr.preferences.NoRandomness"
	command += "\nGameSettings.NoTimeOfDay = wyr.preferences.NoTimeOfDay"
	command += "\nGameSettings.Difficulty = wyr.preferences.Difficulty"
	command += "\ncurrent_menu:stop()"
	command += "\nRunMap(\"scripts/map_templates/campaign.smp\")"
	
	wyrmgus.lua_command(command)
	
	get_tree().change_scene("res://scenes/scenario.tscn")
	#changing the scene will remove this button's audio player (resulting in the sound not being played), so we need to make the global audio player play it
	audio_player.play_sound_file("res://sounds/interface/click.wav")
