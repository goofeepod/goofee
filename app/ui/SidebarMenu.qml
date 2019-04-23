import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import GooFee.Palette 1.0


Pane {
    id: root

    signal addButtonClicked()

    padding: 8
    background: Rectangle { color: Palette.backgroundSidebar }

    ColumnLayout {
        anchors.fill: parent

        spacing: 8

        ListView {
            id: _menu
            model: ListModel {
                ListElement { title: "All" }
                ListElement { title: "Loved" }
                ListElement { title: "Science"; group: "Categories" }
                ListElement { title: "Comedy"; group: "Categories" }
                ListElement { title: "News"; group: "Categories" }
            }

            delegate: ItemDelegate {
                width: parent.width
                text: title

                font.pixelSize: 14

                highlighted: ListView.isCurrentItem
                onClicked: _menu.currentIndex = index
            }

            section.property: "group"
            section.criteria: ViewSection.FullString
            section.delegate: Label {
                topPadding: 20; leftPadding: 20; bottomPadding: 8
                text: section

                color: Palette.textDarkColor
                font.pixelSize: 14
                font.capitalization: Font.AllUppercase
                font.weight: Font.Light
                font.letterSpacing: 2
            }

            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        RoundButton {
            text: "Add Feed"
            highlighted: true
            onClicked: root.addButtonClicked()

            Layout.fillWidth: true
        }
    }
}
