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
//    width: 640
//    height: 480
    width: 360
    height: 640
    title: qsTr("Scrambler v0.1")

    readonly property int dpi: Screen.pixelDensity * 25.4

    function dp(x) {
        return (dpi < 120) ? x : x*(dpi/160)
    }

    //AppBar
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

    //Loader для смены Фрагментов
    Loader {
        id: loader
        anchors.top: toolBar.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        source: "Caesar.qml"

        // Функция для смены содержимого Loader
        function loadFragment(index) {

            switch(index) {
            case 0:
                loader.source = "Caesar.qml"
                break;
            case 1:
                loader.source = "Vernam.qml"
                break;
            case 2:
                loader.source = "Vigenere.qml"
                break;
            default:
                loader.source = "Caesar.qml"
                break;
            }
        }
    }

    NavigationDrawer {
        id: nav

        Rectangle {
            anchors.fill: parent
            color: "white"

            Rectangle {
                id: navTop
                color: "#4285f4"
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                height: dp(148)
            }

            Rectangle {
                anchors.top: navTop.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom

                // Список с пунктами меню
                ListView {
                    anchors.fill: parent

                    delegate: Item {
                        height: dp(48)
                        anchors.left: parent.left
                        anchors.right: parent.right

                        Rectangle {
                            anchors.fill: parent
                            //color: "whitesmoke"

                            Text {
                                text: fragment
                                font.family: "Roboto"
                                anchors.fill: parent
                                font.pixelSize: dp(14)

                                renderType: Text.NativeRendering
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }

                            Rectangle {
                                width: dp(18)
                                height: dp(18)
                                color: "#4285f4"
                                anchors.left: parent.left
                                anchors.leftMargin: dp(16)
                                anchors.verticalCenter: parent.verticalCenter
                                radius: dp(2)
                            }

                            MouseArea {
                                anchors.fill: parent

                                //По нажатию на пункт меню заменяем компонент в Loader
                                onClicked: {
                                    loader.loadFragment(index)
                                }
                            }
                        }
                    }
                    model: navModel
                }
            }

            //Модель данных для списка с пунктами меню
            ListModel {
                id: navModel

                ListElement {fragment: qsTr("Шифр Цезаря")}
                ListElement {fragment: qsTr("Шифр Вернама")}
                ListElement {fragment: qsTr("Шифр Виженера")}
            }

        }
    }
}

