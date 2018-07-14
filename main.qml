/*******************************************************************/

/* Original File Name: main.qml                                    */

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
    title: qsTr("Scrambler v0.6.1")

    property color lightFontColor: "#9a9a9a"
    property color darkFontColor: "#404040"

    FontLoader { id: robotoThinFont; source: "fonts/Roboto-Thin_0.ttf"       }
    FontLoader { id: robotoLightFont; source: "fonts/Roboto-Light.ttf"       }
    FontLoader { id: robotoMediumFont; source: "fonts/Roboto-Medium.ttf"     }
    FontLoader { id: robotoRegularFont; source: "fonts/Roboto-Regular_0.ttf" }

    AppBar { id: appBar }

    Loader {
        id: loader
        source: "Caesar.qml"
        anchors {
            top: appBar.bottom
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }

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
                loader.source = "Morse.qml"
                appBarRect.color = "#3f51b5"
                headerText.text = "Азбука Морзе"
                break;
            case 5:
                loader.source = "Enigma.qml"
                appBarRect.color = "#9c27b0"
                headerText.text = "Алгоритм Энигмы"
                break;
            case 6:
                loader.source = "Settings.qml"
                headerText.text = "Настройки"
                appBarRect.color = "#424242"
                break;
            case 7:
                loader.source = "About.qml"
                appBarRect.color = "#ff9269"
                headerText.text = "О программе"
                break;
            case 8:
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

    ListModel {
        id: navModel

        ListElement { name: qsTr("Шифр Цезаря"); iconColor: "#4285f4"      }
        ListElement { name: qsTr("Шифр Вернама"); iconColor: "#e91e63"     }
        ListElement { name: qsTr("Шифр Виженера"); iconColor: "#f44336"    }
        ListElement { name: qsTr("Шифр Гронсфельда"); iconColor: "#673ab7" }
        ListElement { name: qsTr("Азбука Морзе"); iconColor: "#3f51b5"     }
        ListElement { name: qsTr("Алгоритм Энигмы"); iconColor: "#9c27b0"  }
        ListElement { name: qsTr("Настройки"); iconColor: "#424242"        }
        ListElement { name: qsTr("О программе"); iconColor: "#ff9269"      }
        ListElement { name: qsTr("Выход"); iconColor: "#e81123"            }
    }

    Drawer {
        id: nav
        width: (mainWindow.width / 100) * 78
        height: mainWindow.height

        Rectangle {
            anchors.fill: parent
            color: "white"

            Item {
                id: swipeArea
                width: 1
                anchors {
                    right: parent.right
                    top: parent.top
                    bottom: parent.bottom
                }
            }

            Item {
                anchors {
                    top: navTop.bottom
                    left: parent.left
                    right: swipeArea.left
                    bottom: parent.bottom
                }

                ListView {
                    id: lView
                    anchors.fill: parent

                    delegate: ItemDelegate {
                        id: itemDelegate
                        height: 48
                        anchors {
                            left: parent.left
                            right: parent.right
                        }

                        Text {
                            text: name
                            anchors {
                                fill: parent
                                left: itemIcon.right
                                leftMargin: 72
                            }

                            font.family: robotoRegularFont.name
                            font.pixelSize: 14

                            renderType: Text.NativeRendering
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                        }

                        Rectangle {
                            id: itemIcon
                            width: 18
                            height: 18
                            color: iconColor
                            radius: 9
                            anchors {
                                verticalCenter: parent.verticalCenter
                                left: parent.left
                                leftMargin: 16
                            }
                        }

                        onClicked: {
                            loader.loadFragment(index)
                            nav.close()
                        }
                    }
                    model: navModel
                }
            }

            Rectangle {
                id: navTop
                height: 148
                anchors {
                    top: parent.top
                    left: parent.left
                    right: parent.right
                }

                Image {
                    id: drawerTopBackground
                    source: "images/DrawerBackground.png"
                    anchors.fill: parent
                }
            }
        }
    }
}
