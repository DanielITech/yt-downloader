import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 800
    height: 600

    property color accent: "dodgerblue"

    ColumnLayout {
        anchors.fill: parent

        Rectangle {
            Layout.fillWidth: parent
            Layout.preferredHeight: 60
            //color: "dodgerblue"

            Rectangle {
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width - 24
                height: 1
                color: "darkgrey"
                anchors.bottom: parent.bottom
            }

        }

        ColumnLayout {
            Layout.fillWidth: true
            //

            RowLayout {
                Layout.margins: 12
                Layout.fillWidth: true
                Layout.maximumHeight: 126
                spacing: 12

                Rectangle {
                    width: 224
                    Layout.fillHeight: true
                    color: "white"

                    Image {
                        anchors.fill: parent
                        source: "t1.jpg"
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Rectangle {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: "gold"
                }

                Rectangle {
                    width: 148
                    Layout.fillHeight: true
                    //color: "pink"

                    ColumnLayout {
                        anchors.fill: parent
                        anchors.margins: 2

                        ComboBox {
                            Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
                            model: ['720p', '1080p']

                            background: Rectangle {
                                implicitWidth: 56
                                implicitHeight: 24
                                radius: 2
                                border.color: "darkgrey"
                            }

                            contentItem: Text {
                                text: parent.displayText
                                color: "darkgrey"
                                //leftPadding: 4
                                rightPadding: 8
                                font.pixelSize: 13
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }

                            indicator: Rectangle {
                                x: 46
                                y: 10
                                width: 4
                                height: width
                                radius: width / 2
                                color: "darkgrey"
                            }
                        }

                        Button {
                            Layout.alignment: Qt.AlignBottom | Qt.AlignHCenter
                            text: "Download"

                            background: Rectangle {
                                implicitWidth: 100
                                implicitHeight: 24
                                color: "dodgerblue"
                                radius: 12
                            }

                            contentItem: Text {
                                text: parent.text
                                verticalAlignment: Text.AlignVCenter
                                horizontalAlignment: Text.AlignHCenter
                                color: "white"
                            }
                        }

                    }

                }

            }

        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "transparent"
        }

    }

}
