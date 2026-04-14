import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.SystemTray
import "../services"

RowLayout {
    id: systemTray
    spacing: 6
    layoutDirection: Qt.RightToLeft

    Repeater {
        model: SystemTray.items

        Item {
            id: trayItem
            required property var modelData

            width: 16
            height: 16
            Layout.alignment: Qt.AlignVCenter

            Image {
                id: trayIcon
                anchors.fill: parent
                source: trayItem.modelData.icon
                sourceSize: Qt.size(16, 16)
                smooth: true
                mipmap: true
                fillMode: Image.PreserveAspectFit
            }

            MouseArea {
                id: mouseArea
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton | Qt.MiddleButton
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor

                onClicked: mouse => {
                    if (mouse.button === Qt.LeftButton) {
                        if (trayItem.modelData.onlyMenu) {
                            trayItem.modelData.display(trayItem, mouse.x, mouse.y)
                        } else {
                            trayItem.modelData.activate()
                        }
                    } else if (mouse.button === Qt.RightButton) {
                        if (trayItem.modelData.hasMenu) {
                            trayItem.modelData.display(trayItem, mouse.x, mouse.y)
                        } else {
                            trayItem.modelData.secondaryActivate()
                        }
                    } else if (mouse.button === Qt.MiddleButton) {
                        trayItem.modelData.secondaryActivate()
                    }
                }
            }
        }
    }
}
