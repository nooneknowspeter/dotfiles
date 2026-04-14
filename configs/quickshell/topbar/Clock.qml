import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland
import "../services"

Item {
    id: clockWidget
    width: clockText.width + 12
    height: parent.height

    property date currentTime: new Date()
    property bool showCalendar: false

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: clockWidget.currentTime = new Date()
    }

    Text {
        id: clockText
        anchors.centerIn: parent
        text: "| " + Qt.formatDateTime(clockWidget.currentTime, "yyyy-MM-dd hh:mm:ss AP")
        font.family: "FiraCode Nerd Font"
        font.pixelSize: 11
        font.hintingPreference: Font.PreferFullHinting
        renderType: Text.NativeRendering
        color: Colors.foreground
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: clockWidget.showCalendar = true
        onExited: clockWidget.showCalendar = false
        onClicked: clockWidget.showCalendar = !clockWidget.showCalendar
    }

    PopupWindow {
        id: calendarPopup
        visible: clockWidget.showCalendar

        anchor.window: clockWidget.QsWindow.window
        anchor.rect.x: clockWidget.mapToItem(null, 0, 0).x - 100
        anchor.rect.y: clockWidget.mapToItem(null, 0, 0).y + clockWidget.height
        anchor.edges: Edges.Bottom

        implicitWidth: calendarContent.width
        implicitHeight: calendarContent.height
        color: "transparent"

        Rectangle {
            id: calendarContent
            width: 280
            height: calendarLayout.height + 24
            color: Qt.rgba(0, 0, 0, 0.9)
            radius: 8
            border.color: Colors.comment
            border.width: 1

            ColumnLayout {
                id: calendarLayout
                anchors.fill: parent
                anchors.margins: 12
                spacing: 8

                // Current time display
                Text {
                    Layout.alignment: Qt.AlignHCenter
                    text: Qt.formatDateTime(clockWidget.currentTime, "hh:mm:ss AP")
                    font.family: "FiraCode Nerd Font"
                    font.pixelSize: 24
                    font.bold: true
                    color: Colors.highlight
                }

                Text {
                    Layout.alignment: Qt.AlignHCenter
                    text: Qt.formatDateTime(clockWidget.currentTime, "dddd, MMMM d, yyyy")
                    font.family: "FiraCode Nerd Font"
                    font.pixelSize: 12
                    color: Colors.foreground
                }

                Rectangle {
                    Layout.fillWidth: true
                    height: 1
                    color: Colors.comment
                }

                // Month/Year header
                RowLayout {
                    Layout.fillWidth: true

                    Text {
                        Layout.fillWidth: true
                        text: Qt.formatDateTime(clockWidget.currentTime, "MMMM yyyy")
                        font.family: "FiraCode Nerd Font"
                        font.pixelSize: 14
                        font.bold: true
                        color: Colors.foreground
                    }

                    Text {
                        text: "W" + getWeekNumber(clockWidget.currentTime)
                        font.family: "FiraCode Nerd Font"
                        font.pixelSize: 11
                        color: Colors.comment
                    }
                }

                // Day headers
                RowLayout {
                    Layout.fillWidth: true
                    spacing: 0

                    Repeater {
                        model: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]

                        Text {
                            Layout.fillWidth: true
                            text: modelData
                            font.family: "FiraCode Nerd Font"
                            font.pixelSize: 10
                            font.bold: true
                            color: Colors.comment
                            horizontalAlignment: Text.AlignHCenter
                        }
                    }
                }

                // Calendar grid
                Grid {
                    Layout.fillWidth: true
                    columns: 7
                    spacing: 2

                    Repeater {
                        model: getCalendarDays(clockWidget.currentTime)

                        Rectangle {
                            width: 34
                            height: 24
                            radius: 4
                            color: {
                                if (modelData.isToday) return Colors.accent
                                if (modelData.isCurrentMonth && modelData.day > 0) return "transparent"
                                return "transparent"
                            }

                            Text {
                                anchors.centerIn: parent
                                text: modelData.day > 0 ? modelData.day : ""
                                font.family: "FiraCode Nerd Font"
                                font.pixelSize: 11
                                font.bold: modelData.isToday
                                color: {
                                    if (modelData.isToday) return Colors.background
                                    if (!modelData.isCurrentMonth) return Colors.comment
                                    return Colors.foreground
                                }
                            }
                        }
                    }
                }
            }
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onExited: clockWidget.showCalendar = false
        }
    }

    function getWeekNumber(date) {
        let d = new Date(Date.UTC(date.getFullYear(), date.getMonth(), date.getDate()))
        let dayNum = d.getUTCDay() || 7
        d.setUTCDate(d.getUTCDate() + 4 - dayNum)
        let yearStart = new Date(Date.UTC(d.getUTCFullYear(), 0, 1))
        return Math.ceil((((d - yearStart) / 86400000) + 1) / 7)
    }

    function getCalendarDays(date) {
        let days = []
        let year = date.getFullYear()
        let month = date.getMonth()
        let today = date.getDate()

        let firstDay = new Date(year, month, 1).getDay()
        let daysInMonth = new Date(year, month + 1, 0).getDate()
        let daysInPrevMonth = new Date(year, month, 0).getDate()

        // Previous month days
        for (let i = firstDay - 1; i >= 0; i--) {
            days.push({
                day: daysInPrevMonth - i,
                isCurrentMonth: false,
                isToday: false
            })
        }

        // Current month days
        for (let i = 1; i <= daysInMonth; i++) {
            days.push({
                day: i,
                isCurrentMonth: true,
                isToday: i === today
            })
        }

        // Next month days
        let remaining = 42 - days.length
        for (let i = 1; i <= remaining; i++) {
            days.push({
                day: i,
                isCurrentMonth: false,
                isToday: false
            })
        }

        return days
    }
}
