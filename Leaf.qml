import QtQuick 2.0

Rectangle {
    id:leafRect
    width:30
    height: 30
    color: "transparent"
    Image{
        anchors.fill:leafRect
        source: "leaf.png"
    }
}
