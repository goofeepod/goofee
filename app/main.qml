import QtQuick 2.12
import QtQuick.Controls 2.12

import QtQuick.Layouts 1.12

import GooFee.Palette 1.0
import "ui" as Ui


ApplicationWindow {
    id: window

    visible: true
    width: 1024
    height: 768
    title: qsTr("GooFee")

    font.family: "Work Sans"
    font.pixelSize: 12

    FontLoader { source: "qrc:/fonts/WorkSans-Regular.otf" }
    FontLoader { source: "qrc:/fonts/WorkSans-Black.otf" }
    FontLoader { source: "qrc:/fonts/WorkSans-Bold.otf" }
    FontLoader { source: "qrc:/fonts/WorkSans-ExtraLight.otf" }
    FontLoader { source: "qrc:/fonts/WorkSans-ExtraBold.otf" }
    FontLoader { source: "qrc:/fonts/WorkSans-Light.otf" }
    FontLoader { source: "qrc:/fonts/WorkSans-Medium.otf" }
    FontLoader { source: "qrc:/fonts/WorkSans-SemiBold.otf"}

    RowLayout {
        anchors.fill: parent

        spacing: 0

        Ui.SidebarMenu {
            Layout.fillHeight: true
            Layout.preferredWidth: 200

            onAddButtonClicked: dialog.open()
        }

        Ui.FeedGrid {
            Layout.fillWidth: true
            Layout.fillHeight: true

            model: feedModel
        }
    }

    Ui.FeedModel {
        id: feedModel
    }

    Dialog {
        id: dialog
        title: "Title"

        x: (window.width - width) / 2; y: (window.height - height) / 2
        width: 400; height: 300

        standardButtons: Dialog.Ok | Dialog.Cancel
        modal: true

        ColumnLayout {
            anchors.fill: parent

            TextField {
                id: _url
                placeholderText: qsTr("Feed Url")

                Layout.fillWidth: true
            }
        }

        onAccepted: {
            feedModel.append({"title": "Foo", "url": _url.text})
        }

        onRejected: console.log("Cancel clicked")
    }
}
