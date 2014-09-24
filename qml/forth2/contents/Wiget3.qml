import QtQuick 2.0
import QtQuick.Controls 1.1
import Camera1394 1.0
Rectangle
{
    anchors.fill: parent
    anchors.margins: 10
    color:"#00000000"
    Rectangle{
         id:aucamera
         anchors.fill: parent
         anchors.rightMargin: 300
         color:"#707070"
          Camera1394 {
            anchors.fill: parent
            id: camera1394test

//                        renderTarget: FramebufferObject
            Timer{
                id: cameratimer
                interval: 50
                repeat: true
                onTriggered: {
                    time.text = Date().toString()
                    camera1394test.updatecamera()
                }
            }
            Timer{
                id: valuetimer
                interval: 10000;
                repeat: true
                onTriggered: {
                    imagevalue.getImageValue();
                }
            }
            Timer{
                id:buttontimer
                interval: 5000
                running: true
                repeat: false
                onTriggered: {
                    camera1394test.startcamera()
                    cameratimer.start()
                    valuetimer.start()
                }
            }

//            Button {
//                id: button1
//                text: "StartCamera"
//                iconSource: qsTr("")
//                activeFocusOnPress: false
//                checked: false
//                anchors.left: parent.left
//                anchors.leftMargin: 0
//                anchors.top: parent.top
//                anchors.topMargin: 0
//                onClicked:{
//                    camera1394test.startcamera()
//                    cameratimer.start()
//                    valuetimer.start()
//                }
//            }
            Text {
                id: time
                text: "time"
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                style: Text.Raised
                font.pointSize: 15
            }
           }
    }
    Rectangle{
        id:aucharacter
        anchors.top:parent.top
        anchors.left: aucamera.right
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        color: "gray"
        Rectangle{
            anchors.fill: parent
        Column{
            anchors.top: parent.top
            id:pinweiyuce
            width: parent.width
            height: 195
            spacing: 5



        Rectangle{
            width: parent.width
            height: 45
            color: "#000000"
           Text{
                id:pinwei
                anchors.centerIn: parent
                text: "原矿品位预测"
                font.pixelSize:40
                font.italic: true
                color: "#00FFFF"
            }
        }
        Row{
            width: parent.width
            spacing: 6

        Rectangle{
            width: parent.width/2-13
            height: 145
            color: "#000000"
           Text{
                id:pinwei2
                anchors.centerIn: parent
                text: "品位"
                font.pixelSize:50
                font.italic: true
                color: "#00FF00"

            }
           function getpinwei()
           {


           }
        }
        Rectangle{
            width: parent.width/2+7
            height: 145
            color: "#000000"
            ListModel {
                id: dummyModel
                Component.onCompleted: {
                    append({"编号": 1, "名称": "极低 " , "品位范围" :"0~1"})
                    append({"编号": 2, "名称": "A title " , "品位范围" :"0~1"})
                    append({"编号": 3, "名称": "A title " , "品位范围" :"0~1"})
                    append({"编号": 4, "名称": "A title " , "品位范围" :"0~1"})
                    append({"编号": 5, "名称": "A title " , "品位范围" :"0~1"})
                    append({"编号": 6, "名称": "A title " , "品位范围" :"0~1"})
                    append({"编号": 7, "名称": "A title " , "品位范围" :"0~1"})
                    append({"编号": 8, "名称": "A title " , "品位范围" :"0~1"})
                    append({"编号": 9, "名称": "A title " , "品位范围" :"0~1"})
                }
            }
            TableView{
                model: dummyModel
                anchors.fill: parent
                TableViewColumn {
                    role: "编号"
                    title: "#"
                    width: 30
                }
                TableViewColumn {
                    role: "名称"
                    title: "名称"
                    width: 50
                }
                TableViewColumn {
                    role: "品位范围"
                    title: "品位范围"
                    width: 60

                }
            }
        }
        }

}
        Rectangle{

            anchors.top:pinweiyuce.bottom
            width: parent.width
            height:18
            color: "#009090"
        }
        Column{
            anchors.top: pinweiyuce.bottom
            anchors.topMargin: 15
            anchors.bottom: parent.bottom
            width: parent.width
            spacing: 5

        Rectangle{

            width: parent.width
            height: 45
            color: "#000000"
           Text{
                anchors.centerIn: parent
                text: "泡沫特征"
                font.pixelSize:40
                font.italic: true
                color: "#00FFFF"
            }
        }
        Rectangle{
            id:tezheng1
            width: parent.width
            height: (parent.height-75)/6
            color: "#000000"
           Text{
                id:bubblesize
                anchors.centerIn: parent
                text: "泡沫大小: " +imagevalue.BubbleSize
                font.pixelSize:30
                font.italic: true
                color: "#00FF00"
            }
        }
        Rectangle{
            width: parent.width
            height: tezheng1.height
            color: "#000000"
           Text{
                id:bubblenumber
                anchors.centerIn: parent
                text: "泡沫个数: "+imagevalue.BubbleNumber
                font.pixelSize:30
                font.italic: true
                color: "#00FF00"
            }
        }
        Rectangle{
            width: parent.width
            height: tezheng1.height
            color: "#000000"
           Text{
                id:graymean
                anchors.centerIn: parent
                text: "泡沫颜色: "+imagevalue.GrayMean
                font.pixelSize:30
                font.italic: true
                color: "#00FF00"
            }
        }
        Rectangle{
            width: parent.width
            height: tezheng1.height
            color: "#000000"
           Text{
                id:bubblefangcha
                anchors.centerIn: parent
                text: "泡沫方差"
                font.pixelSize:30
                font.italic: true
                color: "#00FF00"
            }
        }
        Rectangle{
            width: parent.width
            height: tezheng1.height
            color: "#000000"
           Text{
                id:chengzailv
                anchors.centerIn: parent
                text: "承载率"
                font.pixelSize:30
                font.italic: true
                color: "#00FF00"
            }
        }
        Rectangle{
            width: parent.width
            height: tezheng1.height
            color: "#000000"
           Text{
                id:bubblerate
                anchors.centerIn: parent
                text: "泡沫速度"
                font.pixelSize:30
                font.italic: true
                color: "#00FF00"
            }
        }


        }

}
    }

}
