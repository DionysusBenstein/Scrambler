/*******************************************************************/

/* Original File Name: Caesar.qml                                  */

/* Date: 03-05-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Пользовательский интерфейс шифра Цезаря.           */

/*******************************************************************/

import QtQuick 2.10
import QtQuick.Window 2.3
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.3

import com.benstein.caesar 1.0
import com.benstein.clipboard 1.0

Item {
    id: caesar
    anchors.fill: parent
    Material.accent: primaryColor

    property color lightFontColor: "#9a9a9a"
    property color darkFontColor: "#404040"
    property color caesarPrimaryColor: "#4285f4"
    property color caesarLightColor: "#80b4ff"
    property color caesarDarkColor: "#0059c1"

    FontLoader { id: robotoLightFont; source: "fonts/Roboto-Light.ttf"       }
    FontLoader { id: robotoMediumFont; source: "fonts/Roboto-Medium.ttf"     }
    FontLoader { id: robotoRegularFont; source: "fonts/Roboto-Regular_0.ttf" }
    FontLoader { id: robotoThinFont; source: "fonts/Roboto-Thin_0.ttf"       }

    Caesar { id: caesarBackEnd }
    Clipboard { id: clipboard }

    TextField {
        id: textField
        placeholderText: "Введите текст..."
        renderType: Text.QtRendering
        anchors {
            right: parent.right
            left: parent.left
            top: parent.top
            rightMargin: 25
            leftMargin: 25
            topMargin: 49
        }
    }

    RadioButton {
        id: encryptRadioButton
        text: qsTr(" Зашифровать")
        checked: true
        anchors {
            left: parent.left
            top: textField.bottom
            leftMargin: 13
            topMargin: 1
        }
    }

    RadioButton {
        id: decryptRadioButton
        text: qsTr(" Расшифровать")
        anchors {
            left: parent.left
            top: encryptRadioButton.bottom
            leftMargin: 13
            topMargin: -4
        }
    }

    SpinBox {
        id: spinBox
        anchors.bottom: pane.top
        anchors.bottomMargin: 15
        anchors.right: parent.right
        anchors.rightMargin: 4
        editable: true
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
            color: darkFontColor
            text: qsTr("Шифр")
            font.pointSize: 15
            font.family: robotoMediumFont.name
            anchors.top: parent.top
            anchors.topMargin: 7
            anchors.left: parent.left
            anchors.leftMargin: 12
        }

        Label {
            id: outoutLabel
            x: 12
            width: 244
            height: 146
            color: lightFontColor
            text: {
                if (encryptRadioButton.checked) {
                    caesarBackEnd.encrypt(textField.text, spinBox.value);
                } else if (decryptRadioButton.checked) {
                    caesarBackEnd.decrypt(textField.text, spinBox.value)
                }
            }
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
        Material.foreground: caesarPrimaryColor
        onClicked: clipboard.copy(outoutLabel.text)
    }
}
