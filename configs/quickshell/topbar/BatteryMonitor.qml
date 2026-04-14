import QtQuick
import Quickshell
import Quickshell.Io
import "../services"

Text {
    id: batMonitor

    property int capacity: 0
    property string status: ""

    Timer {
        interval: 30000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: {
            capProc.running = true
            statusProc.running = true
        }
    }

    Process {
        id: capProc
        command: ["sh", "-c", "cat /sys/class/power_supply/BAT*/capacity 2>/dev/null | head -1"]
        stdout: SplitParser {
            onRead: data => batMonitor.capacity = parseInt(data.trim()) || 0
        }
    }

    Process {
        id: statusProc
        command: ["sh", "-c", "cat /sys/class/power_supply/BAT*/status 2>/dev/null | head -1"]
        stdout: SplitParser {
            onRead: data => batMonitor.status = data.trim()
        }
    }

    property bool charging: status === "Charging" || status === "Full"

    property string icon: {
        if (charging) return "󰂄"
        if (capacity >= 90) return "󰁹"
        if (capacity >= 80) return "󰂂"
        if (capacity >= 60) return "󰂀"
        if (capacity >= 40) return "󰁾"
        if (capacity >= 20) return "󰁼"
        return "󰁻"
    }

    text: capacity + "% " + icon + " |"
    font.family: "FiraCode Nerd Font"
    font.pixelSize: 11
    font.hintingPreference: Font.PreferFullHinting
    renderType: Text.NativeRendering
    color: {
        if (capacity <= 20 && !charging) return Colors.error
        if (capacity <= 30 && !charging) return Colors.warning
        return Colors.foreground
    }

    leftPadding: 6
    rightPadding: 6
}
