import QtQuick
import QtQuick.Window

Window {
  id: root

  width: 640
  height: 480
  visible: true
  title: qsTr("Hello World")

  Rectangle {
    id: rectangle

    anchors.centerIn: parent
    width: 120
    height: 240
    color: "#4a4a4a"

    Image {
      id: triangle

      x: (parent.width - width) / 2
      y: 60
      source: "assets/triangle.svg"
    }

    Text {
      id: textArea

      y: triangle.y + triangle.height + 10
      width: parent.width
      color: "white"
      horizontalAlignment: Text.AlignHCenter
      text: "Triangle"
    }
  }


  //  Text {
  //    id: label1

  //    x: 24
  //    y: 16

  //    height: 2 * width
  //    property int times: 24
  //    property alias anotherTimes: label1.times

  //    text: "Geetings " + times
  //    font.family: "Ubuntu"
  //    font.pixelSize: 24
  //    onHeightChanged: console.log('height:', height)
  //    focus: true
  //    color: focus ? "red" : "black"
  //  }

  Text {
    id: label

    x: 34
    y: 34

    property int spacePresses: 0
    text: "Space pressed: " + spacePresses + " times";
    onTextChanged: function(text) {
      console.log("text changed to:", text)
    }

    onSpacePressesChanged: function() {
      label.text = "Space pressed: " + spacePresses + " times";
    }

    focus: true
    Keys.onPressed: function(event) {
      if (event.key === Qt.Key_Space) {
        increment()
      }
    }
    Keys.onEscapePressed: {
      label.text = ""
    }

    function increment() {
      spacePresses = spacePresses + 1
    }
  }
}
