/*******************************************************************/

/* Original File Name: NavigationDrawer.qml                        */

/* Date: 01-05-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Основное окно программы.                           */

/*******************************************************************/

import QtQuick 2.10
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.3

ApplicationWindow {
    id: mainWindow
    visible: true

    minimumWidth:  360
    minimumHeight: 568

    FontLoader { id: robotoLightFont; source: "fonts/Roboto-Light.ttf" }
    FontLoader { id: robotoMediumFont; source: "fonts/Roboto-Medium.ttf" }
    FontLoader { id: robotoRegularFont; source: "fonts/Roboto-Regular_0.ttf" }
    FontLoader { id: robotoThinFont; source: "fonts/Roboto-Thin_0.ttf" }

    title: qsTr("Scrambler v0.5.8-beta1")

    //AppBar
    ToolBar {
        id: appBar
        height: 56
        spacing: 25
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
                font.family: robotoMediumFont.name
                font.pointSize: 15
                color: "white"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.margins: 72
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
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.margins: 17
            }

            ToolButton {
                anchors.centerIn: parent
                scale: 3.1
                onClicked: nav.toggle()
            }
        }

        //        Item {
        //            id: moreItem
        //            width: 56
        //            height: 56
        //            anchors.top: parent.top
        //            anchors.right: parent.right
        //            clip: true

        //            MoreIcon {
        //                id: moreIcon
        //                anchors.top: parent.top
        //                anchors.left: parent.left
        //                anchors.margins: 17
        //            }

        //            ToolButton {
        //                anchors.centerIn: parent
        //                scale: 3.1
        //            }
        //        }
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
                //                case 1:
                //                    loader.source = "Vernam.qml"
                //                    appBarRect.color = "#e91e63"
                //                    headerText.text = "Шифр Вернама"
                //                    break;
                //                case 2:
                //                    loader.source = "Vigenere.qml"
                //                    appBarRect.color = "#f44336"
                //                    headerText.text = "Шифр Виженера"
                //                    break;
                //                case 3:
                //                    loader.source = "Gronsfeld.qml"
                //                    appBarRect.color = "#673ab7"
                //                    headerText.text = "Шифр Гронсфельда"
                //                    break;
            case 1:
                loader.source = "Morse.qml"
                appBarRect.color = "#3f51b5"
                headerText.text = "Азбука Морзе"
                break;
                //                case 5:
                //                    loader.source = "Enigma.qml"
                //                    appBarRect.color = "#9c27b0"
                //                    headerText.text = "Алгоритм Энигмы"
                //                    break;
                //                case 6:
                //                    loader.source = "Settings.qml"
                //                    headerText.text = "Настройки"
                //                    appBarRect.color = "#424242"
                //                    break;
            case 2:
                loader.source = "About.qml"
                appBarRect.color = "#ff9269"
                headerText.text = "О программе"
                break;
            case 3:
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
        //ListElement {fragment: qsTr("Шифр Вернама")}
        //ListElement {fragment: qsTr("Шифр Виженера")}
        //ListElement {fragment: qsTr("Шифр Гронсфельда")}
        ListElement {fragment: qsTr("Азбука Морзе")}
        //ListElement {fragment: qsTr("Алгоритм Энигмы")}
        //ListElement {fragment: qsTr("Настройки")}
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
                width: 1

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
                        height: 48
                        anchors.left: parent.left
                        anchors.right: parent.right

                        Text {
                            text: fragment
                            font.family: robotoRegularFont.name
                            anchors.fill: parent
                            anchors.left: itemIcon.right
                            anchors.leftMargin: 72
                            font.pixelSize: 14

                            renderType: Text.NativeRendering
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                        }

                        Rectangle {
                            id: itemIcon
                            width: 18
                            height: 18
                            color: "#4285f4"
                            anchors.left: parent.left
                            anchors.leftMargin: 16
                            anchors.verticalCenter: parent.verticalCenter
                            radius: 9
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
                height: 148

                Image {
                    id: drawerTopBackground
                    source: "images/DrawerBackground.png"
                    anchors.fill: parent
                }
            }
        }
    }
}
