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

    //    Text {
    //        id: testText
    //        text: "Тут <br> скоро <br> будет <br> шифр <br> Цезаря..."
    //        color: "#191919"
    //        anchors.top: parent.top
    //        anchors.left: parent.left
    //        anchors.margins: dp(20)
    //        font.pixelSize: dp(30)
    //        font.family: "Roboto"

    //        renderType: Text.NativeRendering
    //    }

    //    Rectangle {
    //        id: found
    //        color: "#80b4ff"
    //        width: 150
    //        height: width
    //        radius: width / 2
    //        anchors.right: parent.right
    //        anchors.top: parent.top
    //        anchors.margins: dp(30)

    //        Rectangle {
    //            id: child
    //            color: "#4285f4"
    //            width: 100
    //            height: width
    //            radius: width / 2
    //            anchors.centerIn: parent

    //            Rectangle {
    //                id: dchild
    //                color: "#0059c1"
    //                width: 50
    //                height: width
    //                radius: width / 2
    //                anchors.centerIn: parent
    //            }
    //        }
    //    }

    //    Item {
    //        width: 150
    //        height: width
    //        anchors.centerIn: found

    //        Rectangle {
    //            id: moon
    //            color: "#4285f4"
    //            width: 10
    //            height: width
    //            smooth: true
    //            antialiasing: true
    //            radius: width / 2
    //        }

    //        RotationAnimation on rotation {
    //            from: 0
    //            to: 360
    //            duration: 6000
    //            running: true
    //            loops: Animation.Infinite
    //        }
    //    }

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
        height: 220
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
            font.family: "Roboto Medium"
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
