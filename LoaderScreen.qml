import QtQuick 2.0
import QtQuick.Controls 2.0

Item {
    anchors.fill: parent
    StackView{
        id: stack
        initialItem: "qrc:/ViewScreen.qml"
        anchors.fill: parent
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
