import QtQuick
import QtQuick.Window

Window {
  width: 640
  height: 480
  visible: true
  title: qsTr("Hello World")

  Rectangle {
    width: 200
    height: 80
    color: "linen"

    //    TextLineEdit {
    //      id: input1
    //      x: 8
    //      y: 8
    //      width: 96
    //      height: 20
    //      focus: true
    //      text: "Text Input 1"
    //      KeyNavigation.tab: input2.input
    //    }

    //    TextLineEdit {
    //      id: input2
    //      x: 8
    //      y: 36
    //      width: 96
    //      height: 20
    //      text: "Text Input 2"
    //      KeyNavigation.tab: input1.input
    //      onFocusChanged: {
    //        input2.text = "focus"
    //      }
    //    }

    TextLineEditFocus {
      id: input1
      x: 8
      y: 8
      width: 96
      height: 20
      focus: true
      text: "Text Input 1"
      KeyNavigation.tab: input2.input
    }

    TextLineEditFocus {
      id: input2
      x: 8
      y: 36
      width: 96
      height: 20
      text: "Text Input 2"
      KeyNavigation.tab: darkSquare
      onFocusChanged: {
        input2.text = "focus"
      }
    }

    TTextEdit {
      id: input3
      x: 8
      y: 64
      width: 120
      height: 104
      focus: true
      text: "Text Edit"
    }
  }

  DarkSquare {
    id: darkSquare
    x: 140
    y: 8
    width: 400
    height: 200
    GreenSquare {
      id: square
      x: 8
      y: 8
    }
    focus: true
    Keys.onLeftPressed: square.x -= 8
    Keys.onRightPressed: square.x += 8
    Keys.onUpPressed: square.y -= 8
    Keys.onDownPressed: square.y += 8
    Keys.onPressed: function(event) {
      switch(event.key) {
      case Qt.Key_Plus:
        square.scale += 0.2
        break;
      case Qt.Key_Minus:
        square.scale -= 0.2
        break
      }
    }

    KeyNavigation.tab: input3.input
  }
}
