import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Themes 1.3
import Ubuntu.Components.Styles 1.3

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "style.liu-xiao-guo"

    width: units.gu(60)
    height: units.gu(85)

    Action {
        id: action1
        text: "action 1"
        iconName: "compose"
        onTriggered: print("one!")
    }

    Page {
        header: PageHeader {
            id: pageHeader
            title: i18n.tr("pageheaderstyle")

            style: PageHeaderStyle {
                foregroundColor: UbuntuColors.orange
                backgroundColor: UbuntuColors.porcelain
                dividerColor: UbuntuColors.slate
                contentHeight: units.gu(10)
                Label {
                    anchors.centerIn: parent
                    fontSize: "x-large"
                    text: styledItem.title
                }
                implicitHeight: contentHeight
            }
        }

        Image {
            id: pressed
            source: "images/pressed.jpg"
            visible: false
        }

        Image {
            id: unpressed
            source: "images/unpressed.jpg"
            visible: false
        }

        Column {
            anchors.centerIn: parent
            spacing: units.gu(5)

            Button {
                id: button1
                width: units.gu(40)
                height: units.gu(15)
                text: "Nice"
                StyleHints {
                    defaultColor: button1.pressed ? "blue" : "red"
                }
            }

            Button {
                id: button2
                width: units.gu(40)
                height: units.gu(15)
                text: "Nice"
                StyleHints {
                    backgroundSource: button2.pressed ? pressed : unpressed
                }
            }
        }
    }
}

