import QtQuick 2.15

Item {
    id: control

    Rectangle {
        id: background
        anchors.fill: parent

        Component.onCompleted: {
            console.info("+++ control VToolBar.background::onCompleted");
        }
    }

    Item {
        id: first
        anchors.fill: parent
        Component.onCompleted: {
            console.info("+++ control VToolBar.first::onCompleted");
        }
    }

    Item {
        id: second
        anchors.fill: parent
        Component.onCompleted: {
            console.info("+++ control VToolBar.second::onCompleted");
        }
    }
}
