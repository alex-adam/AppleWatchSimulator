import QtQuick 2.0

Rectangle {
    id: appRoot
    property alias source: appIcon.source
    property string appPicture

    Image {
        id: appIcon
        //source: "/pics/pics/home_itunes.png"
        x: parent.x; y: parent.y; height: parent.height; width: parent.width

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onClicked: Watch.showApp(appRoot.appPicture)
        }

        states: State {name: "pressed"; when: mouseArea.pressed; PropertyChanges {target: appItunes; scale: 0.9}}

        transitions: Transition {NumberAnimation { properties: "scale"; duration: 100; easing.type: Easing.InOutQuad }
            NumberAnimation { properties: "scale"; duration: 100; easing.type: Easing.InOutQuad }}
          }
}

