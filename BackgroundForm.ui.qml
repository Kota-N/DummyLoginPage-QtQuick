import QtQuick 2.4

Item {
    id: loginForm
    width: 400
    height: 400
    property alias loginMouseArea: loginMouseArea
    property alias passwordDisplay: passwordDisplay
    property alias passwordTouch: passwordTouch
    property alias passwordInput: passwordInput
    property alias emailDisplay: emailDisplay
    property alias emailTouch: emailTouch
    property alias emailInput: emailInput

    Image {
        id: background
        anchors.fill: parent
        source: "images/background.jpg"
        fillMode: Image.PreserveAspectCrop

        Rectangle {
            id: loginRect
            x: 134
            y: 147
            width: 402
            height: 210
            color: "#fcf9f4"
            border.color: "#efedeb"
            border.width: 1
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 50
            anchors.horizontalCenter: parent.horizontalCenter

            Image {
                id: image
                x: 89
                width: 100
                height: 100
                anchors.top: parent.top
                source: "images/logo_sample.png"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.topMargin: -110
                fillMode: Image.PreserveAspectFit
            }

            Rectangle {
                id: emailRect
                y: 43
                height: 35
                color: "#ffffff"
                border.color: "#efedeb"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.verticalCenterOffset: -55
                anchors.rightMargin: 25
                anchors.leftMargin: 25

                TextInput {
                    id: emailInput
                    y: 8
                    height: 20
                    color: "#4f0080"
                    text: qsTr("")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.right: parent.right
                    font.pixelSize: 12
                    anchors.verticalCenterOffset: 3
                    anchors.rightMargin: 40
                    anchors.leftMargin: 20
                }

                Image {
                    id: image1
                    x: 339
                    y: 11
                    width: 20
                    height: 20
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    source: "images/email-icon.png"
                    mipmap: true
                    sourceSize.height: 300
                    sourceSize.width: 300
                    anchors.rightMargin: 10
                    fillMode: Image.PreserveAspectFit
                }

                MouseArea {
                    id: emailTouch
                    anchors.fill: parent
                }

                Text {
                    id: emailDisplay
                    y: -32
                    color: "#cbbdbd"
                    text: qsTr("E-Mail")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.right: parent.right
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    anchors.verticalCenterOffset: -1
                    anchors.rightMargin: 40
                    anchors.leftMargin: 20
                }
            }

            Rectangle {
                id: passwordRect
                y: 65
                height: 35
                color: "#ffffff"
                border.color: "#efedeb"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.verticalCenterOffset: -18
                anchors.rightMargin: 25
                anchors.leftMargin: 25

                TextInput {
                    id: passwordInput
                    y: 8
                    height: 20
                    color: "#4f0080"
                    text: qsTr("")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.right: parent.right
                    font.pixelSize: 12
                    anchors.verticalCenterOffset: 5
                    anchors.rightMargin: 40
                    anchors.leftMargin: 20
                    echoMode: TextInput.Password
                }

                Image {
                    id: image2
                    x: 325
                    y: 13
                    width: 20
                    height: 20
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    source: "images/password-icon.png"
                    anchors.rightMargin: 10
                    fillMode: Image.PreserveAspectFit
                }

                MouseArea {
                    id: passwordTouch
                    anchors.fill: parent
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                }

                Text {
                    id: passwordDisplay
                    color: "#cbbdbd"
                    text: qsTr("Password")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.right: parent.right
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    anchors.verticalCenterOffset: -1
                    anchors.rightMargin: 40
                    anchors.leftMargin: 20
                }
            }

            Rectangle {
                id: loginButton
                y: 61
                height: 35
                color: "#27ae61"
                border.width: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.verticalCenterOffset: 35
                anchors.rightMargin: 25
                anchors.leftMargin: 25

                MouseArea {
                    id: loginMouseArea
                    anchors.fill: parent
                }

                Text {
                    id: text3
                    color: "#ffffff"
                    text: qsTr("LOGIN")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 12
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }
}
