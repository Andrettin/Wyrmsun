import QtQuick 2.12
import QtQuick.Controls 2.12

ResourceIconBase {
	id: resource_icon
	icon: resource ? resource.icon.identifier : null
	tooltip: format_text(resource.name + "\n" + small_text(
		(resource.luxury ? "\nLuxury Resource" : "")
		+ ((resource_stored > 0 || resource.luxury === false) ? "\nStored: " + number_string(resource_stored) : "")
		+ (conversion_rates_string.length > 0 ? "\n" : "") + conversion_rates_string
		+ (processing_bonus > 0 ? ("\nProcessing Bonus: +" + processing_bonus + "%") : "")
		+ (children_processing_bonus_string.length > 0 ? "\n" : "") + children_processing_bonus_string
		+ (resource !== wyrmgus.defines.wealth_resource ? "\nSell Price: " + number_string(effective_sell_price) : "")
		+ (resource !== wyrmgus.defines.wealth_resource && resource.luxury === false ? "\nBuy Price: " + number_string(effective_buy_price) : "")
		+ (resource.luxury ? "\nDemand: " + number_string(effective_demand) : "")
	))
	
	property var resource: null
	
	property int resource_stored: wyrmgus.this_player.get_resource_sync(resource)
	property int processing_bonus: wyrmgus.this_player.get_processing_bonus_sync(resource)
	readonly property string conversion_rates_string: resource.conversion_rates_string
	property string children_processing_bonus_string: wyrmgus.this_player.get_children_processing_bonus_string_sync(resource)
	property int effective_sell_price: wyrmgus.this_player.get_effective_resource_sell_price_sync(resource)
	property int effective_buy_price: wyrmgus.this_player.get_effective_resource_buy_price_sync(resource)
	property int effective_demand: wyrmgus.this_player.get_effective_resource_demand_sync(resource)
	
	Connections {
		target: wyrmgus.this_player
		
		function onResource_stored_changed(resource_index, amount) {
			if (resource_index == resource.index) {
				resource_icon.resource_stored = amount
			}
		}
		
		function onResource_processing_bonus_changed(resource_index, bonus) {
			if (resource_index == resource.index) {
				resource_icon.processing_bonus = bonus
			}
		}
		
		function onEffective_sell_price_changed(resource_index, price) {
			if (resource_index == resource.index) {
				resource_icon.effective_sell_price = price
			}
		}
		
		function onEffective_buy_price_changed(resource_index, price) {
			if (resource_index == resource.index) {
				resource_icon.effective_buy_price = price
			}
		}
		
		function onTrade_cost_changed() {
			resource_icon.effective_sell_price = wyrmgus.this_player.get_effective_resource_sell_price_sync(resource)
			resource_icon.effective_buy_price = wyrmgus.this_player.get_effective_resource_buy_price_sync(resource)
		}
		
		function onEffective_resource_demand_changed(resource_index, demand) {
			if (resource_index == resource.index) {
				resource_icon.effective_demand = demand
			}
		}
	}
}
