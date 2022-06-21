import QtQuick 2.0

Rectangle {
    id: bg
    property string titolo: ""
    property string paragrafo: ""
    property string parCol: expanded ? "#4D4D4D" : "#F2F2F2"
    property bool expanded: false
    height: expanded ? 200 : 50
    width: 300
    color: "#F2F2F2"
    Text {
        font.pointSize: 20
        text: qsTr(titolo)

    }
    Text {
        id: p
        y: 35
        width: parent.width
        text: expanded ? paragrafo : qsTr("")
        font.pointSize: 10
        color: parCol
        Behavior on color {
            ColorAnimation {
                duration: 200
            }
        }
    }
    Behavior on height {
        NumberAnimation { duration: 300 }
    }
    function espandi(){
        if(!expanded)
            expanded=true;
        else comprimi()
    }
    function comprimi(){
        expanded=false;
    }
}
