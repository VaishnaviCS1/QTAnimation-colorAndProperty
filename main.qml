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
    }

    Cloud{
        id:cloud1
        x:6
        y:36
    }
    Sun{
        id:qsun
        x:0
        y:14
    }
    Cloud{
        id:cloud2
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


    PropertyAnimation{
        loops: Animation.Infinite
        target: cloud1
        property: "x"
        from:0
        to:mainWindow.width
        duration: 4000
        running: true
    }

    PropertyAnimation{
        loops: Animation.Infinite
        target: cloud2
        property: "x"
        from:0
        to:mainWindow.width/2
        duration: 6000
        running: true
    }
    PropertyAnimation{
        loops: Animation.Infinite
        target: cloud3
        property: "x"
        from:mainWindow.width
        to:0
        duration: 10000
        running: true
    }
    PropertyAnimation{
        loops: Animation.Infinite
        target: cloud4
        property: "x"
        from:mainWindow.width/2
        to:0
        duration: 6000
        running: true
    }
    PropertyAnimation{
        loops: Animation.Infinite
        target: boatIg
        property: "x"
        to:0
        duration: 6000
        running: true
    }
    PropertyAnimation{
        target: qsun
        property: "x"
        to:mainWindow.width-50
        duration: 4000
        running: true
    }

}

/*##^##
Designer {
    D{i:1;anchors_height:640;anchors_width:480}
}
##^##*/
