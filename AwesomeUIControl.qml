import QtQuick 2.7
import QtQuick.Window 2.0

/*!
   \qmltype AwesomeUIControl
   \brief A customized TextInput control

   This control extends standard TextInput by adding background color,
   paddings, font styles and other stuff. On the screenshot below
   you can see it as an input field with green background.

   \image awesomeuicontrol.png

   \section1 Setting default text and capitalization

   To set the default text, auto-capitalized input and password mode - use the properties

   \qml
   AwesomeUIControl {
       text: "some text"
       echoMode: TextInput.Password
       capitalization: Font.AllUppercase
   }
   \endqml

*/
Rectangle {
    id: ti_border
    width: parent.width
    height: ti.contentHeight * 1.5
    color: ti.activeFocus ? "#DCFFD3" : "#F2FDEF"

    /*!
        Default text to be placed to the field.
    */
    property alias text: ti.text
    /*!
        Internal TextInput.
    */
    property alias input: ti
    /*!
        Echo mode for the field (normal, password, etc)
    */
    property alias echoMode: ti.echoMode
    /*!
        Capitalization mode (all letters are small, big, etc)
    */
    property alias capitalization: ti.font.capitalization

    TextInput {
        id: ti
        leftPadding: 15
        rightPadding: 15
        width: parent.width
        anchors.verticalCenter: parent.verticalCenter
        font.pointSize: 18
        font.family: "Verdana"
        font.italic: ti.activeFocus ? true : false
        clip: true
    }
}
