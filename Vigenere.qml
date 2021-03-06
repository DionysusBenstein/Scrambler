/*******************************************************************/

/* Original File Name: Vigenere.qml                                */

/* Date: 08-05-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Пользовательский интерфейс шифра Виженера.         */

/*******************************************************************/

import QtQuick 2.10
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.3

//   Colors
//Main:  #f44336
//Dark:  #ba000d
//Light: #ff7961

Item {
    anchors.fill: parent

    Material.accent: "#e91e63"

    Text {
        id: testText
        text: "Тут <br> скоро <br> будет <br> шифр <br> Виженера..."
        color: "black"
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins: 20
        font.pixelSize: 30
        font.family: "Roboto"

        renderType: Text.NativeRendering
    }

    Rectangle {
        id: found
        color: "#ff7961"
        width: 150
        height: width
        radius: width / 2
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: 30

        Rectangle {
            id: child
            color: "#f44336"
            width: 100
            height: width
            radius: width / 2
            anchors.centerIn: parent

            Rectangle {
                id: dchild
                color: "#ba000d"
                width: 50
                height: width
                radius: width / 2
                anchors.centerIn: parent
            }
        }
    }

    Item {
        width: 150
        height: width
        anchors.centerIn: found

        Rectangle {
            id: moon
            color: "#f44336"
            width: 10
            height: width
            smooth: true
            antialiasing: true
            radius: width / 2
        }

        RotationAnimation on rotation {
            from: 0
            to: 360
            duration: 6000
            running: true
            loops: Animation.Infinite
        }
    }
}


