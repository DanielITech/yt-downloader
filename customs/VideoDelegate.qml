import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import "." as Cust

Component {
    RowLayout {
        width: ListView.view.width
        height: 126
        spacing: 12

        Rectangle {
            width: 224
            Layout.fillHeight: true
            color: "white"

            Image {
                anchors.fill: parent
                source: thumbnail//"../download.jpg"
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            //color: "gold"

            Text {
                text: title//"Big Buck Bunny 60fps 4K - Official Blender Foundation Short Film"
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

                Cust.ComboBox {
                    Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
                    model: ['720p', '1080p']
                }

                Cust.DownloadButton {
                    Layout.alignment: Qt.AlignBottom | Qt.AlignHCenter
                    text: "Download"
                }

            }

        }

    }
}