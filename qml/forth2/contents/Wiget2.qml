import QtQuick 2.0
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
    Rectangle {
        id: rectangle1
        width: parent.width
        height: parent.height
        ColumnLayout {
            id: columnLayout1
            width: rectangle1.width*14/30
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.top: parent.top
            anchors.topMargin: 8

            Rectangle {
                id: rectangle2
                height: rectangle1.height*14/30
                color: "#c92c2c"
                border.color: "#d2c1c1"
                anchors.right: parent.right
                anchors.rightMargin: 8
                anchors.left: parent.left
                anchors.leftMargin: 8
                anchors.top: parent.top
                anchors.topMargin: 8

                Rectangle {
                    id: rectangle6
                    height: rectangle1.height*12/30
                    color: "#ffffff"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 8
                    anchors.right: parent.right
                    anchors.rightMargin: 8
                    anchors.left: parent.left
                    anchors.leftMargin: 8

                }

                Rectangle {
                    id: rectangle4
                    height: rectangle1.height/30
                    color: "#ffffff"
                    radius: 8
                    anchors.right: parent.right
                    anchors.rightMargin: 40
                    anchors.left: parent.left
                    anchors.leftMargin: 40
                    anchors.top: parent.top
                    anchors.topMargin: 8

                    Text {
                        id: text1
                        color: "#f30707"
                        anchors.centerIn: parent
                        text: qsTr("金粗选槽视频")
                        font.pixelSize: 16
                    }

            }

            }

            Rectangle {
                id: rectangle3
                y: 362
                height: rectangle1.height*14/30
                color: "#c92c2c"
                anchors.right: parent.right
                anchors.rightMargin: 8
                anchors.left: parent.left
                anchors.leftMargin: 8
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 8
                Rectangle {
                    id: rectangle8
                    height: rectangle1.height*12/30
                    color: "#ffffff"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 8
                    anchors.right: parent.right
                    anchors.rightMargin: 8
                    anchors.left: parent.left
                    anchors.leftMargin: 8
                }
                Rectangle {
                    id: rectangle5
                    height: rectangle1.height/30
                    color: "#ffffff"
                    radius: 8
                    anchors.right: parent.right
                    anchors.rightMargin: 40
                    anchors.left: parent.left
                    anchors.leftMargin: 40
                    anchors.top: parent.top
                    anchors.topMargin: 8

                    Text {
                        id: text2
                        color: "#f30707"
                        anchors.centerIn: parent
                        text: qsTr("锑粗选槽视频")
                        font.pixelSize: 16
                    }
            }
        }



    }
        ColumnLayout {
            id: columnLayout3
            anchors.left: columnLayout1.right
            anchors.rightMargin: 0
            anchors.right: columnLayout2.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.top: parent.top
            anchors.topMargin: 8
            Rectangle{
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 8
                height: rectangle1.height*14/30
                Image {
                    id: arrow1
                    source: "arrow.png"
                    anchors.centerIn: parent
                }

            }
            Rectangle{
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.bottom: parent.bottom
                anchors.topMargin: 8
                height: rectangle1.height*14/30

                Image {
                    id: arrow2
                    source: "arrow.png"
                    anchors.centerIn: parent
                     }
            }


        }
        ColumnLayout {
            id: columnLayout2
            width: rectangle1.width*14/30
            anchors.right:  parent.right
            anchors.rightMargin: 8
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.top: parent.top
            anchors.topMargin: 8
            Rectangle {
                id: rectangle9
                height: rectangle1.height*14/30
                color: "#c92c2c"
                border.color: "#d2c1c1"
                anchors.right: parent.right
                anchors.rightMargin: 8
                anchors.left: parent.left
                anchors.leftMargin: 8
                anchors.top: parent.top
                anchors.topMargin: 8

                Rectangle {
                    id: rectangle10
                    height: rectangle1.height*12/30
                    color: "#ffffff"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 8
                    anchors.right: parent.right
                    anchors.rightMargin: 8
                    anchors.left: parent.left
                    anchors.leftMargin: 8
                    AuYaoji{

                    }
                }

                Rectangle {
                    id: rectangle11
                    height: rectangle1.height/30
                    color: "#ffffff"
                    radius: 8
                    anchors.right: parent.right
                    anchors.rightMargin: 40
                    anchors.left: parent.left
                    anchors.leftMargin: 40
                    anchors.top: parent.top
                    anchors.topMargin: 8

                    Text {
                        id: text3
                        color: "#f30707"
                        anchors.centerIn: parent
                        text: qsTr("金粗选槽加药")
                        font.pixelSize: 16
                    }

            }

            }

            Rectangle {
                id: rectangle12
                y: 362
                height: rectangle1.height*14/30
                color: "#c92c2c"
                anchors.right: parent.right
                anchors.rightMargin: 8
                anchors.left: parent.left
                anchors.leftMargin: 8
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 8
                Rectangle {
                    id: rectangle13
                    height: rectangle1.height*12/30
                    color: "#ffffff"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 8
                    anchors.right: parent.right
                    anchors.rightMargin: 8
                    anchors.left: parent.left
                    anchors.leftMargin: 8
                    SbYaoji{

                    }
                }
                Rectangle {
                    id: rectangle14
                    height: rectangle1.height/30
                    color: "#ffffff"
                    radius: 8
                    anchors.right: parent.right
                    anchors.rightMargin: 40
                    anchors.left: parent.left
                    anchors.leftMargin: 40
                    anchors.top: parent.top
                    anchors.topMargin: 8

                    Text {
                        id: text4
                        color: "#f30707"
                        anchors.centerIn: parent
                        text: qsTr("锑粗选槽加药")
                        font.pixelSize: 16
                    }
            }
        }

    }
    }

