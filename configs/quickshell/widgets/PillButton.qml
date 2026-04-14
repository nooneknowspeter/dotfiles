import QtQuick

Rectangle {
    id: button

    property alias text: label.text
    property color textColor: "#cdd6f4"
    property color backgroundColor: "#313244"
    property color hoverColor: "#45475a"

    signal clicked()

    width: label.width + 16
    height: 24
    radius: height / 2
    color: mouseArea.containsMouse ? hoverColor : backgroundColor

    Text {
        id: label
        anchors.centerIn: parent
        color: button.textColor
        font.pixelSize: 12
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked: button.clicked()
    }

    Behavior on color {
        ColorAnimation { duration: 150 }
    }
}
