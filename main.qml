import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

ApplicationWindow {
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

                    Rectangle {
                        width: 10
                        height: 10
                        radius: 5
                        color: "darkgrey"//"#77000000"
                    }

                    Rectangle {
                        width: 10
                        height: 10
                        radius: 5
                        color: "dimgrey"
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
                        }

                        contentItem: Text {
                            text: parent.text
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            color: "darkgrey"
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

            ColumnLayout {
                Layout.fillWidth: true
                

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
                            source: "download.jpg"
                            fillMode: Image.PreserveAspectFit
                        }
                    }

                    Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        //color: "gold"

                        Text {
                            text: "Big Buck Bunny 60fps 4K - Official Blender Foundation Short Film"
                            font.pixelSize: 16
                            wrapMode: Text.Wrap
                            height: parent.height
                            width: parent.width
                            color: Qt.rgba(0,0,0,0.7)
                        }
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
                                    color: accent
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
                            source: "sprite.jpg"
                            fillMode: Image.PreserveAspectFit
                        }
                    }

                    Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        //color: "gold"

                        Text {
                            text: "Sprite Fright - Blender Open Movie"
                            font.pixelSize: 16
                            wrapMode: Text.Wrap
                            height: parent.height
                            width: parent.width
                            color: Qt.rgba(0,0,0,0.7)
                        }
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
                                    color: accent
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
                            source: "cam.jpg"
                            fillMode: Image.PreserveAspectFit
                        }
                    }

                    Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        //color: "gold"

                        Text {
                            text: "Caminandes 3: Llamigos"
                            font.pixelSize: 16
                            wrapMode: Text.Wrap
                            height: parent.height
                            width: parent.width
                            color: Qt.rgba(0,0,0,0.7)
                        }
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
                                    color: accent
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
