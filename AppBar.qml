/*******************************************************************/

/* Original File Name: AppBar.qml                                  */

/* Date: 14-07-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Реализация верхней панели приложения.              */

/*******************************************************************/

import QtQuick 2.11
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.3

Rectangle {
    id: appBar
    height: 56

    Rectangle {
        id: appBarRect
        anchors.fill: parent

        Text {
            id: headerText
            text: qsTr("Шифр Цезаря")
            color: "white"
            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
                margins: 72
            }

            font {
                family: robotoMediumFont.name
                pointSize: 15
            }
        }
    }

    Item {
        id: menuItem
        width: 56
        height: 56
        anchors {
            top: parent.top
            left: parent.left
        }

        clip: true

        MenuBackIcon {
            id: menuBackIcon
            anchors {
                top: parent.top
                left: parent.left
                margins: 17
            }
            //anchors.centerIn: parent
        }

        ToolButton {
            anchors.centerIn: parent
            scale: 3.1
            onClicked: nav.open()
        }
    }
}
