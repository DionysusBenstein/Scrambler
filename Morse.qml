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

//   Colors
//Main:  #3f51b5
//Dark:  #002984
//Light: #757de8

Item {
    anchors.fill: parent

    Material.accent: "#3f51b5"

    FontLoader { id: robotoLightFont; source: "fonts/Roboto-Light.ttf" }
    FontLoader { id: robotoMediumFont; source: "fonts/Roboto-Medium.ttf" }
    FontLoader { id: robotoRegularFont; source: "fonts/Roboto-Regular_0.ttf" }
    FontLoader { id: robotoThinFont; source: "fonts/Roboto-Thin_0.ttf" }

    Morse { id: morse }
    Clipboard { id: clipboard }

    TextField {
        id: textField
        placeholderText: "Введите текст..."
        anchors.right: parent.right
        anchors.rightMargin: 25
        anchors.left: parent.left
        anchors.leftMargin: 25
        anchors.top: parent.top
        anchors.topMargin: 49
        renderType: Text.QtRendering
    }

    Pane {
        id: pane
        width: 280
        height: 248
        font.pointSize: 20
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 36
        anchors.horizontalCenter: parent.horizontalCenter
        Material.elevation: 30

        Label {
            id: label
            color: "#404040"
            text: qsTr("Шифр")
            font.pointSize: 15
            font.family: robotoMediumFont.name
            anchors.top: parent.top
            anchors.topMargin: 7
            anchors.left: parent.left
            anchors.leftMargin: 12
        }

        Label {
            id: outputLabel
            x: 12
            width: 244
            height: 146
            color: "#9a9a9a"
            text: {
                morse.isMorse(textField.text) ? morse.decrypt(textField.text) : morse.encrypt(textField.text)
            }

            font.pixelSize: 30;
            antialiasing: true
            smooth: true
            anchors.top: label.bottom
            anchors.topMargin: 17
            font.pointSize: 12
            fontSizeMode: Text.Fit
        }
    }

    Button {
        id: copyButton
        x: 220
        y: 9
        text: qsTr("Скопировать")
        anchors.bottom: pane.bottom
        anchors.bottomMargin: 1
        anchors.rightMargin: 14
        anchors.topMargin: -53
        anchors.right: pane.right
        flat: true
        Material.foreground: "#3f51b5"

        onClicked: clipboard.copy(outputLabel.text)
    }
}


