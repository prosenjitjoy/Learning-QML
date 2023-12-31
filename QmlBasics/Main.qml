import QtQuick
import QtQuick.Window

Window {
  id: root

  width: 512
  height: 320
  visible: true
  title: qsTr("Hello World")

  Image {
    id: background

    anchors.fill: parent
    source: "assets/background.png"
  }

  Image {
    id: pole

    anchors {
      bottom: parent.bottom
      horizontalCenter: parent.horizontalCenter
      top: parent.centerIn
    }
    source: "assets/pole.png"
  }

  Image {
    id: wheel

    anchors.centerIn: parent
    source: "assets/pinwheel.png"

    Behavior on rotation {
      NumberAnimation {
        duration: 250
      }
    }
  }

  MouseArea {
    id: mouseArea

    anchors.fill: parent
    onClicked: {
      wheel.rotation += 90
    }
  }
}
