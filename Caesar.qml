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
        editable: true
        anchors {
            bottom: pane.top
            right: parent.right
            bottomMargin: 15
            rightMargin: 4
        }
    }

    Pane {
        id: pane
        width: 280
        height: 248
        Material.elevation: 30
        font.pointSize: 20
        anchors {
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
            bottomMargin: 36
        }

        Label {
            id: label
            color: darkFontColor
            text: qsTr("Шифр")
            anchors {
                top: parent.top
                left: parent.left
                topMargin: 7
                leftMargin: 12
            }

            font {
                pointSize: 15
                family: robotoMediumFont.name
            }
        }

        Label {
            id: outoutLabel
            x: 12
            width: 244
            height: 146
            color: lightFontColor
            antialiasing: true
            smooth: true
            font.pointSize: 12
            fontSizeMode: Text.Fit
            anchors {
                top: label.bottom
                topMargin: 17
            }

            text: {
                if (encryptRadioButton.checked) {
                    caesarBackEnd.encrypt(textField.text, spinBox.value);
                } else if (decryptRadioButton.checked) {
                    caesarBackEnd.decrypt(textField.text, spinBox.value)
                }
            }
        }
    }

    Button {
        id: copyButton
        x: 220
        y: 9
        text: qsTr("Скопировать")
        flat: true
        Material.foreground: caesarPrimaryColor
        onClicked: clipboard.copy(outoutLabel.text)
        anchors {
            bottom: pane.bottom
            right: pane.right
            bottomMargin: 1
            rightMargin: 14
            topMargin: -53
        }
    }
}
