import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Themes 1.3

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "style.liu-xiao-guo"

    width: units.gu(100)
    height: units.gu(75)

    Action {
        id: action1
        text: "action 1"
        iconName: "compose"
        onTriggered: print("one!")
    }

    Page {
        title: "test page"
        Label {
            anchors.centerIn: parent
            text: "Hello, world"
        }

        StyledItem {
            text: "Press to reset"
            style: Rectangle {
                color: "tan"
                Label {
                    anchors {
                        fill: parent
                        margins: units.gu(1)
                    }
                    text: styledItem.text
                }
            }
            onClicked: style = undefined
        }

    }
}
