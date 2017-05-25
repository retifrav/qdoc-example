import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 750
    height: 200
    title: qsTr("QDoc example")

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 10

        Label {
            anchors.top: parent.top
            text: "Here's an example of my custom <b>TextInput</b> control:"
        }

        AwesomeUIControl {
            anchors.verticalCenter: parent.verticalCenter
            Layout.fillWidth: true
            text: "AwesomeUIControl is just a TextInput with some customization"
            capitalization: Font.Capitalize
        }

        Label {
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            text: "[some label in the footer for vertical symmetry]"
        }
    }
}
