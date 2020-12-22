import Felgo 3.0
import QtQuick 2.0
import QtQuick.Window 2.0
import QtMultimedia 5.9

App {
    id: app
    // main page





       NavigationStack {


          Page {
          id: mainPage





        SoundEffect{
            id: clicksound
            source: "Clapping hand(sound effect) (mp3cut.net).wav"

        }
        SoundEffect{
            id: wronganswer
            source: "wrong.wav"
        }
        SoundEffect{
            id: buttonss
            source: "buttonss.wav"
        }
        SoundEffect{
            id:byebye
            source: "bye.wav"
        }



        BackgroundImage{
            id:pic
            anchors.fill: parent
            source:"../—Pngtree—61 children s playground roller_1064185.jpg"

        Column {
          anchors.centerIn: parent

          // text to show the current count and button to push the second page
          AppText{

              text: "Start Game"
              fontSize: 35
              x : 40
              color: "white"
              bottomPadding: 20




          }

          AppButton {
              id: junior
              text: "Beginner"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              backgroundColorPressed: "green"
              textSize: 32
              width: 300
              height: 80
              radius: 100
              fontBold: true
              onClicked: buttonss.play()

          }
          AppButton {
              id: intermediate
              text: "Intermediate"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              backgroundColorPressed: "yellow"
              textSize: 32
              width: 300
              height: 80
              radius: 100
              fontBold: true
              onClicked: buttonss.play()



          }
          AppButton {
              id:professional
              text: "Professional"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              backgroundColorPressed: "red "
              textSize: 32
              width: 300
              height: 80
              radius: 100
              fontBold: true
              onClicked: {
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage1)
              }
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              backgroundColorPressed: "blue"
              textSize: 32
              width: 300
              height: 80
              radius: 100
              fontBold: true
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
          }
        }
      }
    }

    // inline-definition of a component, which is later pushed on the stack
    Component {
      id: professionalPage1
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{

            text: "Choose Word Starts with (أ)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "أرنب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()

          }
          AppButton {
            text: "بطة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()



          }
          AppButton {
            text: "جمل"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "هدية"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage2)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }

    Component {
      id: professionalPage2
      Page {
        title: " Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ب)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "أسد"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()



          }
          AppButton {
            text: "برتقالة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()


          }
          AppButton {
            text: "مدرسة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          AppButton {
            text: "ثعلب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage3)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage3
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ت)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "سيارة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          AppButton {
            text: "بحر"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()




          }
          AppButton {
            text: "تفاحة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()



          }
          AppButton {
            text: "زرافة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()



          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage4)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage4
      Page {
        title: " Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ث)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "قطار"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          AppButton {
            text: "ثعلب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()



          }
          AppButton {
            text: "بيت"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          AppButton {
            text: "تمساح"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage5)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }




    Component {
      id: professionalPage5
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ج)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "دراجة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "رجل"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          AppButton {
            text: "معلم"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          AppButton {
            text: "جبل"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()

          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage6)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }


    Component {
      id: professionalPage6
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ح)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "هاتف"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "فيل"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          AppButton {
            text: "حيوان"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()

          }
          AppButton {
            text: "كمبيوتر"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage7)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage7
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: " Choose Word Starts With (خ)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "حصان"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "عصفور"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          AppButton {
            text: "خروف"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()

          }
          AppButton {
            text: "قرد"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage8)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }

    Component {
      id: professionalPage8
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (د)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "دبابة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()
          }
          AppButton {
            text: "باب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          AppButton {
            text: "مهندس"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          AppButton {
            text: "سحاب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage9)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }


    Component {
      id: professionalPage9
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ذ)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "بجعة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "ظابط"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          AppButton {
            text: "ذئب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()


          }
          AppButton {
            text: "قمر"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage10)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }

    Component {
      id: professionalPage10
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ر)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "جماد"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "مستشفي"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          AppButton {
            text: "عصفور"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "ريح"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()

          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage11)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
}

    Component {
      id: professionalPage11
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ز)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "زرافة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()
          }
          AppButton {
            text: "فاكهة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          AppButton {
            text: "طالب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "ضباب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage12)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage12
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (س)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "شمس"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "سفينة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()

          }
          AppButton {
            text: "صنارة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          AppButton {
            text: "كوكب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage13)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage13
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ش)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "سرير"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "خزانة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          AppButton {
            text: "شمس"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()

          }
          AppButton {
            text: "محيط"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage14)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }

    Component {
      id: professionalPage14
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ص)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "صباح"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()
          }
          AppButton {
            text: "مساء"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          AppButton {
            text: "زهرة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          AppButton {
            text: "ىاسمين"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage15)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage15
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ض)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "عين"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "ضبع"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()

          }
          AppButton {
            text: "تمساح"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          AppButton {
            text: "يابس"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage16)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage16
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ط)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "جمال"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "طائرة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()

          }
          AppButton {
            text: "ظرف"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          AppButton {
            text: "كورة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage17)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage17
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ظ)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "ظابط"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()
          }
          AppButton {
            text: "لاعب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          AppButton {
            text: "مدرب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          AppButton {
            text: "ريح"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage18)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage18
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ع)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "جماد"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "مستشفي"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          AppButton {
            text: "غريب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          AppButton {
            text: "عامل"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()

          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage19)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage19
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ف)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "قرد"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "فوز"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()


          }
          AppButton {
            text: "حمار"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          AppButton {
            text: "بجعة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage20)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage20
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ق)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "قلب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()
          }
          AppButton {
            text: "جامعة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          AppButton {
            text: "حمار"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          AppButton {
            text: "هواء"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage21)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage21
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ك)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "فأر"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "قطة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "كلب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()

          }
          AppButton {
            text: "عصفور"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage22)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage22
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ل)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "أسد"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "سماء"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          AppButton {
            text: "كوكب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          AppButton {
            text: "ليمون"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()

          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage23)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage23
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (م)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "حصان"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "مستشفي"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()


          }
          AppButton {
            text: "جامعة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          AppButton {
            text: "طائرة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage24)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage24
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ن)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "زهرة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "ذئب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          AppButton {
            text: "نملة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()

          }
          AppButton {
            text: "شمس"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage25)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage25
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ه)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "عين"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          AppButton {
            text: "هجرة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()


          }
          AppButton {
            text: "ثورة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          AppButton {
            text: "تفاحة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage26)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage26
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (و)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "رسالة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()
          }
          AppButton {
            text: "سؤال"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          AppButton {
            text: "وجع"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()

          }
          AppButton {
            text: "مزانية"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage27)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }

    Component {
      id: professionalPage27
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{
            text: "Choose Word Starts With (ي)"
            fontSize: 35
            topPadding:15
            x:200
            color: "white"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "نعناع"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "ياسمين"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()


          }
          AppButton {
            text: "حصان"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          AppButton {
            text: "ثعلب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            x:100
            backgroundColorPressed: "red"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: wronganswer.play()

          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage28)
              }

              x:-120
              y:150
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(mainPage)
              }
              x:80
              y:150
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked:{
                  byebye.play()
                  Qt.quit()
              }
              textSize: 32
              width: 150
              height: 80
              radius: 100
              fontBold: true
              x:250
              y:150


          }
          }
        }
      }
    }
    }
    Component {
      id: professionalPage28
      Page {
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"


}
        Text {
            anchors.centerIn: parent
            text: qsTr("Congratulations You Passed The Professional Level Successfully")
            font.bold: true
            font.pointSize: 20
            color: "#3D35D3"
        }
//        Row{
//            spacing: 50
//        AppButton{
//            text: "MainPage"
//            textColor: "black"
//            backgroundColor: "lightsteelblue"
//            onClicked:{
//                buttonss.play()
//                mainPage.navigationStack.push(mainPage)
//            }
//            x:80
//            y:150
//            textSize: 32
//            width: 150
//            height: parent.width/4
//            radius: parent.height/4
//            fontBold: true
//        }
//        AppButton{
//            text: "Exit"
//            textColor: "black"
//            backgroundColor: "lightsteelblue"
//            onClicked:{
//                byebye.play()
//                Qt.quit()
//            }
//            textSize: 32
//            width: parent.width/4
//            height: parent.height/4
//            radius: 100
//            fontBold: true
//            x:250
//            y:150



//        }

//      }
      }
}
}


