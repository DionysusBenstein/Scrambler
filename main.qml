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

ApplicationWindow {
    id: mainWindow
    visible: true
    //width: 640
    //height: 480
    width: 360
    height: 640
    title: qsTr("Scrambler v0.1")

    readonly property int dpi: Screen.pixelDensity * 25.4

    function dp(x) {
        return (dpi < 120) ? x : x * (dpi/160)
    }

    //AppBar
    ToolBar {
        id: appBar
        height: dp(56)
        spacing: dp(25)
        font.family: "Roboto"
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        antialiasing: true

        Rectangle {
            id: appBarRect
            anchors.fill: parent
            color: "#4285f4"

            Text {
                id: headerText
                text: qsTr("Шифр Цезаря")
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
            clip: true

            MenuBackIcon {
                id: menuBackIcon
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.margins: dp(17)
            }

            ToolButton {

                anchors.centerIn: parent
                scale: Qt.platform.os == "android" ? dp(3.1) : dp(1.18)
                onClicked: nav.toggle()
            }
        }
    }

    //Loader для смены Фрагментов
    Loader {
        id: loader
        anchors.top: appBar.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        source: "Caesar.qml"

        //Функция для смены содержимого Loader
        function loadFragment(index) {
            switch(index) {
            case 0:
                loader.source = "Caesar.qml"
                appBarRect.color = "#4285f4"
                headerText.text = "Шифр Цезаря"
                break;
            case 1:
                loader.source = "Vernam.qml"
                appBarRect.color = "#e91e63"
                headerText.text = "Шифр Вернама"
                break;
            case 2:
                loader.source = "Vigenere.qml"
                appBarRect.color = "#f44336"
                headerText.text = "Шифр Виженера"
                break;
            case 3:
                loader.source = "Gronsfeld.qml"
                appBarRect.color = "#673ab7"
                headerText.text = "Шифр Гронсфельда"
                break;
            case 4:
                loader.source = "Enigma.qml"
                appBarRect.color = "#9c27b0"
                headerText.text = "Алгоритм Энигмы"
                break;
            case 5:
                loader.source = "Settings.qml"
                headerText.text = "Настройки"
                appBarRect.color = "#424242"
                break;
            case 6:
                loader.source = "About.qml"
                appBarRect.color = "#4c00d5"
                headerText.text = "О программе"
                break;
            case 7:
                close()
                break;
            default:
                loader.source = "Caesar.qml"
                appBarRect.color = "#4285f4"
                headerText.text = "Шифр Цезаря"
                break;
            }
        }
    }

    //Модель данных для списка с пунктами меню
    ListModel {
        id: navModel

        ListElement {fragment: qsTr("Шифр Цезаря")}
        ListElement {fragment: qsTr("Шифр Вернама")}
        ListElement {fragment: qsTr("Шифр Виженера")}
        ListElement {fragment: qsTr("Шифр Гронсфельда")}
        ListElement {fragment: qsTr("Алгоритм Энигмы")}
        ListElement {fragment: qsTr("Настройки")}
        ListElement {fragment: qsTr("О программе")}
        ListElement {fragment: qsTr("Выход")}
    }

    NavigationDrawer {
        id: nav

        Rectangle {
            anchors.fill: parent
            color: "white"

            Item {
                id: swipeArea
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                width: dp(1)

                //Визуализация области свайпа
                //Rectangle {
                //    anchors.fill: parent
                //    color: "#ff4181"
                //}
            }

            Item {
                anchors.top: navTop.bottom
                anchors.left: parent.left
                anchors.right: swipeArea.left
                anchors.bottom: parent.bottom

                //Список с пунктами меню
                ListView {
                    id: lView
                    anchors.fill: parent

                    delegate: ItemDelegate {
                        id: itemDelegate
                        height: dp(48)
                        anchors.left: parent.left
                        anchors.right: parent.right

                        Text {
                            text: fragment
                            font.family: "Roboto"
                            anchors.fill: parent
                            anchors.left: itemIcon.right
                            anchors.leftMargin: dp(72)
                            font.pixelSize: dp(14)

                            renderType: Text.NativeRendering
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                        }

                        Rectangle {
                            id: itemIcon
                            width: dp(18)
                            height: dp(18)
                            color: "#4285f4"
                            anchors.left: parent.left
                            anchors.leftMargin: dp(16)
                            anchors.verticalCenter: parent.verticalCenter
                            radius: dp(9)
                        }

                        //По нажатию на пункт меню заменяем компонент в Loader
                        onClicked: {
                            loader.loadFragment(index)
                            nav.hide()
                        }
                    }
                    model: navModel
                }
            }

            Rectangle {
                id: navTop
                color: "#4285f4"
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                height: dp(148)

                Image {
                    id: drawerTopBackground
                    source: "images/DrawerBackground.png"
                    anchors.fill: parent
                }
            }
        }
    }
}

