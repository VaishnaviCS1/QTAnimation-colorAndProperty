import QtQuick 2.0

Rectangle {
    id:boatRect
    height: 200
    width: 300
    color:"transparent"
    Image {

        anchors.fill: boatRect
        id: boatImg
        source: "boat.png"
    }
}
