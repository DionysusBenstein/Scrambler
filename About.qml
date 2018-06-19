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

    Image {
        id: appIcon
        source: "images/icons/Scrambler.svg"
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        width:  200
        height: 200

        Label {
            id: appName

            Text {
                text: qsTr("Scrambler")
                font.family: "Roboto Medium"
                font.pointSize: 16
                color: "#fc744e"
            }
        }
    }

    Item {
        id: appInfo
        width: 168
        height: 20
        anchors.horizontalCenter: appIcon.horizontalCenter
        anchors.top: appIcon.bottom
        anchors.topMargin: 10

        Label {
            id: appNameDescription
            Text {
                text: qsTr("Версия: v0.5.7-beta.1")
                font.family: "Roboto Medium"
                font.pointSize: 13
                color: "white"
            }
        }
    }

//    Rectangle {
//        id: divider
//        color: "#fc744e"
//        height: 2
//        anchors.left: parent.left
//        anchors.right: parent.right
//        anchors.top: appInfo.bottom
//        anchors.topMargin: 21
//    }

//    Rectangle {
//        id: divider2
//        color: "#fc744e"
//        height: 2
//        anchors.left: parent.left
//        anchors.right: parent.right
//        anchors.top: divider.bottom
//        anchors.topMargin: 55
//    }

    Rectangle {
        id: divider
        height: 56
        anchors.left: parent.left
        anchors.right: parent.right
        color: "#fc744e"
        anchors.top: appInfo.bottom
        anchors.topMargin: 21

        Image {
            id: aboutProjectIcon
            source: "/images/icons/aboutProjectIcon.png"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 19
        }

            Text {
                text: qsTr("О проекте:")
                font.family: "Roboto Medium"
                font.pointSize: 13
                color: "white"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: aboutProjectIcon.right
                anchors.leftMargin: 9.5
            }

    }

    Item {
        anchors.left: parent.left
        anchors.leftMargin: 19
        anchors.right: parent.left
        anchors.rightMargin: 19
        anchors.top: divider.bottom
        anchors.topMargin: 21
        anchors.bottom: parent.bottom

        Text {
            //anchors.fill: parent
            width: 342
            wrapMode: Text.Wrap
            text: qsTr("Scrambler — это бесплатное кроссплатформенное приложение, шифрующее текст различными алгоритмами шифрования.")
            font.family: "Roboto Medium"
            font.pointSize: 11
            color: "white"
        }
    }
}


