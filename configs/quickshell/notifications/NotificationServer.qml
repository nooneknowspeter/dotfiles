import QtQuick
import Quickshell
import Quickshell.Wayland
import Quickshell.Services.Notifications

Scope {
    id: notificationServer

    NotificationServer {
        id: server
        onNotification: notification => {
            notificationList.model.insert(0, { notification: notification })

            notification.closed.connect(() => {
                for (let i = 0; i < notificationList.model.count; i++) {
                    if (notificationList.model.get(i).notification === notification) {
                        notificationList.model.remove(i)
                        break
                    }
                }
            })
        }
    }

    PanelWindow {
        id: notificationPopup

        anchors {
            top: true
            right: true
        }

        margins {
            top: 40
            right: 8
        }

        implicitWidth: 320
        implicitHeight: Math.min(notificationColumn.implicitHeight, 600)
        color: "transparent"
        visible: notificationList.model.count > 0

        WlrLayershell.namespace: "notifications"
        WlrLayershell.layer: WlrLayer.Overlay

        Column {
            id: notificationColumn
            width: parent.width
            spacing: 8

            Repeater {
                id: notificationList
                model: ListModel {}

                delegate: NotificationPopup {
                    required property var notification
                    width: notificationColumn.width
                    notif: notification
                }
            }
        }
    }
}
