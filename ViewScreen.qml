import QtQuick 2.0
import QtQuick.Controls 2.0

Item {
    ListModel {
        id: listModel
        ListElement { name: "SignalSlot"; page: "Tutorial/SignalSlot/signalslot.qml" }
        ListElement { name: "Components"; page: "Tutorial/Components/components.qml" }
        ListElement { name: "Animations"; page: "Tutorial/Animations/animations.qml" }
        ListElement { name: "Authentication"; page: "Tutorial/Authentication/authentication.qml" }
    }

    GridView{
        id: gridView
        anchors.fill: parent
        anchors.horizontalCenter: parent.horizontalCenter
        leftMargin: 50; rightMargin: 50
        model: listModel
        cellHeight: 150
        cellWidth: 150
        delegate: Rectangle{
            width: 100; height: 100
            color: "grey"
            radius: 5
            Text{
                text: name
                color: "white"
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: mainLoader.source = page  // mainLoader is: "id for Loader in file main.qml"
            }
        }
    }
}
