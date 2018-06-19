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

//    Text {
//        id: testText
//        text: "Тут <br> скоро <br> будет <br> азбука <br> Морзе..."
//        color: "#191919"
//        anchors.top: parent.top
//        anchors.left: parent.left
//        anchors.margins: 20
//        font.pixelSize: 30
//        font.family: "Roboto"

//        renderType: Text.NativeRendering
//    }

//    Rectangle {
//        id: found
//        color: "#757de8"
//        width: 150
//        height: width
//        radius: width / 2
//        anchors.right: parent.right
//        anchors.top: parent.top
//        anchors.margins: 30

//        Rectangle {
//            id: child
//            color: "#3f51b5"
//            width: 100
//            height: width
//            radius: width / 2
//            anchors.centerIn: parent

//            Rectangle {
//                id: dchild
//                color: "#002984"
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
//            color: "#3f51b5"
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
            font.family: "Roboto Medium"
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

            font.pixelSize: 20;
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


