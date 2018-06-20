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



//   Colors
//Main:  #4285f4
//Dark:  #0059c1
//Light: #80b4ff

Item {
    id: caesar
    anchors.fill: parent

    Material.accent: "#4285f4"

    FontLoader { id: robotoLightFont; source: "fonts/Roboto-Light.ttf" }
    FontLoader { id: robotoMediumFont; source: "fonts/Roboto-Medium.ttf" }
    FontLoader { id: robotoRegularFont; source: "fonts/Roboto-Regular_0.ttf" }
    FontLoader { id: robotoThinFont; source: "fonts/Roboto-Thin_0.ttf" }

    Caesar { id: caesarBackEnd }
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

    RadioButton {
        id: encryptRadioButton
        text: qsTr(" Зашифровать")
        checked: true
        checkable: true
        anchors.left: parent.left
        anchors.leftMargin: 13
        anchors.top: textField.bottom
        anchors.topMargin: 1
    }

    RadioButton {
        id: decryptRadioButton
        text: qsTr(" Расшифровать")
        checked: false
        checkable: true
        anchors.left: parent.left
        anchors.leftMargin: 13
        anchors.top: encryptRadioButton.bottom
        anchors.topMargin: -4
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
            id: outoutLabel
            x: 12
            width: 244
            height: 146
            color: "#9a9a9a"
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
        Material.foreground: "#4285f4"
        onClicked: clipboard.copy(outoutLabel.text)
    }
}
