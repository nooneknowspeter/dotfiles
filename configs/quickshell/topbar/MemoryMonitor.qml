import QtQuick
import Quickshell
import Quickshell.Io
import "../services"

Text {
    id: memMonitor

    property int usage: 0

    Timer {
        interval: 2000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: memProc.running = true
    }

    Process {
        id: memProc
        command: ["sh", "-c", "free | grep Mem | awk '{printf \"%.0f\", $3/$2 * 100}'"]
        stdout: SplitParser {
            onRead: data => memMonitor.usage = parseInt(data)
        }
    }

    Process {
        id: clickProc
        command: ["ghostty", "-e", "btop"]
    }

    text: usage + "%  |"
    font.family: "FiraCode Nerd Font"
    font.pixelSize: 11
    font.hintingPreference: Font.PreferFullHinting
    renderType: Text.NativeRendering
    color: Colors.foreground

    leftPadding: 6
    rightPadding: 6

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: clickProc.running = true
    }
}
