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
//Main:  #ff9269
//Dark:  #c8633d
//Light: #ffc398

Item {
    anchors.fill: parent

    Material.accent: "#ff9269"

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

    Rectangle {
        id: background
        anchors.fill: parent
        color: "#ff9269"
    }

    Grid {
        id: topColumn
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        spacing: 10
        rows: 2

        Image {
            id: appIcon
            source: "images/icons/Scrambler.svg"
            width:  200
            height: 200
        }

        Label {
            id: appName

            Text {
                text: qsTr("Scrambler")
                font.family: "Roboto Medium"
                font.pointSize: 16
                color: "#fc744e"
            }
        }

//        Label {
//            id: appNameDescription

//            Text {
//                text: "Версия"
//                font.family: "Roboto Medium"
//                font.pointSize: 16
//                color: "white"
//            }
//        }
    }
}


