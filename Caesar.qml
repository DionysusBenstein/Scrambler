import QtQuick 2.10

Rectangle {
    anchors.fill: parent
    color: "green"

    Text {
        text: "Fragment 1"
        color: "white"
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.margins: dp(50)
        font.pixelSize: dp(30)

        renderType: Text.NativeRendering
    }
}
