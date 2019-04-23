pragma Singleton
import QtQuick 2.0


QtObject {
    readonly property color red: "#d33f49"
    readonly property color orange: "#ff9e3d"

    readonly property color woodsmoke: "#121212"
    readonly property color shark: "#181818"

    readonly property color wildsand: "#f5f5f5"
    readonly property color dustyGray: "#9a9a9a"

    // used
    readonly property color backgroundSidebar: woodsmoke
    readonly property color backgroundContent: shark
    readonly property color backgroundItem: "#282828"

    readonly property color textPrimary: wildsand
    readonly property color textSecondary: dustyGray

    /* colors used in buttons */
    readonly property color buttonColor: woodsmoke
    readonly property color buttonBorderColor: dustyGray
    readonly property color buttonBorderFocusColor: wildsand

    readonly property color textColor: wildsand
    readonly property color textPressedColor: dustyGray
    readonly property color textDarkColor: dustyGray

    readonly property color indicatorColor: orange
}
