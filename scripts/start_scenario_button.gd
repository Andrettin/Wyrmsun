extends "res://scripts/button.gd"

func _ready():
	._ready()
	self.connect("pressed", self, "start_scenario")

func start_scenario():
	var command = "RunningScenario = true"
	command += "\nGetMapInfo(\"scripts/map_templates/campaign.smp\")"
	command += "\nGameSettings.NoRandomness = wyr.preferences.NoRandomness"
	command += "\nGameSettings.NoTimeOfDay = wyr.preferences.NoTimeOfDay"
	command += "\nGameSettings.Difficulty = wyr.preferences.Difficulty"
	command += "\nRunMap(\"scripts/map_templates/campaign.smp\")"
	
	wyrmgus.lua_command(command)
	
	get_tree().change_scene("res://scenes/scenario.tscn")
