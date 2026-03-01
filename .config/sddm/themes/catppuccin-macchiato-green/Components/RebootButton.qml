import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
  implicitHeight: rebootButton.height
  implicitWidth: rebootButton.width
  Button {
    id: rebootButton
    height: inputHeight
    width: inputHeight
    hoverEnabled: true
    text: ""
    palette.buttonText: "#363a4f"
    font.pointSize: 30
    background: Rectangle {
      id: rebootButtonBackground
      radius: 3
      color: "#ED8796"
    }
    states: [
      State {
        name: "hovered"
        when: rebootButton.hovered
        PropertyChanges {
          target: rebootButtonBackground
          color: "#F4DBD6"
        }
      }
    ]
    transitions: Transition {
      PropertyAnimation {
        properties: "color"
        duration: 300
      }
    }
    onClicked: sddm.reboot()
  }
}
