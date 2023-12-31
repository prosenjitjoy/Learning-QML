import QtQuick
import QtQuick.Window

Window {
  width: 640
  height: 480
  visible: true
  title: qsTr("Hello World")

  DarkSquare {
    x: 12
    y: 12
    width: 120
    height: 240

    Column {
      anchors.centerIn: parent
      spacing: 8
      RedSquare {}
      GreenSquare {
        width: 96
      }
      BlueSquare {}
    }
  }

  DarkSquare {
    x: 140
    y: 12
    width: 400
    height: 120

    Row {
      id: row
      anchors.centerIn: parent
      spacing: 20
      BlueSquare {}
      GreenSquare {}
      RedSquare {}
    }
  }

  DarkSquare {
    x: 12
    y: 312
    width: 160
    height: 160

    Grid {
      id: grid
      rows: 2
      columns: 2
      anchors.centerIn: parent
      spacing: 8
      RedSquare {}
      RedSquare {}
      RedSquare {}
      RedSquare {}
    }
  }

  DarkSquare {
    x: 200
    y: 312
    width: 160
    height: 160

    Flow {
      anchors.fill: parent
      anchors.margins: 20
      spacing: 20
      RedSquare {}
      BlueSquare {}
      GreenSquare {}
    }
  }

  DarkSquare {
    id: root
    x: 375
    y: 212
    width: 252
    height: 252
    property variant colorArray: ["#00bde3", "#67c111", "#ea7025"]
    Grid {
      anchors.fill: parent
      anchors.margins: 8
      spacing: 4
      Repeater {
        model: 6
        delegate: Rectangle {
          required property int index
          property int colorIndex: Math.floor(Math.random()*3)
          width: 56
          height: 56
          color: root.colorArray[colorIndex]
          border.color: Qt.lighter(color)

          Text {
            anchors.centerIn: parent
            color: "#f0f0f0"
            text: "Cell " + parent.index
          }
        }
      }
    }
  }
}
