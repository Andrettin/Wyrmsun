extends "res://scripts/dropdown.gd"

var campaigns = []

func _ready():
	self.campaigns = wyrmgus.wyrmgus.get_campaigns()
	
	for campaign in campaigns:
		var campaign_name = campaign.get_name()
		self.add_item(campaign_name)
