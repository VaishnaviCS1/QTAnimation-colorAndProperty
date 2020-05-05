import QtQuick 2.0

Rectangle {
    id:cloudRect
    height: 50
    width: 100
    color:"transparent"
    Image {

        anchors.fill: cloudRect
        id: cloudImg
        source: "cloud2.png"
    }
}
