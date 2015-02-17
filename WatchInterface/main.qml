import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("Apple Watch Simulator")
    width: 552
    height: 726
    visible: true
    minimumHeight: height
    minimumWidth: width
    maximumHeight: minimumHeight
       maximumWidth: minimumWidth

    Watch {
       width: parent.width; height: parent.height
    }




}
