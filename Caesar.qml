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
    Material.accent: caesarPrimaryColor

    property color caesarPrimaryColor: "#4285f4"
    property color caesarLightColor: "#80b4ff"
    property color caesarDarkColor: "#0059c1"

    Clipboard { id: clipboard     }
    Caesar    { id: caesarBackEnd }

    TextField {
        id: input
        anchors {
            right: parent.right
            left: parent.left
            top: parent.top
            rightMargin: 16
            leftMargin: 16
            topMargin: 49
        }

        selectByMouse: true
        persistentSelection: true
        placeholderText: "Введите текст..."
        renderType: Text.QtRendering
    }

    Column {
        id: radioButtonsColumn
        anchors {
            left: parent.left
            top: input.bottom
            leftMargin: 13
            topMargin: 1
        }

        RadioButton {
            id: encryptRadioButton
            text: qsTr(" Зашифровать")
            checked: true
        }

        RadioButton {
            id: decryptRadioButton
            text: qsTr(" Расшифровать")
        }
    }

    SpinBox {
        id: spinBox
        anchors {
            left: radioButtonsColumn.right
            right: parent.right
            bottom: radioButtonsColumn.bottom
            rightMargin: 16
            leftMargin: 16
        }
        editable: true
    }

    Pane {
        id: pane
        anchors {
            left: parent.left
            right: parent.right
            top: spinBox.bottom
            bottom: parent.bottom
            margins: 24
        }

        Material.elevation: 30

        Text {
            id: outoutLabelTitle
            anchors {
                left: parent.left
                top: parent.top
            }

            color: darkFontColor
            text: qsTr("Шифр")
            font {
                pointSize: 15
                family: robotoMediumFont.name
            }
        }

        Text {
            id: outoutLabel
            anchors {
                left: parent.left
                right: parent.right
                top: outoutLabelTitle.bottom
                bottom: parent.bottom
                margins: 12
            }

            color: lightFontColor
            antialiasing: true
            smooth: true
            font.pointSize: 12
            wrapMode: Text.Wrap

            text: {
                if (encryptRadioButton.checked) {
                    caesarBackEnd.encrypt(input.text, spinBox.value);
                } else if (decryptRadioButton.checked) {
                    caesarBackEnd.decrypt(input.text, spinBox.value)
                }
            }
        }

        Button {
            id: copyButton
            anchors {
                right: parent.right
                bottom: parent.bottom
            }

            text: qsTr("Скопировать")
            flat: true
            Material.foreground: caesarPrimaryColor
            onClicked: clipboard.copy(outoutLabel.text)
        }
    }
}
