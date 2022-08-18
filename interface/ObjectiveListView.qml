import QtQuick 2.12
import QtQuick.Controls 2.12

MessageListViewBase {
	model: wyrmgus.objective_strings.concat(wyrmgus.this_player.objective_strings)
	width: 256 * wyrmgus.scale_factor
	fit_to_content_width: true
}
