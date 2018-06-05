/*******************************************************************/

/* Original File Name: MenuBackIcon.qml                            */

/* Date: 05-06-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Файл реализации элемента кнопки "ещё"              */

/*******************************************************************/

import QtQuick 2.10
import QtQuick.Window 2.3

Item {
    id: root
    width: dp(24)
    height: dp(24)

    readonly property int dpi: Screen.pixelDensity * 25.4

    function dp(x) {
        return (dpi < 120) ? x : x * (dpi/160)
    }

    Rectangle {
        id: circle1
        x: dp(2)
        y: dp(5)
        width: dp(6)
        height: dp(6)
        radius: dp(3)
        antialiasing: true
    }

    Rectangle {
        id: circle2
        x: dp(2)
        y: dp(10)
        width: dp(6)
        height: dp(6)
        radius: dp(3)
        anchors.top: circle1.bottom
        anchors.margins: dp(3)
        antialiasing: true
    }

    Rectangle {
        id: circle3
        x: dp(2)
        y: dp(15)
        width: dp(6)
        height: dp(6)
        radius: dp(3)
        anchors.top: circle2.bottom
        anchors.margins: dp(3)
        antialiasing: true
    }
}
