import Felgo 3.0
import QtQuick 2.0
import QtQuick.Window 2.0
import QtMultimedia 5.9
// sound class
//page for levels
//3 buttons
// backgrounds

App {
    id: app
    // main page
       NavigationStack {
          Page {
          id: mainPage




//sound effect = class
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



        BackgroundMusic{
            id:background
            source: "background.wav"
            autoLoad:false

        }

        BackgroundImage{
            id:pic
            anchors.fill: parent
            source:"../—Pngtree—61 children s playground roller_1064185.jpg"

        Column {
          anchors.centerIn: parent

          // text to show the current count and button to push the second page
          AppText{
              id:header

              text: "Start Game"
              fontSize: 35
              x:-10
              color: "white"
              bottomPadding: 20
              font.bold: true
              font.capitalization: Font.AllUppercase
              font.letterSpacing: 5
          }
          //animation
          NumberAnimation {
                  running: true             // Start automatically
                  loops: Animation.Infinite  // Repeat endless (unless stopped)
                  target: header             // The animated item id
                  property: "rotation"      // The animated property
                  from: 0                   // Start value. If not defined, the current value is used
                  to: 360                   // End value
                  duration: 1000         // Duration of the animation
                  easing.type: Easing.InOutBack
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

              onClicked:{
                  background.pause() // el satr dah bywa2af el BackgroundMusic ama ados 3ala el button

                  buttonss.play()
                  mainPage.navigationStack.push(beginnerPage1)

              }

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
              onClicked:{
                  buttonss.play()
                  background.pause()
              }
                     //    mainPage.navigationStack.push()



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
                  background.pause()
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
          Component{
              id: beginnerPage1
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id:rabbits
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../rabbit2.png"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف أ.png"
                      radius: 300
                  }


                  AppText{
                      anchors.left: parent
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"
                      font.bold: true
                      font.capitalization: Font.AllUppercase



                  }

                  SoundEffect{
                      id: arnab
                      source: "../Sounds/Arnab.Wav"
                  }


                  SoundEffect{
                      id: alef
                      source: "../Sounds/alef.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: rabbits             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "أرنب"
                          property var rabbits
                          textSize: 32
                          textColor: "black"
                          backgroundColor: "lightsteelblue"
                          x:120
                          y:420
                          backgroundColorPressed: "green"
                          width: 150
                          height: 80
                          radius: 100
                          fontBold: true
                          enabled: !animation.running
                          onClicked:{
                              arnab.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "أ"
                         textSize: 32
                         textColor: "black"
                         backgroundColor: "lightsteelblue"
                         x:430
                         y:420
                         backgroundColorPressed: "green"
                         width: 150
                         height: 80
                         radius: 100
                         fontBold: true
                        onClicked:alef.play()

                     }





                 // Row{
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
                          mainPage.navigationStack.push(beginnerPage2)
                      }

                      x:400
                      y:600
                  }
                  AppButton{
                      text: "MainPage"
                      textColor: "black"
                      backgroundColor: "lightsteelblue"
                      onClicked:{
                          buttonss.play()
                          background.play()
                          mainPage.navigationStack.push(mainPage)
                      }
                      x:550
                      y:600
                      textSize: 32
                     // width: 150
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
                      x:770
                      y:600


                  }
                  }
                  }

              }
//          }
          Component{
              id: beginnerPage2
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: batta
                      source: "../Sounds/Batta.Wav"
                  }
                  SoundEffect{
                      id: beh
                      source: "../Sounds/Beh.Wav"
                  }


                 // Row{
                      //anchors.centerIn: parent

                      AppButton{
                          text: "بطة"

                          textSize: 32
                          textColor: "black"
                          backgroundColor: "lightsteelblue"
                          x:120
                          y:420
                          backgroundColorPressed: "green"
                          width: 150
                          height: 80
                          radius: 100
                          fontBold: true

                          onClicked: batta.play()
                      }
                     AppButton{
                         text: "ب"
                         x: 100
                         textSize: 32
                        onClicked:beh.play()

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
                          mainPage.navigationStack.push(beginnerPage3)
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
//}
          Component{
              id: beginnerPage3
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: tofa7a
                      source: "../Sounds/tofa7a.Wav"
                  }
                  SoundEffect{
                      id: teh
                      source: "../Sounds/Teh.Wav"
                  }


                  //Row{
                      //anchors.centerIn: parent

                      AppButton{
                          text: "تفاحة"

                          textSize: 32
                          textColor: "black"
                          backgroundColor: "lightsteelblue"
                          x:120
                          y:420
                          backgroundColorPressed: "green"
                          width: 150
                          height: 80
                          radius: 100
                          fontBold: true
                          onClicked: tofa7a.play()
                      }
                     AppButton{
                         text: "ت"
                         x: 100
                         textSize: 32
                        onClicked:teh.play()

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
                          mainPage.navigationStack.push(beginnerPage4)
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
//}
          Component{
              id: beginnerPage4
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: so3ban
                      source: "../Sounds/so3ban.Wav"
                  }
                  SoundEffect{
                      id: theh
                      source: "../Sounds/theh.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "ثعبان"
                          x: 100
                          textSize: 32
                          onClicked: so3ban.play()
                      }
                     AppButton{
                         text: "ث"
                         x: 100
                         textSize: 32
                        onClicked:theh.play()

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
                          mainPage.navigationStack.push(beginnerPage5)
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
          Component{
              id: beginnerPage5
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: gamal
                      source: "../Sounds/gamal.Wav"
                  }
                  SoundEffect{
                      id: geem
                      source: "../Sounds/geem.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "جمل"
                          x: 100
                          textSize: 32
                          onClicked: gamal.play()
                      }
                     AppButton{
                         text: "ج"
                         x: 100
                         textSize: 32
                        onClicked:geem.play()

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
                          mainPage.navigationStack.push(beginnerPage6)
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
          Component{
              id: beginnerPage6
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: hosan
                      source: "../Sounds/7osan.Wav"
                  }
                  SoundEffect{
                      id: hah
                      source: "../Sounds/hah.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "حصان"
                          x: 100
                          textSize: 32
                          onClicked: hosan.play()
                      }
                     AppButton{
                         text: "ح"
                         x: 100
                         textSize: 32
                        onClicked:hah.play()

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
                          mainPage.navigationStack.push(beginnerPage7)
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
          Component{
              id: beginnerPage7
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: kharouf
                      source: "../Sounds/kharof.Wav"
                  }
                  SoundEffect{
                      id: khah
                      source: "../Sounds/khah.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "خروف"
                          x: 100
                          textSize: 32
                          onClicked: kharouf.play()
                      }
                     AppButton{
                         text: "خ"
                         x: 100
                         textSize: 32
                        onClicked:khah.play()

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
                          mainPage.navigationStack.push(beginnerPage8)
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
          Component{
              id: beginnerPage8
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: dob
                      source: "../Sounds/dob.Wav"
                  }
                  SoundEffect{
                      id: dal
                      source: "../Sounds/dal.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "دب"
                          x: 100
                          textSize: 32
                          onClicked: dob.play()
                      }
                     AppButton{
                         text: "د"
                         x: 100
                         textSize: 32
                        onClicked:dal.play()

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
                          mainPage.navigationStack.push(beginnerPage9)
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
          Component{
              id: beginnerPage9
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: zeel
                      source: "../Sounds/zeel.Wav"
                  }
                  SoundEffect{
                      id: zal
                      source: "../Sounds/zal.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "ذيل"
                          x: 100
                          textSize: 32
                          onClicked: zeel.play()
                      }
                     AppButton{
                         text: "ذ"
                         x: 100
                         textSize: 32
                        onClicked:zal.play()

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
                          mainPage.navigationStack.push(beginnerPage10)
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
          Component{
              id: beginnerPage10
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: raas
                      source: "../Sounds/raas.Wav"
                  }
                  SoundEffect{
                      id: reh
                      source: "../Sounds/reh.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "رأس"
                          x: 100
                          textSize: 32
                          onClicked: raas.play()
                      }
                     AppButton{
                         text: "ر"
                         x: 100
                         textSize: 32
                        onClicked:reh.play()

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
                          mainPage.navigationStack.push(beginnerPage11)
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
          Component{
              id: beginnerPage11
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: zarafa
                      source: "../Sounds/zarafa.Wav"
                  }
                  SoundEffect{
                      id: zeen
                      source: "../Sounds/zeen.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "زرافة"
                          x: 100
                          textSize: 32
                          onClicked: zarafa.play()
                      }
                     AppButton{
                         text: "ز"
                         x: 100
                         textSize: 32
                        onClicked:zeen.play()

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
                          mainPage.navigationStack.push(beginnerPage12)
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
          Component{
              id: beginnerPage12
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: samaka
                      source: "../Sounds/samaka.Wav"
                  }
                  SoundEffect{
                      id: seen
                      source: "../Sounds/seen.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "سمكة"
                          x: 100
                          textSize: 32
                          onClicked: samaka.play()
                      }
                     AppButton{
                         text: "س"
                         x: 100
                         textSize: 32
                        onClicked:seen.play()

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
                          mainPage.navigationStack.push(beginnerPage13)
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
          Component{
              id: beginnerPage13
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: shagara
                      source: "../Sounds/shagara.Wav"
                  }
                  SoundEffect{
                      id: sheen
                      source: "../Sounds/sheen.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "شجرة"
                          x: 100
                          textSize: 32
                          onClicked: shagara.play()
                      }
                     AppButton{
                         text: "ش"
                         x: 100
                         textSize: 32
                        onClicked:sheen.play()

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
                          mainPage.navigationStack.push(beginnerPage14)
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
          Component{
              id: beginnerPage14
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: saqr
                      source: "../Sounds/saqr.Wav"
                  }
                  SoundEffect{
                      id: sad
                      source: "../Sounds/sad.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "صقر"
                          x: 100
                          textSize: 32
                          onClicked: saqr.play()
                      }
                     AppButton{
                         text: "ص"
                         x: 100
                         textSize: 32
                        onClicked:sad.play()

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
                          mainPage.navigationStack.push(beginnerPage15)
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
          Component{
              id: beginnerPage15
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: dofdaa
                      source: "../Sounds/dofdaa.Wav"
                  }
                  SoundEffect{
                      id: dad
                      source: "../Sounds/dad.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "ضفدع"
                          x: 100
                          textSize: 32
                          onClicked: dofdaa.play()
                      }
                     AppButton{
                         text: "ض"
                         x: 100
                         textSize: 32
                        onClicked:dad.play()

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
                          mainPage.navigationStack.push(beginnerPage16)
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
          Component{
              id: beginnerPage16
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: taer
                      source: "../Sounds/taer.Wav"
                  }
                  SoundEffect{
                      id: tah
                      source: "../Sounds/tah.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "طائر"
                          x: 100
                          textSize: 32
                          onClicked: taer.play()
                      }
                     AppButton{
                         text: "ط"
                         x: 100
                         textSize: 32
                        onClicked:tah.play()

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
                          mainPage.navigationStack.push(beginnerPage17)
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
          Component{
              id: beginnerPage17
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: zarf
                      source: "../Sounds/zarf.Wav"
                  }
                  SoundEffect{
                      id: zah
                      source: "../Sounds/zah.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "ظرف"
                          x: 100
                          textSize: 32
                          onClicked: zarf.play()
                      }
                     AppButton{
                         text: "ظ"
                         x: 100
                         textSize: 32
                        onClicked:zah.play()

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
                          mainPage.navigationStack.push(beginnerPage18)
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
          Component{
              id: beginnerPage18
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: ayn
                      source: "../Sounds/ayn.Wav"
                  }
                  SoundEffect{
                      id: aen
                      source: "../Sounds/aen.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "عين"
                          x: 100
                          textSize: 32
                          onClicked: ayn.play()
                      }
                     AppButton{
                         text: "ع"
                         x: 100
                         textSize: 32
                        onClicked:aen.play()

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
                          mainPage.navigationStack.push(beginnerPage19)
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
          Component{
              id: beginnerPage19
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }

                  SoundEffect{
                      id: ghosn
                      source: "../Sounds/ghosn.Wav"
                  }
                  SoundEffect{
                      id: ghayn
                      source: "../Sounds/ghayn.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "غصن"
                          x: 100
                          textSize: 32
                          onClicked: ghosn.play()
                      }
                     AppButton{
                         text: "غ"
                         x: 100
                         textSize: 32
                        onClicked:ghayn.play()

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
                          mainPage.navigationStack.push(beginnerPage20)
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
          Component{
              id: beginnerPage20
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: feel
                      source: "../Sounds/feel.Wav"
                  }
                  SoundEffect{
                      id: feh
                      source: "../Sounds/feh.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "فيل"
                          x: 100
                          textSize: 32
                          onClicked: feel.play()
                      }
                     AppButton{
                         text: "ف"
                         x: 100
                         textSize: 32
                        onClicked:feh.play()

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
                          mainPage.navigationStack.push(beginnerPage21)
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
          Component{
              id: beginnerPage21
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: qalam
                      source: "../Sounds/qalam.Wav"
                  }
                  SoundEffect{
                      id: qaf
                      source: "../Sounds/qaf.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "قلم"
                          x: 100
                          textSize: 32
                          onClicked: qalam.play()
                      }
                     AppButton{
                         text: "ق"
                         x: 100
                         textSize: 32
                        onClicked:qaf.play()

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
                          mainPage.navigationStack.push(beginnerPage22)
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
          Component{
              id: beginnerPage22
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: ketab
                      source: "../Sounds/ketab.Wav"
                  }
                  SoundEffect{
                      id: kaf
                      source: "../Sounds/kaf.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "كتاب"
                          x: 100
                          textSize: 32
                          onClicked: ketab.play()
                      }
                     AppButton{
                         text: "ك"
                         x: 100
                         textSize: 32
                        onClicked:kaf.play()

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
                          mainPage.navigationStack.push(beginnerPage23)
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
          Component{
              id: beginnerPage23
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: leba
                      source: "../Sounds/leba.Wav"
                  }
                  SoundEffect{
                      id: lam
                      source: "../Sounds/lam.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "لعبة"
                          x: 100
                          textSize: 32
                          onClicked: leba.play()
                      }
                     AppButton{
                         text: "ل"
                         x: 100
                         textSize: 32
                        onClicked:lam.play()

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
                          mainPage.navigationStack.push(beginnerPage24)
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
          Component{
              id: beginnerPage24
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: madrasa
                      source: "../Sounds/madrasa.Wav"
                  }
                  SoundEffect{
                      id: meem
                      source: "../Sounds/meem.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "مدرسة"
                          x: 100
                          textSize: 32
                          onClicked: madrasa.play()
                      }
                     AppButton{
                         text: "م"
                         x: 100
                         textSize: 32
                        onClicked:meem.play()

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
                          mainPage.navigationStack.push(beginnerPage25)
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
          Component{
              id: beginnerPage25
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: nakhla
                      source: "../Sounds/nakhla.Wav"
                  }
                  SoundEffect{
                      id: noon
                      source: "../Sounds/noon.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "نخلة"
                          x: 100
                          textSize: 32
                          onClicked: nakhla.play()
                      }
                     AppButton{
                         text: "ن"
                         x: 100
                         textSize: 32
                        onClicked:noon.play()

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
                          mainPage.navigationStack.push(beginnerPage26)
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
          Component{
              id: beginnerPage26
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: hedya
                      source: "../Sounds/hedya.Wav"
                  }
                  SoundEffect{
                      id: heh
                      source: "../Sounds/heh.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "هدية"
                          x: 100
                          textSize: 32
                          onClicked: hedya.play()
                      }
                     AppButton{
                         text: "ه"
                         x: 100
                         textSize: 32
                        onClicked:heh.play()

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
                          mainPage.navigationStack.push(beginnerPage27)
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
          Component{
              id: beginnerPage27
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: warda
                      source: "../Sounds/warda.Wav"
                  }
                  SoundEffect{
                      id: wow
                      source: "../Sounds/wow.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "وردة"
                          x: 100
                          textSize: 32
                          onClicked: warda.play()
                      }
                     AppButton{
                         text: "و"
                         x: 100
                         textSize: 32
                        onClicked:wow.play()

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
                          mainPage.navigationStack.push(beginnerPage28)
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
          Component{
              id: beginnerPage28
              Page{
                  title: "Beginner Level"
                  BackgroundImage{
                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  AppText{
                      text: "Press on the letter and the word:"
                      fontSize: 40
                      topPadding:10
                      x:200
                      color: "black"

                  }
                  SoundEffect{
                      id: yad
                      source: "../Sounds/yad.Wav"
                  }
                  SoundEffect{
                      id: yeh
                      source: "../Sounds/yeh.Wav"
                  }


                  Row{
                      anchors.centerIn: parent

                      AppButton{
                          text: "يد"
                          x: 100
                          textSize: 32
                          onClicked: yad.play()
                      }
                     AppButton{
                         text: "ي"
                         x: 100
                         textSize: 32
                        onClicked:yeh.play()

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
                          mainPage.navigationStack.push(beginnerPage29)
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


          Component {
            id: beginnerlPage29
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



            fontSize: 40
            topPadding:10
            x:200
            color: "black"
            font.bold: true
            font.capitalization: Font.AllUppercase
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
              x:-120
              y:150

              onClicked:{
                  buttonss.play()
                  mainPage.navigationStack.push(professionalPage2)
              }


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
            //  width: 150
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
              //width: 150
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
 //}

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
            text: "Choose Word Starts With (غ)"
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
            text: "كلب"
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
            text: "شجرة"
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
                  mainPage.navigationStack.push(professionalPage29)
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
      id: professionalPage29
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

      }
    }
  }



