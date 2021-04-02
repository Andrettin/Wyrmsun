import QtQuick 2.12
import QtQuick.Controls 2.12

ScrollBar {
	property var target: parent

	policy: ((vertical && target.contentHeight > target.height) || (horizontal && target.contentWidth > target.width)) ? ScrollBar.AlwaysOn : ScrollBar.AlwaysOff
}
