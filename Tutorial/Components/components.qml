import QtQuick 2.7
import QtQuick.Controls 2.0

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
}
