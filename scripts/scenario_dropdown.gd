extends "res://scripts/dropdown.gd"

func _ready():
	var campaigns = wyrmgus.wyrmgus.get_campaigns()
	for campaign in campaigns:
		self.add_item(campaign.get_name())
