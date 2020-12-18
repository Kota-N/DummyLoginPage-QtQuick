import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    BackgroundForm {
        anchors.fill: parent

        loginMouseArea.onClicked: {
            console.log("Login pressed");
        }

        emailTouch.onClicked: {
            emailDisplay.visible = false;
            emailInput.forceActiveFocus();
            Qt.inputMethod.show();
        }
        emailInput.onFocusChanged: {
            if (emailInput.focus == false && emailInput.text == "") {
                emailDisplay.visible = true;
            }
        }

        passwordTouch.onClicked: {
            passwordDisplay.visible = false;
            passwordInput.forceActiveFocus();
            Qt.inputMethod.show();
        }
        passwordInput.onFocusChanged: {
            if (passwordInput.focus == false && passwordInput.text == "") {
                passwordDisplay.visible = true;
            }
        }
    }
}
