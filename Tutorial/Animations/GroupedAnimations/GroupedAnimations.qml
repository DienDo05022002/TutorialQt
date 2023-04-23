import QtQuick 2.7
import QtQuick.Controls 2.0
import "Animations/Components"

Item {
    visible: true
    width: 840
    height: 480

    MyButton {  // our button components
        id: button
        anchors.centerIn: parent
        text: "Start"
        onClicked: {
            status.text = "Button clicked!"
        }
    }

    Text{
        id: status
        anchors.bottom: button.top
        width: 116; height: 26
        text: "Waiting..."
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }
//    Rectangle{
//        id: myComponent
//        property alias text: label.text
//        signal clicked

//        width: 116; height: 26
//        color: "lightsteelblue"
//        border.color: "slategrey"

//        Text{
//            id: label
//            text: "Start"
//            anchors.centerIn: parent
//        }
//        MouseArea{
//            anchors.fill: parent
//            onClicked: myComponent.clicked()
//        }
//    }
}
