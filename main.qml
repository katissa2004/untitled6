import QtQuick 2.5
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.1



Window {
    id: mainWindow
    visible: true
    width: 760; height: 520
    color: "red"

    Text {
        text: "Click here to open sub window 2!"
        anchors.centerIn: parent
    }

    Loader { id: pageLoader }
    Button {
        id: root1
        visible: true
        width: 50; height: 50

        anchors {
            top: parent.top
            left: parent.left
        }


            onClicked: {
                var component = Qt.createComponent("subWindow2.qml")
                var window = component.createObject("mainWindow")
                window.show()
                mouse.accepted = false
            }



    }

    Button {
        id: root2
        visible: true
        width: 50; height: 50

        anchors {
            top: parent.top
            left: root1.right
        }

        MouseArea {
            anchors.fill: parent
            onClicked: pageLoader.source = "subWindow3.qml"
        }
    }


}
