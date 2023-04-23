import QtQuick 2.0
import QtQuick.Controls 2.0

Rectangle{
    id: myComponent
    property alias text: label.text
    signal clicked

    width: 116; height: 26
    color: "lightsteelblue"
    border.color: "slategrey"

    Text{
        id: label
        text: "Start"
        anchors.centerIn: parent
    }
    MouseArea{
        anchors.fill: parent
        onClicked: myComponent.clicked()
    }
}
