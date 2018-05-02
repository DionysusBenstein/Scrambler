/*******************************************************************/

/* Original File Name: MenuBackIcon.qml                            */

/* Date: 21-04-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Файл реализации элемента кнопки меню/назад         */

/*******************************************************************/

import QtQuick 2.10

Item {
    id: root
    width: dp(24)
    height: dp(24)

    Rectangle {
        id: bar1
        x: dp(2)
        y: dp(5)
        width: dp(18)
        height: dp(2)
        antialiasing: true
    }

    Rectangle {
        id: bar2
        x: dp(2)
        y: dp(10)
        width: dp(18)
        height: dp(2)
        antialiasing: true
    }

    Rectangle {
        id: bar3
        x: dp(2)
        y: dp(15)
        width: dp(18)
        height: dp(2)
        antialiasing: true
    }

    property int animationDuration: 350

    state: "menu"
    states: [
        State {
            name: "menu"
        },

        State {
            name: "back"
            PropertyChanges {
                target: root
                rotation: 180

            }

            PropertyChanges {
                target: bar1
                rotation: 45
                width: dp(13)
                x: dp(9.5); y: dp(8)
            }

            PropertyChanges {
                target: bar2
                width: dp(17)
                x: dp(3); y: dp(12)
            }

            PropertyChanges {
                target: bar3
                rotation: -45
                width: dp(13)
                x: dp(9.5); y: dp(16)
            }
        }
    ]

    transitions: [
        Transition {
            RotationAnimation {
                target: root
                direction: RotationAnimation.Clockwise
                duration: animationDuration
                easing.type: Easing.InOutQuad
            }

            PropertyAnimation {
                target: bar1
                properties: "rotation, width, x, y"
                duration: animationDuration
                easing.type: Easing.InOutQuad
            }

            PropertyAnimation {
                target: bar2
                properties: "rotation, width, x, y"
                duration: animationDuration;
                easing.type: Easing.InOutQuad
            }

            PropertyAnimation {
                target: bar3
                properties: "rotation, width, x, y"
                duration: animationDuration
                easing.type: Easing.InOutQuad
            }
        }
    ]
}
