/*******************************************************************/

/* Original File Name: NavigationDrawer.qml                        */

/* Date: 01-05-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Реализация основного окна программы                */

/*******************************************************************/

import QtQuick 2.10
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.3

//   Colors
//Main: #4285f4
//Dark: #0059c1
//Light: #80b4ff

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Scrambler v0.1")

    readonly property int dpi: Screen.pixelDensity * 25.4

    function dp(x) {
        return (dpi < 120) ? x : x*(dpi/160)
    }

    ToolBar {
        id: toolBar
        height: dp(56)
        spacing: dp(25)
        font.family: "Roboto"
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        antialiasing: true

        Rectangle {
            anchors.fill: parent
            color: "#4285f4"

            Text {
                text: qsTr("Scrambler")
                font.family: "Roboto Medium"
                font.pointSize: dp(15)
                color: "white"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.margins: dp(72)
            }
        }

        Item {
            id: menuItem
            width: dp(56)
            height: dp(56)
            anchors.top: parent
            anchors.left: parent.left

            MenuBackIcon {
                id: menuBackIcon
                anchors.centerIn: parent
            }

            ToolButton {
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.margins: 3.1
                onClicked: nav.toggle()
            }
        }
    }

    NavigationDrawer {
        id: nav

        Rectangle {
            anchors.fill: parent
            color: "white"

            Rectangle {
                color: "#4285f4"
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                height: dp(148)
            }
        }
    }
}
