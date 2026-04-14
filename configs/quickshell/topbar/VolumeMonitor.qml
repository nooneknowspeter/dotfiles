import QtQuick
import Quickshell
import Quickshell.Io
import "../services"

Text {
    id: volMonitor

    property int volume: 0
    property bool muted: false

    Timer {
        interval: 1000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: volProc.running = true
    }

    Process {
        id: volProc
        command: ["sh", "-c", "wpctl get-volume @DEFAULT_AUDIO_SINK@ 2>/dev/null"]
        stdout: SplitParser {
            onRead: data => {
                let match = data.match(/Volume: ([\d.]+)/)
                if (match) {
                    volMonitor.volume = Math.round(parseFloat(match[1]) * 100)
                }
                volMonitor.muted = data.includes("[MUTED]")
            }
        }
    }

    Process {
        id: clickProc
        command: ["ghostty", "-e", "wiremix"]
    }

    property string icon: {
        if (muted) return ""
        if (volume > 66) return ""
        if (volume > 33) return ""
        return ""
    }

    text: muted ? " |" : volume + "% " + icon + "|"
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
