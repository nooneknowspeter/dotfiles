import QtQuick
import Quickshell
import Quickshell.Io
import "../services"

Text {
    id: notifButton

    text: " |"
    font.family: "FiraCode Nerd Font"
    font.pixelSize: 11
    font.hintingPreference: Font.PreferFullHinting
    renderType: Text.NativeRendering
    color: Colors.foreground

    Process {
        id: proc
        command: ["swaync-client", "-t", "-sw"]
    }

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: proc.running = true
    }
}
