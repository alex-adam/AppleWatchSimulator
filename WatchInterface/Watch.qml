import QtQuick 2.0
import QtGraphicalEffects 1.0
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

Rectangle {
    id: root
    //anchors.horizontalCenter: parent

    //Screen
    Rectangle {
        id: screen
        x: 157; y: 215;
        width: 240; height: 310
        color: "red"

        Image {
             source: "/pics/pics/home.png"; fillMode: Image.PreserveAspectFit;
        }


        Image {
            id: appItunes
            source: "/pics/pics/home_itunes.png"
            x: 61; y: 68; height: 56; width: 56

                MouseArea {id: mouseAreaItunes; anchors.fill: parent; cursorShape: Qt.PointingHandCursor; onClicked: showApp("/pics/pics/itunes.png")}
            }

        Image {
            id: appMail
            source: "/pics/pics/home_mail.png"
            x: 126; y: 68; height: 56; width: 56

                MouseArea {id: mouseAreaMail; anchors.fill: parent; cursorShape: Qt.PointingHandCursor; onClicked: showApp("/pics/pics/mail.png")}
            }

        Image {
            id: appClock
            source: "/pics/pics/home_clock.png"
            x: 90; y: 121; height: 63; width: 63

                MouseArea {id: mouseAreaClock; anchors.fill: parent; cursorShape: Qt.PointingHandCursor; onClicked: showApp("/pics/pics/clock.png")}
            }

        Image {
            id: appActivity
            source: "/pics/pics/home_activityapp.png"
            x: 61; y: 183; height: 56; width: 56

                MouseArea {id: mouseAreaActivity; anchors.fill: parent; cursorShape: Qt.PointingHandCursor; onClicked: showApp("/pics/pics/activity_app.png")}
            }

        Image {
            id: appMessages
            source: "/pics/pics/home_messages.png"
            x: 126; y: 183; height: 56; width: 56

                MouseArea {id: mouseAreaMessages; anchors.fill: parent; cursorShape: Qt.PointingHandCursor; onClicked: showApp("/pics/pics/messages.png")}
            }

        //App-Window
        Image {
            id: app
            width: parent.width; height: parent.height
            scale: 0.0
        }


        //Contacts-Window
        Image {
            id: contacts
            x: screen.width; y: 0
            source: "/pics/pics/contacts.png"
            width: parent.width; height: parent.height
            NumberAnimation on x {id: contactanim; running: false; to: 0; duration: 600; easing.type: Easing.OutExpo }
            }

        //Notification-Window
        Notification {
            id: notification
            x: 0; y: screen.height
            width: parent.width; height: 620

            SequentialAnimation on y {
                id: seqanim
                running: false
                //move up and down
                NumberAnimation {from: screen.height; to: 0; easing.type: Easing.OutBack; easing.overshoot: 0.8 ; duration: 500}
                PauseAnimation {duration: 1200 }
                NumberAnimation {from: 0; to: -310; easing.type: Easing.InOutCubic; duration: 400}
                PauseAnimation {duration: 1600 }
                NumberAnimation {from: -310; to: screen.height; easing.type: Easing.InOutCubic; duration: 0}
            }
        }

}

//Watch itself
    Image {
        id: watchbody
        anchors.fill: parent
        source: "/pics/awatch.png"
    }

    //Crown / HomeButton
    Rectangle {
        id: crown
        x: 440; y: 250; height: 80; width: 50
        color: "transparent"

        MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {hideApp()}
            }
    }

    //Contacts-Button
    Rectangle {
        id: contactsButton
        x: 440; y: 370; height: 120; width: 50
        color: "transparent"

        MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {contactanim.running=true}
            }
    }

    function showApp(source)
    {
      app.source = source
      app.scale = 1.0
    }

    function hideApp()
    {
        hideContact()
        app.scale = 0.0
    }

    function hideContact()
    {
        contactanim.to=screen.width
        contactanim.start()
        contactanim.to=0
    }



    //Notification
    //TODO: Display a Image of a Button here
    Image {
        x: 12; y: 12
        width: 64; height: 64
        source: "/pics/pics/notification_button.png"
        MouseArea {
       anchors.fill: parent
       onClicked: seqanim.running= true
       }
    }

}
