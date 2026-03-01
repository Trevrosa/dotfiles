import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
  implicitHeight: powerButton.height
  implicitWidth: powerButton.width
  Button {
    id: powerButton
    height: inputHeight
    width: inputHeight
    hoverEnabled: true
    text: ""
    palette.buttonText: "#363a4f"
    font.pointSize: 30
    background: Rectangle {
      id: powerButtonBackground
      radius: 3
      color: "#ED8796"
    }
    states: [
      State {
        name: "hovered"
        when: powerButton.hovered
        PropertyChanges {
          target: powerButtonBackground
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
    onClicked: sddm.powerOff()
  }
}
