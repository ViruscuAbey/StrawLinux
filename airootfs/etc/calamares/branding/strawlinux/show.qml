import QtQuick 2.0
import calamares.slideshow 1.0

Slideshow {
    id: slideshow

    Timer {
        interval: 10000
        running: true
        repeat: true
        onTriggered: slideshow.next()
    }

    Slide {
        Image {
            source: "welcome.png"
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
            width: parent.width * 0.8
        }
        Text {
            text: "StrawLinux'a Hoş Geldiniz! | Welcome | 欢迎"
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: 50
            font.pixelSize: 24
            color: "#eceff4"
        }
    }

    Slide {
        Text {
            text: "Hızlı, Modern & Küresel"
            anchors.centerIn: parent
            font.pixelSize: 32
            color: "#88c0d0"
        }
        Text {
            text: "Arch Linux | KDE Plasma | Multi-Language Support"
            anchors.top: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 20
            font.pixelSize: 18
            color: "#eceff4"
        }
    }
}
