import QtQuick 2.10
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.3

//   Colors
//Main: #ffbc00
//Dark: #c78c00
//Light: #ffee4e

Item {
    anchors.fill: parent

    readonly property int dpi: Screen.pixelDensity * 25.4

    function dp(x) {
        return (dpi < 120) ? x : x*(dpi/160)
    }

    Material.accent: "#4285f4"

    Text {
        id: testText
        text: "Тут <br> скоро <br> будет <br> информация <br> О программе..."
        color: "#191919"
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.leftMargin: dp(20)
        anchors.topMargin: dp(70)
        font.pixelSize: dp(30)
        font.family: "Roboto"

        renderType: Text.NativeRendering
    }

    Rectangle {
        id: found
        color: "#ffee4e"
        width: 150
        height: width
        radius: width / 2
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: dp(30)

        Rectangle {
            id: child
            color: "#ffbc00"
            width: 100
            height: width
            radius: width / 2
            anchors.centerIn: parent

            Rectangle {
                id: dchild
                color: "#c78c00"
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
            color: "#ffbc00"
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


