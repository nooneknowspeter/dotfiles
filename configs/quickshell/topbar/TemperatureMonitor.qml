import QtQuick
import Quickshell
import Quickshell.Io
import "../services"

Text {
    id: tempMonitor

    property int temp: 0

    Timer {
        interval: 2000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: tempProc.running = true
    }

    Process {
        id: tempProc
        command: ["sh", "-c", "cat /sys/class/thermal/thermal_zone0/temp 2>/dev/null | awk '{printf \"%.0f\", $1/1000}'"]
        stdout: SplitParser {
            onRead: data => tempMonitor.temp = parseInt(data) || 0
        }
    }

    text: temp + "%  |"
    font.family: "FiraCode Nerd Font"
    font.pixelSize: 11
    font.hintingPreference: Font.PreferFullHinting
    renderType: Text.NativeRendering
    color: temp >= 80 ? Colors.error : Colors.foreground

    leftPadding: 6
    rightPadding: 6
}
