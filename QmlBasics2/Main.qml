import QtQuick
import QtQuick.Window

Window {
  id: root

  width: 640
  height: 480
  visible: true
  title: qsTr("Hello World")

  Rectangle {
    id: rect1

    x: 12
    y: 12
    width: 76
    height: 96
    color: "lightsteelblue"

    MouseArea {
      id: mouseArea

      anchors.fill: parent
      onClicked: rect2.visible = !rect2.visible
    }
  }

  Rectangle {
    id: rect2

    x: 112
    y: 12
    width: 76
    height: 96
    border.color: "lightsteelblue"
    border.width: 4
    radius: 8
  }

  Rectangle {
    id: rect3

    x: 212
    y: 12
    width: 76
    height: 96
    gradient: Gradient {
      GradientStop {
        id: gradient1
        position: 0.0
        color: randomColor()
      }
      GradientStop {
        id: gradient2
        position: 1.0
        color: randomColor()
      }
    }
    border.color: "slategray"

    MouseArea {
      anchors.fill: parent
      onClicked: {
        gradient1.color = randomColor()
        gradient2.color = randomColor()
      }
    }
  }

  function randomColor() {
    return Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
  }

  Text {
    x: 12
    y: 112
    text: "The quick brown fox"
    color: "#303030"
    elide: Text.ElideMiddle
    style: Text.Sunken
    styleColor: "#ff4444"
    font.pixelSize: 28
    verticalAlignment: Text.AlignTop
  }

  Image {
    x: 312
    y: 12
    source: "assets/triangle.svg"
  }

  Image {
    x: 412
    y: 12
    height: 30
    source: "assets/triangle.svg"
    fillMode: Image.PreserveAspectCrop
  }
}
