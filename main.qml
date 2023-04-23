import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Controls 1.5

Window {
    visible: true
    width: 840
    height: 480
    title: qsTr("Hello World")


    Item {
        id: statusBar
        width: parent.width
        height: 50

        Button {
            text: "Back"
            onClicked: mainLoader.source = "main.qml"
        }
    }

    Loader{
        id: mainLoader
        width: parent.width
        anchors.top: statusBar.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        source: "LoaderScreen.qml"
    }
}
