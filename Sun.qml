import QtQuick 2.0

Rectangle {
    id:sun
    width: 70
    height: 70
    color: "yellow"
    radius: width/2

    ColorAnimation on color { to: "red"; duration: 4000 }
}
