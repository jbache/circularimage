import QtQuick 2.3
import QtGraphicalEffects 1.0

Item {
    id: circularMask
    property alias fillMode: image.fillMode
    property alias source: image.source
    property alias sourceSize: image.sourceSize
    property alias mipmap: image.mipmap
    property alias status: image.status
    property alias verticalAlignment: image.verticalAlignment
    property alias smooth: image.smooth
    property alias horizontalAlignment: image.horizontalAlignment
    property alias progress: image.progress
    property alias asynchronous: image.asynchronous
    property alias paintedWidth: image.paintedWidth
    property alias paintedHeight: image.paintedHeight

    implicitWidth: image.implicitWidth
    implicitHeight: image.implicitHeight

    Rectangle {
        id: maskItem
        anchors.fill: parent
        visible: false
        radius: width/2
    }

    Image {
        id: image
        anchors.fill: parent
        visible: false
        fillMode: Image.PreserveAspectCrop
    }

    OpacityMask {
        id: opacityMask
        anchors.fill: parent
        source: image
        maskSource: maskItem
    }

}
