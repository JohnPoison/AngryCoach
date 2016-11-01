import QtQuick 2.5
import QtQuick.Layouts 1.1
import Material 0.3
import Material.ListItems 0.1

Page {
    id: searchList

    property alias model: list.model
    property alias defaultModelField: list.defaultModelValue
    property alias listView: list
    signal itemSelected(var item)

    actions: [
        Action {
            name: "Search"
            iconName: "action/search"
        }
    ]

    actionBar {
       customContent: TextField {
           color: Palette.colors["white"]["500"]
           textColor: Palette.colors["white"]["500"]
           placeholderText: qsTr("Search...")
           anchors {
               left: parent.left
               right: parent.right
               verticalCenter: parent.verticalCenter
           }
       }
    }

    SimpleList {
        id: list
        title: searchList.title
        anchors {
            bottom: parent.bottom
            top: parent.top
        }

        onItemClicked: {
            itemSelected(searchList.model[modelIndex])
        }
    }
}