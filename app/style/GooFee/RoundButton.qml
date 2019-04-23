import QtQuick 2.9
import QtQuick.Templates 2.2 as T

import GooFee.Palette 1.0


T.RoundButton {
    id: control

    implicitWidth: Math.max(background ? background.implicitWidth : 0,
                            contentItem.implicitWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(background ? background.implicitHeight : 0,
                             contentItem.implicitHeight + topPadding + bottomPadding)
    baselineOffset: contentItem.y + contentItem.baselineOffset

    padding: 6

    scale: !control.pressed && (control.hovered || control.visualFocus) ? 1.05 : 1

    contentItem: Text {
        text: control.text
        font: control.font
        opacity: enabled ? 1 : 0.3
        color: control.pressed ? Palette.textPressedColor : Palette.textColor
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        implicitWidth: 40
        implicitHeight: 40
        radius: control.radius
        opacity: enabled ? 1 : 0.3
        color: Palette.buttonColor
        border.color: !control.pressed && (control.hovered || control.visualFocus) ?
                          Palette.buttonBorderFocusColor : Palette.buttonBorderColor
        border.width: 1
    }

//    contentItem: Text {
//        text: control.text
//        font: control.font
//        opacity: enabled || control.highlighted || control.checked ? 1 : 0.3
//        color: control.checked || control.highlighted ? Palette.textLightColor : (control.visualFocus ? Palette.focusColor : (control.down ? Palette.textDarkColor : Palette.textColor))
//        horizontalAlignment: Text.AlignHCenter
//        verticalAlignment: Text.AlignVCenter
//        elide: Text.ElideRight
//    }

//    background: Rectangle {
//        implicitWidth: 40
//        implicitHeight: 40
//        radius: control.radius
//        opacity: enabled ? 1 : 0.3
//        visible: !control.flat || control.down || control.checked || control.highlighted
//        color: control.checked || control.highlighted ?
//            (control.visualFocus ? (control.down ? Palette.buttonCheckedFocusColor : Palette.focusColor) : (control.down ? Palette.buttonCheckedPressedColor : Palette.buttonCheckedColor)) :
//            (control.visualFocus ? (control.down ? Palette.focusPressedColor : Palette.focusLightColor) : (control.down ? Palette.buttonPressedColor : Palette.buttonColor))
//        border.color: control.visualFocus ? Palette.buttonBorderfocusColor : Palette.buttonBorderColor
//        border.width: control.visualFocus ? 2 : 1
//    }
}
