import QtQuick 2.13
import QtQuick.Window 2.13

Window {
    id:mainWindow
    visible: true
    width: 640
    height: 480
    color: "#b9e8e3"
    title: qsTr("Hello World")
    Boat{
        id:boatIg
        x:379
        y:263
        z: 1
        transformOrigin: Item.Center
    }
    Mountain{
        id:mount
    }
    Leaf{ id:leafImg; x: 50;y: 225 }
    Cloud{
        id:cloud1
        x:6
        y:36
    }
    Sun{
        id:qsun
        x:0
        y:14

        //Animation moving sun
        states: State {
            name: "moved"
            PropertyChanges { target: qsun; x: mainWindow.width-50 }
        }

        transitions: Transition {
            PropertyAnimation { properties: "x"; duration: 4000;easing.type: Easing.InOutQuad }
        }

        Component.onCompleted: qsun.state="moved"
    }
    Cloud{
        id:cloud2object
        x:70
        y:106
    }

    Cloud {
        id: cloud3
        x: 244
        y: 29
    }

    Cloud {
        id: cloud4
        x: 491
        y: 45
    }

    //Animation for moving cloud3
    PropertyAnimation{
        loops: Animation.Infinite
        target: cloud1
        property: "x"
        from:0
        to:mainWindow.width
        duration: 4000
        running: true
    }
    //Animation for moving cloud3
    PropertyAnimation{
        loops: Animation.Infinite
        target: cloud2object
        property: "x"
        from:0
        to:mainWindow.width/2
        duration: 6000
        running: true
    }
    //Animation for moving cloud3
    PropertyAnimation{
        loops: Animation.Infinite
        target: cloud3
        property: "x"
        from:mainWindow.width
        to:0
        duration: 10000
        running: true
    }
    //Animation for moving cloud4
    PropertyAnimation{
        loops: Animation.Infinite
        target: cloud4
        property: "x"
        from:mainWindow.width/2
        to:0
        duration: 6000
        running: true
    }
    //Animation for moving boat
    PropertyAnimation{
        loops: Animation.Infinite
        target: boatIg
        property: "x"
        to:0
        duration: 6000
        running: true

    }
    //Animation for Sun rising and sun set
    SequentialAnimation on y{
        running: true
        NumberAnimation {
            target: qsun
            property: "y"
            from:mainWindow.height/2-50
            to:14
            duration: 1000

        }

        PauseAnimation {
            duration: 2000
        }
        NumberAnimation {
            target: qsun
            property: "y"
            from:14
            to:mainWindow.height/2-50
            duration: 1000

        }

    }

    //Animation for double the size of the cloud1
    NumberAnimation{
        target: cloud1
        property: "scale"
        from :1
        to:2
        duration: 2000
        running: true
    }

    //animation for drop down the leaf
    ParallelAnimation{
        running: true
        RotationAnimation{
            target: leafImg
            from: 0
            to:360
            duration:6000
        }
        PropertyAnimation{
            target: leafImg
            property: "x"
            from: 50
            to:mainWindow.width
            duration: 3000
        }
        PropertyAnimation{
            target: leafImg
            property: "y"
            from: 225
            to:400
            duration: 3000
        }
    }

}

/*##^##
Designer {
    D{i:1;anchors_height:640;anchors_width:480}
}
##^##*/
