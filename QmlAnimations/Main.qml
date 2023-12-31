import QtQuick
import QtQuick.Window

Window {
  width: 640
  height: 480
  visible: true
  title: qsTr("Hello World")

  Image {
//    id: image
    id: root
    source: "assets/background.jpg"
//    fillMode: Image.PreserveAspectCrop

//    property int padding: 40
//    property int duration: 4000
//    property bool running: false

//    Image {
//      id: box
//      x: image.padding
//      y: (image.height-height)/2
//      source: "assets/square.svg"

//      NumberAnimation on x {
//        to: image.width - box.width - image.padding
//        duration: image.duration
//        running: image.running
//      }

//      RotationAnimation on rotation {
//        to: 360
//        duration: image.duration
//        running: image.running
//      }

//      PropertyAnimation on opacity {
//        to: 0
//        duration: image.duration
//        running: image.running
//      }

//      PropertyAnimation on scale {
//        to: 4
//        duration: image.duration
//        running: image.running
//      }
//    }

//    MouseArea {
//      anchors.fill: parent
//      onClicked: image.running = !image.running
//    }

    ClickableImage {
      id: box1
      x: 20
      y: 20
      source: "assets/square.svg"
    }
  }
}
