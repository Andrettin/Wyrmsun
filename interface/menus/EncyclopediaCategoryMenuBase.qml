import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

ButtonMenuBase {
	id: encyclopedia_category_menu
	focus: true //true even if the game is running, so that the encyclopedia can be used in that case
	title: "Encyclopedia: " + category_name
	
	property string category_name: ""
	property string category: ""
}
