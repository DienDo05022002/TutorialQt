import QtQuick 2.7
import QtQuick.Controls 2.0
import Qt.SignalSlot 1.0

Item {
    visible: true
    width: 840
    height: 480

//    property string textStatus: "Hello World"

    Item {
        width: parent.width
        height: parent.height

        SignalSlot{
            id: mySignalSlot
        }

        Button {
            id: btn
            text: "Call Slot"
            anchors.centerIn: parent
            onClicked: {
                mySignalSlot.mySlot()
                textStatus.text = "Slot is calling: Successfully"
            }
        }
        Text {
            id: textStatus
            color: "#0040ff"
            x: 220
            y: 170
            width: 200; height: 50
            anchors.bottom: btn.top
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Hello World"
        }

        Connections {
            target: mySignalSlot
            onMySignal: {
                console.log("Emit the signal: Successfully")
            }
        }

    }

}
