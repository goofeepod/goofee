import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import GooFee.Palette 1.0


Pane {
    id: root

    property alias model: _grid.model

    property int minimumCellWidth: 200
    property int maximumElementsInRow: 6

    readonly property int numElementsInRow: Math.min(root.maximumElementsInRow, Math.floor(root.availableWidth / root.minimumCellWidth))
    readonly property int currentCellWidth: Math.floor(root.availableWidth / root.numElementsInRow)

    leftPadding: 32; rightPadding: 16

    background: Rectangle { color: Palette.backgroundContent }

    GridView {
        id: _grid

        anchors.fill: parent

        cellWidth: Math.max(root.minimumCellWidth, root.currentCellWidth)
        cellHeight: cellWidth + 144

        delegate: FeedGridItem {
            id: _delegate

            contentWidth: _grid.cellWidth - 16
            contentHeight: _grid.cellHeight - 16

            title: model.title
            description: model.description
            image: model.image
            episodes: model.episodes
        }
    }
}
