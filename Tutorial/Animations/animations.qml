import QtQuick 2.7
import QtQuick.Controls 2.0

Item {
    id: root
    visible: true
    width: 840
    height: 380

    property int duration: 3000
    Rectangle{
        id: sky
        width: parent.width
        height: 200
        gradient: Gradient{
            GradientStop{ position: 0.0; color: "#0080FF"}
            GradientStop{ position: 1.0; color: "#66CCFF"}
        }
    }
    Rectangle{
        id: group
        width: parent.width
        anchors.top: sky.bottom
        anchors.bottom: root.bottom
        gradient: Gradient{
            GradientStop{ position: 0.0; color: "#00FF00"}
            GradientStop{ position: 1.0; color: "#00803F"}
        }
    }
    Image {
        id: ball
        width: 70; height: 70
        x: 0; y: root.height - height
        source: "qrc:/assets/soccer-ball-variant.png"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                ball.x = 0
                ball.y = root.height - ball.height
                ball.rotation = 0;
                anim.restart()
            }
        }
    }

    ParallelAnimation{
        id: anim
        SequentialAnimation{
            NumberAnimation {
                target: ball
                properties: "y"
                to: 20
                duration: root.duration * 0.4
                easing.type: Easing.OutCirc
            }
            NumberAnimation {
                target: ball
                properties: "y"
                to: root.height - ball.height
                duration: root.duration * 0.6
                easing.type: Easing.OutBounce
            }
        }
        NumberAnimation {
            target: ball
            properties: "x"
            to: root.width - ball.width
            duration: root.duration
        }
        RotationAnimation{
            target: ball
            properties: "rotation"
            to: 720
            duration: root.duration
        }
    }



//    Image{
//        id: imageScreen
//        width: parent.width; height: parent.height
//        source: "qrc:/assets/drawing-sky-clouds-wallpaper-preview.jpg"

//        property int padding: 40
//        property int duration: 4000
//        property bool running: false

//        Image{
//            id: box
//            x: imageScreen.padding
//            y: (imageScreen.height - height) / 2.5
//            width: 50; height: 50
//            source: "qrc:/assets/Qt_logo.svg.png"


//            NumberAnimation on x{
//                to: imageScreen.width - box.width - imageScreen.padding
//                duration: imageScreen.duration
//                running: imageScreen.running
//            }
//            RotationAnimation on rotation {
//                to: 360
//                duration: imageScreen.duration
//                running: imageScreen.running
//            }
//        }

//        MouseArea {
//            anchors.fill: parent
//            onClicked: imageScreen.running = true
//        }
//    }
}



