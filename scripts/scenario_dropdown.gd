extends "res://scripts/dropdown.gd"

var campaigns = []

func _ready():
	var potential_campaigns = wyrmgus.get_campaigns()
	for campaign in potential_campaigns:
		if (!campaign.is_available()):
			continue
		
		self.campaigns.push_back(campaign)
	
	for campaign in self.campaigns:
		var campaign_name = campaign.get_name()
		self.add_item(campaign_name)
	
	self.item_selected_changed(0)

func item_selected_changed(var id):
	var selected_campaign = self.campaigns[id]
	var selected_campaign_ident = selected_campaign.get_ident()
	wyrmgus.set_current_campaign(selected_campaign_ident)
	