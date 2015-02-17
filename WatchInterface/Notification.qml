import QtQuick 2.0
import QtQuick.Layouts 1.1

Rectangle {


    Image {
        source: "/pics/pics/home_blur.png"; fillMode: Image.PreserveAspectFit;
    }


    GridLayout {
        id: notficationGrid
        width: parent.width; height: parent.height
        rows: 4; columns: 0

        Rectangle {
            id: notificationSymbol
            x: (notification.width / 2) - (notificationSymbol.width / 2); y: 35
            width: 156; height: 156; color: "transparent"
            Image {
                source: "/pics/pics/notification_icon.png"; fillMode: Image.PreserveAspectFit;
            }
        }

        Text {
            id: notificationSender
            x: (notification.width / 2) - (notificationSender.width / 2); y: notificationSymbol.height + notificationSymbol.y + 15
            font.family: "ROBOTO"; font.pixelSize: 26; color: "white"
            text: "Alexander Adam"
        }

        Text {
            id: notificationApp
            x: (notification.width / 2) - (notificationApp.width / 2); y: notificationSender.y + notificationSender.height + 10
            font.family: "Roboto"; font.letterSpacing: 1.0; font.pixelSize: 20; color: "#35C06F"
            text: "MESSAGES"
        }

        Rectangle {
            id: notificationMessage
            x: 0; y: notificationApp.y + notificationApp.height + 35
            width: parent.width; height: parent.height - 50
            color: "gray"
            Image {
                source: "/pics/pics/notification.png"; fillMode: Image.PreserveAspectFit;
           }


        }

    }



}
