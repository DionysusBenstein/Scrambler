import QtQuick 2.11
import QtQuick.Controls 2.3

//AppBar
ToolBar {
    id: appBar
    height: 56

    Rectangle {
        id: appBarRect
        anchors.fill: parent
        color: "#4285f4"

        Text {
            id: headerText
            text: qsTr("Шифр Цезаря")
            font.family: robotoMediumFont.name
            font.pointSize: 15
            color: "black"
            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
                margins: 72
            }
        }
    }

    Item {
        id: menuItem
        width: 56
        height: 56
        anchors.top: parent.top
        anchors.left: parent.left
        clip: true

        MenuBackIcon {
            id: menuBackIcon
            anchors {
                top: parent.top
                left: parent.left
                margins: 17
            }
        }

        ToolButton {
            anchors.centerIn: parent
            scale: 3.1
            onClicked: nav.toggle()
        }
    }
}
