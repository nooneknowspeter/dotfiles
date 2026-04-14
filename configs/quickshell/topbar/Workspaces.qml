import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland
import "../services"

RowLayout {
    id: workspaces
    spacing: 0

    property int activeWs: Hyprland.focusedWorkspace?.id ?? 0

    property var occupiedWorkspaces: {
        let set = new Set()
        for (let i = 0; i < Hyprland.workspaces.values.length; i++) {
            let ws = Hyprland.workspaces.values[i]
            if (ws && ws.id > 0 && ws.id <= 10) {
                set.add(ws.id)
            }
        }
        return set
    }

    Repeater {
        model: 10

        Text {
            id: wsText
            required property int index
            property int wsId: index + 1
            property bool isActive: workspaces.activeWs === wsId
            property bool hasWindows: workspaces.occupiedWorkspaces.has(wsId)

            Layout.leftMargin: 4
            Layout.rightMargin: 4

            text: wsId
            font.family: "FiraCode Nerd Font"
            font.pixelSize: 11
            font.hintingPreference: Font.PreferFullHinting
            renderType: Text.NativeRendering

            color: {
                if (isActive) return Colors.highlight
                if (hasWindows) return Colors.foreground
                return Colors.comment
            }
            font.bold: isActive

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: Hyprland.dispatch("workspace " + wsId)
            }
        }
    }
}
