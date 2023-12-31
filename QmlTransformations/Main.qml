import QtQuick
import QtQuick.Window

Window {
  width: 640
  height: 480
  visible: true
  title: qsTr("Hello World")

  Image {
    id: background
    source: "assets/background.png"
    anchors.fill: parent
  }

  MouseArea {
    id: backgoundClicker
    anchors.fill: parent
    onClicked: {
      circle.x = 84
      square.rotation = 0
      triangle.rotation = 0
      triangle.scale = 1.0
    }
  }

  ClickableImage {
    id: circle
    x: 84
    y: 68
    source: "assets/circle.svg"
    onClicked: x += 20
  }

  ClickableImage {
    id: square
    x: 164
    y: 68
    source: "assets/square.svg"
    onClicked: rotation += 15
  }

  ClickableImage {
    id: triangle
    x: 248
    y: 68
    source: "assets/triangle.svg"
    antialiasing: true
    smooth: true
    onClicked: {
      rotation += 15
      scale += 0.05
    }
  }
}
