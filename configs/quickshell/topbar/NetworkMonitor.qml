import QtQuick
import Quickshell
import Quickshell.Io
import "../services"

Text {
    id: netMonitor

    property string ipAddr: ""
    property string cidr: ""

    Timer {
        interval: 5000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: netProc.running = true
    }

    Process {
        id: netProc
        command: ["sh", "-c", "ip -o -4 addr show | grep -v '127.0.0.1' | head -1 | awk '{print $4}'"]
        stdout: SplitParser {
            onRead: data => {
                let parts = data.trim().split("/")
                netMonitor.ipAddr = parts[0] || ""
                netMonitor.cidr = parts[1] || ""
            }
        }
    }

    Process {
        id: clickProc
        command: ["nm-connection-editor"]
    }

    text: ipAddr ? ipAddr + "/" + cidr + " |" : " |"
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
