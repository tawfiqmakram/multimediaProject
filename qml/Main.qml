import Felgo 3.0
import QtQuick 2.0
import QtQuick.Window 2.0

App {
    id: app
    // main page
    NavigationStack {
      Page {
        id: mainPage

        title: " MAIN PAGE"


        BackgroundImage{
            id:pic
            anchors.fill: parent
            source:"../1422-1.png"

        Column {
          anchors.centerIn: parent

          // text to show the current count and button to push the second page
          AppText{
              anchors.horizontalCenter: parent.horizontalCenter
              text: "Start Game"
          }

          AppButton {
              id: junior
              text: "Beginner"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              backgroundColorPressed: "green"

          }
          AppButton {
              id: intermediate
              text: "Intermediate"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              backgroundColorPressed: "yellow"

          }
          AppButton {
              id:professional
              text: "Professional"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              backgroundColorPressed: "red "

              onClicked: {
                  mainPage.navigationStack.push(professionalPage1)
              }
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              backgroundColorPressed: "blue"
              onClicked: Qt.quit()
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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts with (أ)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "أرنب"
            textColor: "black"
            backgroundColor: "lightsteelblue"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)
            backgroundColorPressed: "green"

          }
          AppButton {
            text: "بطة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
//            onClicked: mainPage.navigationStack.push(counterPageComponent1)
            backgroundColorPressed: "red"


          }
          AppButton {
            text: "جمل"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"
//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "هدية"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage2)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

          }
          }
        }
      }
    }
    }
    Component{
        id:counterPageComponent
        Page{
//            title: "اجابتك هنا "
            backgroundColor: "#A580C8"
            BackgroundImage{
                anchors.fill: parent
                source: "../1422-1.png"

            AppButton{
                text: "Correct Answer"
                anchors.centerIn: parent
                backgroundColor: "green"
            }
        }

  }
  }
    Component{
        id:counterPageComponent1
        Page{
//            title: "اجابتك هنا "
            backgroundColor: "#A580C8"
            BackgroundImage{
                anchors.fill: parent
                source: "../1422-1.png"

            AppButton{
                text: "Wrong Answer"
                anchors.centerIn: parent
                backgroundColor: "red"
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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ب)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "أسد"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"
//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "برتقالة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)



          }
          AppButton {
            text: "مدرسة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "ثعلب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage3)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ت)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "سيارة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "بحر"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)



          }
          AppButton {
            text: "تفاحة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)


          }
          AppButton {
            text: "زرافة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage4)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ث)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "قطار"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "ثعلب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)



          }
          AppButton {
            text: "بيت"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "تمساح"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage5)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ج)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "دراجة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "رجل"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)



          }
          AppButton {
            text: "معلم"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "جبل"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage6)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ح)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "هاتف"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"


//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "فيل"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)



          }
          AppButton {
            text: "حيوان"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)


          }
          AppButton {
            text: "كمبيوتر"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage7)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: " Choose Word Starts With (خ)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "حصان"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "عصفور"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)



          }
          AppButton {
            text: "خروف"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)


          }
          AppButton {
            text: "قرد"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage8)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (د)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "دبابة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)

          }
          AppButton {
            text: "باب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)



          }
          AppButton {
            text: "مهندس"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "سحاب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage9)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ذ)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "بجعة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "ظابط"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)



          }
          AppButton {
            text: "ذئب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)


          }
          AppButton {
            text: "قمر"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage10)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ر)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "جماد"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"


//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "مستشفي"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)



          }
          AppButton {
            text: "عصفور"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "ريح"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage11)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ز)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "زرافة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"


//            onClicked: mainPage.navigationStack.push(counterPageComponent)

          }
          AppButton {
            text: "فاكهة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)



          }
          AppButton {
            text: "طالب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "ضباب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage12)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (س)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "شمس"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"


//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "سفينة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)



          }
          AppButton {
            text: "صنارة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "كوكب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage13)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ش)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "سرير"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "خزانة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)



          }
          AppButton {
            text: "شمس"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)


          }
          AppButton {
            text: "محيط"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage14)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ص)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "صباح"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"


//            onClicked: mainPage.navigationStack.push(counterPageComponent)

          }
          AppButton {
            text: "مساء"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)



          }
          AppButton {
            text: "زهرة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "ىاسمين"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage15)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ض)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "عين"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"


//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "ضبع"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)



          }
          AppButton {
            text: "تمساح"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "يابس"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage16)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ط)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "جمال"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"


//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "طائرة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)



          }
          AppButton {
            text: "ظرف"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "كورة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage17)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ظ)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "ظابط"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"


//            onClicked: mainPage.navigationStack.push(counterPageComponent)

          }
          AppButton {
            text: "لاعب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)



          }
          AppButton {
            text: "مدرب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "ريح"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage18)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ع)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "جماد"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"


//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "مستشفي"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

            //            onClicked: mainPage.navigationStack.push(counterPageComponent1)



          }
          AppButton {
            text: "غريب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "عامل"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage19)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ف)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "قرد"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "فوز"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)



          }
          AppButton {
            text: "حمار"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "بجعة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage20)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ق)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "قلب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)

          }
          AppButton {
            text: "جامعة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)



          }
          AppButton {
            text: "حمار"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "هواء"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage21)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ك)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "فأر"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "قطة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)



          }
          AppButton {
            text: "كلب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)


          }
          AppButton {
            text: "عصفور"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage22)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ل)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "أسد"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "سماء"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)



          }
          AppButton {
            text: "كوكب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "ليمون"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

            //            onClicked: mainPage.navigationStack.push(counterPageComponent)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage23)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (م)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "حصان"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"


//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "مستشفي"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)



          }
          AppButton {
            text: "جامعة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "طائرة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage24)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ن)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "زهرة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"


//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "ذئب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)



          }
          AppButton {
            text: "نملة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)


          }
          AppButton {
            text: "شمس"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage25)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ه)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "عين"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"


//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "هجرة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)



          }
          AppButton {
            text: "ثورة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "تفاحة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage26)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (و)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "رسالة"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"


//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "سؤال"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)



          }
          AppButton {
            text: "وجع"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)


          }
          AppButton {
            text: "مزانية"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage27)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"

        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Word Starts With (ي)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "نعناع"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"


//            onClicked: mainPage.navigationStack.push(counterPageComponent1)

          }
          AppButton {
            text: "ياسمين"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "green"

//            onClicked: mainPage.navigationStack.push(counterPageComponent)



          }
          AppButton {
            text: "حصان"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          AppButton {
            text: "ثعلب"
            textColor: "black"
            backgroundColor: "lightsteelblue"
            backgroundColorPressed: "red"

//            onClicked: mainPage.navigationStack.push(counterPageComponent1)


          }
          Row{
          AppButton{
              text: " Next  "
              textColor: "black"
              backgroundColor: "lightsteelblue"

              onClicked: mainPage.navigationStack.push(professionalPage28)

              x:350
              y:350
          }
          AppButton{
              text: "MainPage"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:300
              y:350
          }
          AppButton{
              text: "Exit"
              textColor: "black"
              backgroundColor: "lightsteelblue"
              onClicked: Qt.quit()

              x:250
              y:350

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
            source: "../1422-1.png"


}
        Text {
            anchors.centerIn: parent
            text: qsTr("Congratulations You Passed The Professional Level Successfully")
            font.bold: true
            font.pointSize: 20
            color: "#3D35D3"
        }
        }
}
}

