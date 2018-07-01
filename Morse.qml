/*******************************************************************/

/* Original File Name: Morse.qml                                   */

/* Date: 03-06-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Пользовательский интерфейс шифра Морзе.            */

/*******************************************************************/

import QtQuick 2.10
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.3

import com.benstein.morse 1.0
import com.benstein.clipboard 1.0

Item {
    anchors.fill: parent
    Material.accent: primaryColor

    property color lightFontColor: "#9a9a9a"
    property color darkFontColor: "#404040"
    property color primaryColor: "#3f51b5"
    property color lightColor: "#757de8"
    property color darkColor: "#002984"

    FontLoader { id: robotoLightFont; source: "fonts/Roboto-Light.ttf"       }
    FontLoader { id: robotoMediumFont; source: "fonts/Roboto-Medium.ttf"     }
    FontLoader { id: robotoRegularFont; source: "fonts/Roboto-Regular_0.ttf" }
    FontLoader { id: robotoThinFont; source: "fonts/Roboto-Thin_0.ttf"       }

    Morse { id: morse }
    Clipboard { id: clipboard }

    TextField {
        id: textField
        placeholderText: "Введите текст..."
        anchors {
            right: parent.right
            left: parent.left
            top: parent.top
            rightMargin: 25
            leftMargin: 25
            topMargin: 49
        }

        renderType: Text.QtRendering
    }

    Pane {
        id: pane
        width: 280
        height: 248
        font.pointSize: 20
        anchors {
            bottom: parent.bottom
            bottomMargin: 36
            horizontalCenter: parent.horizontalCenter
        }

        Material.elevation: 30

        Label {
            id: label
            color: darkFontColor
            text: qsTr("Шифр")
            font {
                pointSize: 15
                family: robotoMediumFont.name
            }

            anchors {
                top: parent.top
                left: parent.left
                topMargin: 7
                leftMargin: 12
            }
        }

        Label {
            id: outputLabel
            x: 12
            width: 244
            height: 146
            color: lightFontColor
            text: morse.isMorse(textField.text) ? morse.decrypt(textField.text) : morse.encrypt(textField.text)
            fontSizeMode: Text.Fit
            antialiasing: true
            smooth: true
            font {
                pixelSize: 30
                pointSize: 12
            }

            anchors {
                top: label.bottom
                topMargin: 17
            }
        }
    }

    Button {
        id: copyButton
        x: 220
        y: 9
        text: qsTr("Скопировать")
        anchors {
            bottom: pane.bottom
            right: pane.right
            bottomMargin: 1
            rightMargin: 14
            topMargin: -53
        }

        flat: true
        Material.foreground: primaryColor
        onClicked: clipboard.copy(outputLabel.text)
    }
}


