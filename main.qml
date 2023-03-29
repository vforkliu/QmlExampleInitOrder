import QtQuick 2.12
import QtQuick.Window 2.12
import ObricUI 1.0 as ObricUI

ObricUI.OWindow {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Component.onCompleted: {
        console.info("+++ root::onCompleted");
    }

    Item {
        id: first
        anchors.fill: parent
        Component.onCompleted: {
            console.info("+++ root.first::onCompleted");
        }
    }

    Item {
        id: second
        anchors.fill: parent
        Component.onCompleted: {
            console.info("+++ root.second::onCompleted");
        }
    }

    VToolBar{
        id: toolbar
        height: 32
        width: parent.width
        Component.onCompleted: {
            console.info("+++ root.toolbar::onCompleted");
        }
    }
}
