import QtQuick
import QtQuick.Layouts
import Quickshell.Services.Notifications
import "../services"

Rectangle {
    id: popup

    required property var notif

    implicitHeight: contentLayout.implicitHeight + 24
    radius: 8
    color: Qt.rgba(0, 0, 0, 0.9)
    border.color: Colors.comment
    border.width: 1

    ColumnLayout {
        id: contentLayout
        anchors.fill: parent
        anchors.margins: 12
        spacing: 8

        RowLayout {
            Layout.fillWidth: true
            spacing: 8

            Image {
                source: popup.notif.appIcon
                sourceSize: Qt.size(24, 24)
                visible: popup.notif.appIcon !== ""
            }

            Text {
                Layout.fillWidth: true
                text: popup.notif.summary
                color: Colors.foreground
                font.family: "FiraCode Nerd Font"
                font.pixelSize: 12
                font.bold: true
                elide: Text.ElideRight
            }

            Text {
                text: "×"
                color: Colors.comment
                font.family: "FiraCode Nerd Font"
                font.pixelSize: 16
                font.bold: true

                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked: popup.notif.dismiss()
                }
            }
        }

        Text {
            Layout.fillWidth: true
            text: popup.notif.body
            color: Colors.foregroundDim
            font.family: "FiraCode Nerd Font"
            font.pixelSize: 11
            wrapMode: Text.WordWrap
            visible: text !== ""
        }

        RowLayout {
            Layout.fillWidth: true
            spacing: 8
            visible: popup.notif.actions.length > 0

            Repeater {
                model: popup.notif.actions

                Rectangle {
                    required property var modelData

                    Layout.fillWidth: true
                    height: 28
                    radius: 4
                    color: Colors.selection

                    Text {
                        anchors.centerIn: parent
                        text: modelData.text
                        color: Colors.foreground
                        font.family: "FiraCode Nerd Font"
                        font.pixelSize: 11
                    }

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: modelData.invoke()
                    }
                }
            }
        }
    }

    Timer {
        interval: popup.notif.expireTimeout > 0 ? popup.notif.expireTimeout : 5000
        running: true
        onTriggered: popup.notif.dismiss()
    }
}
