import QtQuick
import Quickshell
import Quickshell.Io
import "../services"

Text {
    id: cpuMonitor

    property int usage: 0

    Timer {
        interval: 2000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: cpuProc.running = true
    }

    Process {
        id: cpuProc
        command: ["sh", "-c", "grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {printf \"%.0f\", usage}'"]
        stdout: SplitParser {
            onRead: data => cpuMonitor.usage = parseInt(data)
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
