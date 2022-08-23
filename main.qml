import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import "./customs" as Cust

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 800
    height: 600

    flags: Qt.FramelessWindowHint | Qt.Window

    property color accent: "#0078d4"

    Rectangle {
        anchors.fill: parent
        anchors.margins: 1

        ColumnLayout {
            anchors.fill: parent

            Rectangle {
                Layout.fillWidth: true
                height: 18
                //color: "darkgrey"

                Row {
                    anchors.right: parent.right
                    anchors.rightMargin: 4
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 4

                    Cust.CloseButton {
                        onClicked: {
                            mainWindow.showMinimized()
                        }
                    }

                    Cust.CloseButton {
                        bg_color: "dimgrey"

                        onClicked: {
                            mainWindow.close()
                        }
                        
                    }

                }

            }

            Rectangle {
                Layout.fillWidth: parent
                Layout.preferredHeight: 60
                //color: "dodgerblue"

                RowLayout {
                    anchors.centerIn: parent
                    height: 36
                    spacing: 12

                    TextField {
                        placeholderText: "https://"

                        background: Rectangle {
                            implicitWidth: 380
                            implicitHeight: 30
                            radius: 15
                            border.color: "darkgrey"
                        }
                    }

                    Button {
                        text: "Search"

                        background: Rectangle {
                            implicitWidth: 80
                            height: 30
                            radius: 15
                            border.color: "darkgrey"
                            color: parent.down ? "dimgrey" : "white"
                        }

                        contentItem: Text {
                            text: parent.text
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            color: parent.down ? "white" : "dimgrey"
                        }

                    }

                }

                Rectangle {
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width - 24
                    height: 1
                    color: "darkgrey"
                    anchors.bottom: parent.bottom
                }

            }

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true

                ScrollView {
                    anchors.fill: parent
                    anchors.margins: 12
                    anchors.topMargin: 18
                    clip: true

                    ScrollBar.horizontal.policy: ScrollBar.AlwaysOff

                    ListView {
                        id: lv
                        anchors {
                            fill: parent
                        }
                        width: parent.width
                        height: parent.height
                        model:  ListModel {}
                        spacing: 12
                        delegate: Cust.VideoDelegate {}

                        Component.onCompleted: {
                            lv.model.append({'title': '1', 'thumbnail': '../download.jpg', 'link': '', 'percent': 49})
                        }
                    }

                }

            }

        }

    }

    background: Rectangle {
        color: "#44000000"

        Rectangle {
            anchors.fill: parent
            anchors.margins: 1
        }

    }

}
