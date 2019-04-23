import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import GooFee.Palette 1.0


/** An item of the main grid that shows infos
  * about one of the saved feeds.
  */
Pane {
    id: root

    /** The main title of the item */
    property alias title: _title.text

    /** A brief description for this item */
    property alias description: _description.text

    /** The number of episodes */
    property int episodes: 0

    property alias image: _image.source

    padding: 0

    background: Rectangle { color: Palette.backgroundItem }

    Column {
        spacing: 0

        /* The logo of the feed */
        Item {
            id: _logo
            width: root.contentWidth; height: width

            Image {
                id: _image
                anchors.fill: parent
                asynchronous: true

                fillMode: Image.PreserveAspectCrop

                clip: true
                mipmap: true
            }
        }

        /* Feed title with a brief description and the number
         * of articles/episodes. */
        Item {
            width: root.contentWidth
            height: 144

            ColumnLayout {
                spacing: 8

                anchors {
                    fill: parent
                    topMargin: 12
                    leftMargin: 8
                    rightMargin: 12
                    bottomMargin: 8
                }

                Label {
                    id: _title
                    wrapMode: Text.Wrap
                    elide: Text.ElideRight

                    color: Palette.textPrimary
                    font.pixelSize: 14

                    Layout.fillWidth: true
                }

                Label {
                    id: _description
                    wrapMode: Text.Wrap
                    elide: Text.ElideRight
                    lineHeight: 1.2

                    color: Palette.textSecondary

                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }

                Label {
                    id: _episodes
                    text: qsTr("%1 episodes").arg(root.episodes)
                    elide: Text.ElideRight

                    color: Palette.textSecondary
                    font.pixelSize: 14
                    font.capitalization: Font.AllUppercase
                    font.letterSpacing: 2

                    Layout.fillWidth: true
                }
            }
        }
    }
}
