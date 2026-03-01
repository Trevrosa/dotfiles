import QtQuick 2.15

Column {
  id: container

  anchors {
    margins: 10
    top: parent.top
    right: parent.right
  }

  property date dateTime: new Date()
  property color color: "#cad3f5"

  Timer {
      interval: 100; running: true; repeat: true;
      onTriggered: container.dateTime = new Date()
  }

  Text {
      id: time
      anchors.horizontalCenter: parent.horizontalCenter

      color: container.color

      text : Qt.formatTime(container.dateTime, "hh:mm")

      font.family: config.Font
      font.pointSize: 90
  }

  Text {
      id: date
      anchors.horizontalCenter: parent.horizontalCenter

      color: container.color

      text : Qt.formatDate(container.dateTime, "dddd, d MMMM yyyy")

      font.family: config.Font
      font.pointSize: 25
  }
}
