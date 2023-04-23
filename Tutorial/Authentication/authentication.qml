import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

import Qt.Backend 1.0

Item {
    id : root
    visible: true
    width: 840
    height: 480

    property int isLogged: 0  // 0 is login, 1 is logout

    MyBackend {
        id: myBackend
        onLoginSuccess: {
            console.log("onLoginSuccess")
            root.isLogged = 1
            myBackend.status = ""
        }
        onLoginFalse: {
            console.log("onLoginFalse")
            root.isLogged = 0
        }
    }
    Column{
        visible: isLogged == 0
        id: login
        width: 300
        anchors.centerIn: parent
        spacing: 15
        TextField{
            id: userName
            placeholderText: "User Name-TK"
            width: parent.width
        }
        TextField{
            id: passWord
            placeholderText: "Password-MK"
            echoMode: TextInput.Password
            width: parent.width
        }
        Button{
            id: btnLogin
            text: "Login"
            onClicked: {
                console.log(userName.text, passWord.text)
                myBackend.login(userName.text, passWord.text)
            }
        }
        Label{
            color: "red"
            text: myBackend.status
        }
    }

    Column{
        visible: isLogged == 1
        id: logout
        anchors.centerIn: parent
        spacing: 15

        Rectangle{
            color: "#ff3333"
            width: 200; height: 150
            Label{
                anchors.centerIn: parent
                color: "white"
                text: "Login SuccessFully"
            }
        }
        Button{
            id: btnLogout
            text: "Logout"
            onClicked: {
                root.isLogged = 0
            }
        }
    }
}















