import QtQuick
import Quickshell
import Quickshell.Io
import "../services"

Text {
    id: blMonitor

    property int brightness: 0

    Timer {
        interval: 2000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: blProc.running = true
    }

    Process {
        id: blProc
        command: ["sh", "-c", "brightnessctl -m 2>/dev/null | cut -d',' -f4 | tr -d '%'"]
        stdout: SplitParser {
            onRead: data => blMonitor.brightness = parseInt(data.trim()) || 0
        }
    }

    text: brightness + "% 󰃟 |"
    font.family: "FiraCode Nerd Font"
    font.pixelSize: 11
    font.hintingPreference: Font.PreferFullHinting
    renderType: Text.NativeRendering
    color: Colors.foreground

    leftPadding: 6
    rightPadding: 6
}
