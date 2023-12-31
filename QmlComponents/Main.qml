import QtQuick
import QtQuick.Window

Window {
  width: 640
  height: 480
  visible: true
  title: qsTr("Hello World")

  Button {
    id: button
    x: 12
    y: 12
    text: "Start"
    onClicked: {
      status.text = "Button clicked"
    }
  }

  Text {
    id: status
    x: 12
    y: 76
    width: 116
    height: 26
    text: "waiting"
    horizontalAlignment: Text.AlignHCenter
  }
}
