import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Templates 2.2 as T


import GooFee.Palette 1.0


T.ItemDelegate {
    id: control

    implicitWidth: Math.max(background ? background.implicitWidth : 0,
                            contentItem.implicitWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(background ? background.implicitHeight : 0,
                             Math.max(contentItem.implicitHeight,
                                      indicator ? indicator.implicitHeight : 0) + topPadding + bottomPadding)
    baselineOffset: contentItem.y + contentItem.baselineOffset

    padding: 0
    spacing: 12

    contentItem: Text {
        leftPadding: control.indicator ? control.indicator.width + control.spacing : 0

        text: control.text
        font: control.font
        color: control.hovered || control.highlighted ? Palette.textColor : Palette.textDarkColor
        elide: Text.ElideRight
        visible: control.text
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
    }

    indicator: Item {
        implicitWidth: 8
        implicitHeight: 24
        visible: control.highlighted

        Rectangle {
            implicitWidth: 8
            implicitHeight: 8
            radius: 4
            anchors.centerIn: parent

            color: Palette.indicatorColor
        }
    }
}
