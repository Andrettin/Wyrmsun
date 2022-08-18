import QtQuick 2.12
import QtQuick.Controls 2.12

MessageListViewBase {
	model: wyrmgus.objective_strings.concat(wyrmgus.this_player.objective_strings)
}
