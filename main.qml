import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import com.example.window 2.15

OZWindow {
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
