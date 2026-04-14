import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland
import "../services"

PanelWindow {
    id: topbar

    anchors {
        left: true
        top: true
        right: true
    }

    implicitHeight: 22
    color: Qt.rgba(0, 0, 0, Colors.desktopOpacity)

    WlrLayershell.namespace: "topbar"
    WlrLayershell.layer: WlrLayer.Top

    RowLayout {
        anchors.fill: parent
        spacing: 0

        RowLayout {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            Layout.leftMargin: 4
            spacing: 0

            NotificationButton {}
            Workspaces {}
        }

        Item { Layout.fillWidth: true }

        RowLayout {
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Layout.rightMargin: 4
            spacing: 0

            CpuMonitor {}
            MemoryMonitor {}
            TemperatureMonitor {}
            NetworkMonitor {}
            BluetoothMonitor {}
            VolumeMonitor {}
            BacklightMonitor {}
            BatteryMonitor {}
            SystemTray {}
            Clock {}
        }
    }
}
