/*******************************************************************/

/* Original File Name: About.qml                                   */

/* Date: 08-05-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Страница с информацией о программе и разработчиках.*/

/*******************************************************************/

import QtQuick 2.10
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.3

//   Colors
//Main:  #4c00d5
//Dark:  #0000a2
//Light: #8841ff

Item {
    anchors.fill: parent

    Material.accent: "#4285f4"

//    Text {
//        id: testText
//        text: "Тут <br> скоро <br> будет <br> информация <br> О программе..."
//        color: "#191919"
//        anchors.top: parent.top
//        anchors.left: parent.left
//        anchors.leftMargin: 20
//        anchors.topMargin: 70
//        font.pixelSize: 30
//        font.family: "Roboto"

//        renderType: Text.NativeRendering
//    }

//    Rectangle {
//        id: found
//        color: "#8841ff"
//        width: 150
//        height: width
//        radius: width / 2
//        anchors.right: parent.right
//        anchors.top: parent.top
//        anchors.margins: 30

//        Rectangle {
//            id: child
//            color: "#4c00d5"
//            width: 100
//            height: width
//            radius: width / 2
//            anchors.centerIn: parent

//            Rectangle {
//                id: dchild
//                color: "#0000a2"
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
//            color: "#4c00d5"
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

    Image {
        id: appIcon
        source: "images/icons/Scrambler.svg"
        //anchors.horizontalCenter: parent.horizontalCenter
        //anchors.top: parent.top
        scale: 0.3

//        Rectangle {
//            color: "red"
//            anchors.fill: parent
//        }

    }
}


