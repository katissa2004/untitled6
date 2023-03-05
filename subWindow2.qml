import QtQuick 2.5
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.1


Window {
    id: subWindow_2
    visible: true

    width: 500; height: 300
    color: "blue"
    flags: Qt.SubWindow



    Rectangle {
        anchors {
            top: topPanel.bottom
            bottom: parent.bottom
            left: parent.left
            right: parent.reght
        }
        color: "lightGrey"
        Text {
            anchors.centerIn: subWindow_2
            text: "Sub Window 2"
        }
    }

    Button {
        anchors {
            top: topPanel.bottom

            left: parent.left
            right: parent.reght
        }
        text: "Circle button"

        background: Rectangle {
            implicitWidth: 140
            implicitHeight: width
            border.width: control.activeFocus ? 1 : 2
            border.color: "white"
            radius: width * 0.5
        }
    }
}
