import QtQuick 2.0

Rectangle {
    id:sky
    width: parent.width
    height: parent.height-100
    color: "#6490c8"
    Rectangle{
       anchors.bottom: sky.bottom
        id:mountRect
        y: 100
        width: parent.width
        height: sky.height-100
        color:"transparent"
    }
    Image{
        anchors.fill: mountRect
        source: "mountain1.png"
    }
    ColorAnimation on color{
        to:"#f2b7b7"
        duration: 4000
    }
}
