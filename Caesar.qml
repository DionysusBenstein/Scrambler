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

//   Colors
//Main: #4285f4
//Dark: #0059c1
//Light: #80b4ff

Item {
    id: caesar
    anchors.fill: parent

    readonly property int dpi: Screen.pixelDensity * 25.4

    function dp(x) {
        return (dpi < 120) ? x : x * (dpi / 160)
    }

    Material.accent: "#4285f4"

    signal encryptClicked()
    signal decryptClicked()
    signal copyClicked()

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

    TextField {
        id: textField
        placeholderText: "Введите текст..."
        anchors.right: parent.right
        anchors.rightMargin: dp(15)
        anchors.left: parent.left
        anchors.leftMargin: dp(15)
        anchors.top: parent.top
        anchors.topMargin: dp(49)
        renderType: Text.QtRendering
    }

    RadioButton {
        id: encryptRadioButton
        text: qsTr(" Зашифровать")
        checked: true
        checkable: true
        anchors.left: parent.left
        anchors.leftMargin: dp(13)
        anchors.top: textField.bottom
        anchors.topMargin: dp(1)
        onClicked: encryptDecryptButton.text = "Зашифровать"
    }

    RadioButton {
        id: decryptRadioButton
        text: qsTr(" Расшифровать")
        checked: false
        checkable: true
        anchors.left: parent.left
        anchors.leftMargin: dp(13)
        anchors.top: encryptRadioButton.bottom
        anchors.topMargin: dp(-4)
        onClicked: encryptDecryptButton.text = "Расшифровать"
    }

    SpinBox {
        id: spinBox
        anchors.bottom: pane.top
        anchors.bottomMargin: dp(15)
        anchors.right: parent.right
        anchors.rightMargin: dp(4)
    }

    Pane {
        id: pane
        width: dp(280)
        height: dp(248)
        scale: 0
        opacity: 0
        font.pointSize: dp(20)
        anchors.bottom: parent.bottom
        anchors.bottomMargin: dp(36)
        anchors.horizontalCenter: parent.horizontalCenter
        Material.elevation: dp(30)

        Label {
            id: label
            color: "#404040"
            text: qsTr("Шифр")
            font.pointSize: dp(15)
            font.family: "Roboto Medium"
            anchors.top: parent.top
            anchors.topMargin: dp(7)
            anchors.left: parent.left
            anchors.leftMargin: dp(12)
        }

        Label {
            id: outoutLabel
            x: dp(12)
            width: dp(244)
            height: dp(146)
            color: "#9a9a9a"
            text: qsTr("Привет, Мир!")
            antialiasing: true
            smooth: true
            anchors.top: label.bottom
            anchors.topMargin: dp(17)
            font.pointSize: dp(12)
            fontSizeMode: Text.Fit
        }

        NumberAnimation on scale {
            id: paneScaleAnimation
            easing.type: Easing.OutQuint
            from: 0
            to: 1
            duration: 350
            running: false
        }

        NumberAnimation on opacity {
            id: paneOpacityAnimation
            easing.type: Easing.OutQuint
            from: 0
            to: 1
            duration: 350
            running: false
        }
    }

    Button {
        id: encryptDecryptButton
        x: dp(236)
        text: qsTr("Зашифровать")
        anchors.right: parent.right
        anchors.rightMargin: dp(16)
        anchors.top: textField.bottom
        anchors.topMargin: dp(0)
        onClicked: {
            encryptClicked()
            paneScaleAnimation.running = true
            paneOpacityAnimation.running = true
            copyButtonScaleAnimation.running = true
            copyButtonOpacityAnimation.running = true
        }
    }

    Button {
        id: copyButton
        x: dp(220)
        y: dp(9)
        text: qsTr("Скопировать")
        scale: 0
        opacity: 0
        anchors.bottom: pane.bottom
        anchors.bottomMargin: dp(1)
        anchors.rightMargin: dp(14)
        anchors.topMargin: dp(-53)
        anchors.right: pane.right
        flat: true
        Material.foreground: "#4285f4"

        NumberAnimation on scale {
            id: copyButtonScaleAnimation
            easing.type: Easing.OutQuint
            from: 0
            to: 1
            duration: 350
            running: false
        }

        NumberAnimation on opacity {
            id: copyButtonOpacityAnimation
            easing.type: Easing.OutQuint
            from: 0
            to: 1
            duration: 350
            running: false
        }
    }
}
