import QtQuick
import Quickshell
import Quickshell.Io
import "../services"

Text {
    id: btMonitor

    property bool powered: false
    property int connectedCount: 0

    Timer {
        interval: 3000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: btProc.running = true
    }

    Process {
        id: btProc
        command: ["sh", "-c", "bluetoothctl show 2>/dev/null | grep -q 'Powered: yes' && echo 'on' || echo 'off'"]
        stdout: SplitParser {
            onRead: data => btMonitor.powered = data.trim() === "on"
        }
        onExited: if (powered) connProc.running = true
    }

    Process {
        id: connProc
        command: ["sh", "-c", "bluetoothctl devices Connected 2>/dev/null | wc -l"]
        stdout: SplitParser {
            onRead: data => btMonitor.connectedCount = parseInt(data.trim()) || 0
        }
    }

    Process {
        id: leftClickProc
        command: ["sh", "-c", "rfkill unblock bluetooth && ghostty -e bluetui"]
    }

    Process {
        id: rightClickProc
        command: ["rfkill", "toggle", "bluetooth"]
    }

    text: {
        if (!powered) return "󰂲 |"
        if (connectedCount > 0) return connectedCount + " 󰂯 |"
        return "󰂯 |"
    }
    font.family: "FiraCode Nerd Font"
    font.pixelSize: 11
    font.hintingPreference: Font.PreferFullHinting
    renderType: Text.NativeRendering
    color: Colors.foreground

    leftPadding: 6
    rightPadding: 6

    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        cursorShape: Qt.PointingHandCursor
        onClicked: mouse => {
            if (mouse.button === Qt.RightButton) {
                rightClickProc.running = true
            } else {
                leftClickProc.running = true
            }
        }
    }
}
