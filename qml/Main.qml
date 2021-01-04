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
                  mainPage.navigationStack.push(intermediatePage1)
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
                      source: "../swr el klmat/rabbit2.png"
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
                  RoundedImage{
                      id:duck
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/batta.png"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ب.png"
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
                      id: batta
                      source: "../Sounds/Batta.Wav"
                  }


                  SoundEffect{
                      id: beh
                      source: "../Sounds/Beh.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: duck             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "بطة"
                          property var duck
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
                              batta.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ب"
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
                        onClicked:beh.play()

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
                          mainPage.navigationStack.push(beginnerPage3)
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
//}
          Component{
              id: beginnerPage3
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id:apple
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/apple.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ت.png"
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
                      id: tofa7a
                      source: "../Sounds/tofa7a.Wav"
                  }


                  SoundEffect{
                      id: teh
                      source: "../Sounds/teh.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: apple             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "تفاحة"
                          property var apple
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
                              tofa7a.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ت"
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
                        onClicked:teh.play()

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
                          mainPage.navigationStack.push(beginnerPage4)
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
//}
          Component{
              id: beginnerPage4
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id:snake
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/snake.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ث.png"
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
                      id: so3ban
                      source: "../Sounds/so3ban.Wav"
                  }


                  SoundEffect{
                      id: theh
                      source: "../Sounds/theh.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: snake             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "ثعبان"
                          property var so3ban
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
                              so3ban.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ث"
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
                        onClicked:theh.play()

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
                          mainPage.navigationStack.push(beginnerPage5)
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
          Component{
              id: beginnerPage5
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id:camel
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/camel.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ج.png"
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
                      id: gamal
                      source: "../Sounds/gamal.Wav"
                  }


                  SoundEffect{
                      id: geem
                      source: "../Sounds/geem.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: camel             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "جمل"
                          property var so3ban
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
                              gamal.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ج"
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
                        onClicked:geem.play()

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
                          mainPage.navigationStack.push(beginnerPage6)
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
          Component{
              id: beginnerPage6
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id:hourse
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/hourse.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ح.png"
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
                      id: hosan
                      source: "../Sounds/7osan.Wav"
                  }


                  SoundEffect{
                      id: hah
                      source: "../Sounds/hah.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: hourse             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "حصان"
                          property var hosan
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
                              hosan.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ح"
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
                        onClicked:hah.play()

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
                          mainPage.navigationStack.push(beginnerPage7)
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
          Component{
              id: beginnerPage7
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id:lamb
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/kharof.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف خ.png"
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
                      id: kharof
                      source: "../Sounds/kharof.Wav"
                  }


                  SoundEffect{
                      id: khah
                      source: "../Sounds/khah.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: lamb             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "خروف"
                          property var kharof
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
                              kharof.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "خ"
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
                        onClicked:khah.play()

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
                          mainPage.navigationStack.push(beginnerPage8)
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
          Component{
              id: beginnerPage8
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id:bear
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/bear (2).jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف د.png"
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
                      id: dob
                      source: "../Sounds/dob.Wav"
                  }


                  SoundEffect{
                      id: dal
                      source: "../Sounds/dal.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: bear             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "دب"
                          property var dob
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
                              dob.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "د"
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
                        onClicked:dal.play()

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
                          mainPage.navigationStack.push(beginnerPage9)
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
          Component{
              id: beginnerPage9
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id:zel
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/zel.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ذ.png"
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
                      id: zeel
                      source: "../Sounds/zeel.Wav"
                  }


                  SoundEffect{
                      id: zal
                      source: "../Sounds/zal.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: zel             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "ذيل"
                          property var zeel
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
                              zeel.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ذ"
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
                        onClicked:zal.play()

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
                          mainPage.navigationStack.push(beginnerPage10)
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
          Component{
              id: beginnerPage10
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: head
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/head-man_1308-33466.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ر.png"
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
                      id: raas
                      source: "../Sounds/raas.Wav"
                  }


                  SoundEffect{
                      id: reh
                      source: "../Sounds/reh.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: head             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "راس"
                          property var raas
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
                              raas.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ر"
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
                        onClicked:reh.play()

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
                          mainPage.navigationStack.push(beginnerPage11)
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
          Component{
              id: beginnerPage11
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: giraffe
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/giraffe (2).jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ز.png"
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
                      id: zarafa
                      source: "../Sounds/zarafa.Wav"
                  }


                  SoundEffect{
                      id: zeen
                      source: "../Sounds/zeen.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: giraffe             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "زرافة"
                          property var zarafa
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
                              zarafa.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ز"
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
                        onClicked:zeen.play()

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
                          mainPage.navigationStack.push(beginnerPage12)
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
          Component{
              id: beginnerPage12
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: fish
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/fish.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف س.png"
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
                      id: samaka
                      source: "../Sounds/samaka.Wav"
                  }


                  SoundEffect{
                      id: seen
                      source: "../Sounds/seen.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: fish             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "سمكة"
                          property var samaka
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
                              samaka.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "س"
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
                        onClicked:seen.play()

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
                          mainPage.navigationStack.push(beginnerPage13)
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
          Component{
              id: beginnerPage13
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: tree
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/tree.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ش.png"
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
                      id: shagara
                      source: "../Sounds/shagara.Wav"
                  }


                  SoundEffect{
                      id: sheen
                      source: "../Sounds/sheen.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: tree             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "شجرة"
                          property var shagara
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
                              shagara.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ش"
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
                        onClicked:sheen.play()

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
                          mainPage.navigationStack.push(beginnerPage14)
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
          Component{
              id: beginnerPage14
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: falcon
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/falcon.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ص.png"
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
                      id: saqr
                      source: "../Sounds/saqr.Wav"
                  }


                  SoundEffect{
                      id: sad
                      source: "../Sounds/sad.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: falcon             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "صقر"
                          property var saqr
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
                              saqr.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ص"
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
                        onClicked:sad.play()

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
                          mainPage.navigationStack.push(beginnerPage15)
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
          Component{
              id: beginnerPage15
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: frog
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/frog.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ض.png"
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
                      id: dofdaa
                      source: "../Sounds/dofdaa.Wav"
                  }


                  SoundEffect{
                      id: dad
                      source: "../Sounds/dad.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: frog             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "ضفدع"
                          property var dofdaa
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
                              dofdaa.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ض"
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
                        onClicked:dad.play()

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
                          mainPage.navigationStack.push(beginnerPage16)
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
          Component{
              id: beginnerPage16
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: bird
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/bird.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ط.png"
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
                      id: taer
                      source: "../Sounds/taer.Wav"
                  }


                  SoundEffect{
                      id: tah
                      source: "../Sounds/tah.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: bird             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "طائر"
                          property var taer
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
                              taer.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ط"
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
                        onClicked:tah.play()

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
                          mainPage.navigationStack.push(beginnerPage17)
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
          Component{
              id: beginnerPage17
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: letter
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/letter.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ظ.png"
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
                      id: zarf
                      source: "../Sounds/zarf.Wav"
                  }


                  SoundEffect{
                      id: zah
                      source: "../Sounds/zah.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: letter             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "ظرف"
                          property var zarf
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
                              zarf.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ظ"
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
                        onClicked:zah.play()

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
                          mainPage.navigationStack.push(beginnerPage18)
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
          Component{
              id: beginnerPage18
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: eyes
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/eyes.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ع.png"
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
                      id: aen
                      source: "../Sounds/aen.Wav"
                  }


                  SoundEffect{
                      id: ayn
                      source: "../Sounds/ayn.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: eyes             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "عين"
                          property var aen
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
                              ayn.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ع"
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
                        onClicked:aen.play()

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
                          mainPage.navigationStack.push(beginnerPage19)
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
          Component{
              id: beginnerPage19
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: gzr
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/gzr.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف غ.png"
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
                      id: ghosn
                      source: "../Sounds/ghosn.Wav"
                  }


                  SoundEffect{
                      id: ghayn
                      source: "../Sounds/ghayn.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: gzr             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "غصن"
                          property var ghosn
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
                              ghosn.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "غ"
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
                        onClicked:ghayn.play()

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
                          mainPage.navigationStack.push(beginnerPage20)
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
          Component{
              id: beginnerPage20
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: elephant
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/elephant.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ف.png"
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
                      id: feel
                      source: "../Sounds/feel.Wav"
                  }


                  SoundEffect{
                      id: feh
                      source: "../Sounds/feh.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: elephant             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "فيل"
                          property var feel
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
                              feel.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ف"
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
                        onClicked:feh.play()

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
                          mainPage.navigationStack.push(beginnerPage21)
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
          Component{
              id: beginnerPage21
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: pen
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/pen.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ق.png"
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
                      id: qalam
                      source: "../Sounds/qalam.Wav"
                  }


                  SoundEffect{
                      id: qaf
                      source: "../Sounds/qaf.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: pen             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "قلم"
                          property var qalam
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
                              qalam.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ق"
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
                        onClicked:qaf.play()

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
                          mainPage.navigationStack.push(beginnerPage22)
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
          Component{
              id: beginnerPage22
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: book
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/book.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ك.png"
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
                      id: ketab
                      source: "../Sounds/ketab.Wav"
                  }


                  SoundEffect{
                      id: kaf
                      source: "../Sounds/kaf.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: book             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "كتاب"
                          property var ketab
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
                              ketab.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ك"
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
                        onClicked:kaf.play()

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
                          mainPage.navigationStack.push(beginnerPage24)
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
          Component{
              id: beginnerPage24
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: school
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/school.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف م.png"
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
                      id: madrasa
                      source: "../Sounds/madrasa.Wav"
                  }


                  SoundEffect{
                      id: meem
                      source: "../Sounds/meem.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: school             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "مدرسة"
                          property var ketab
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
                              madrasa.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "م"
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
                        onClicked:meem.play()

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
                          mainPage.navigationStack.push(beginnerPage25)
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
          Component{
              id: beginnerPage25
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: palm
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/palm.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ن.png"
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
                      id: nakhla
                      source: "../Sounds/nakhla.Wav"
                  }


                  SoundEffect{
                      id: noon
                      source: "../Sounds/noon.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: palm             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "نخلة"
                          property var nakhla
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
                              nakhla.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ن"
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
                        onClicked:noon.play()

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
                          mainPage.navigationStack.push(beginnerPage26)
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
          Component{
              id: beginnerPage26
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: gift
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/gift.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ه.png"
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
                      id: hedya
                      source: "../Sounds/hedya.Wav"
                  }


                  SoundEffect{
                      id: heh
                      source: "../Sounds/heh.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: gift             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "هدية"
                          property var hedya
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
                              hedya.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ه"
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
                        onClicked:heh.play()

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
                          mainPage.navigationStack.push(beginnerPage27)
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
          Component{
              id: beginnerPage27
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: flowers
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/flowers.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف و.png"
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
                      id: warda
                      source: "../Sounds/warda.Wav"
                  }


                  SoundEffect{
                      id: wow
                      source: "../Sounds/wow.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: flowers             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "وردة"
                          property var warda
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
                              warda.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "و"
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
                        onClicked:wow.play()

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
                          mainPage.navigationStack.push(beginnerPage28)
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
          Component{
              id: beginnerPage28
              Page{
                  title: "Beginner Level"
                  BackgroundImage{

                      anchors.fill: parent
                      source: "../pages.jpg"
                  }
                  RoundedImage{
                      id: hand
                      x:100
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../swr el klmat/hand.jpg"
                      radius: 300
                   //   RoundedImage:animation.running

                  }
                  RoundedImage{
                      x:400
                      y:150
                      width: 200
                      height: 250
                      //fillMode :Image.PreserveAspectCrop
                      source: "../الحروف/الحرف ى.png"
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
                      id: yad
                      source: "../Sounds/yad.Wav"
                  }


                  SoundEffect{
                      id: yeh
                      source: "../Sounds/yeh.Wav"
                  }


                 // Row{
                //      x:100
                     // anchors.centerIn: parent
                  NumberAnimation {
                          id: animation
                          target: hand             // The animated item id
                          property: "rotation"      // The animated property
                          from: 0                   // Start value. If not defined, the current value is used
                          to: 360                   // End value
                          duration: 1000
                          // Duration of the animation
                          easing.type: Easing.InOutBack
                        }
                      AppButton{
                          text: "يد"
                          property var yad
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
                              yad.play()


                              animation.start()

                      }
                      }
                     AppButton{
                         text: "ي"
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
                        onClicked:yeh.play()

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
                          mainPage.navigationStack.push(beginnerlPage29)
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

            text: "Choose Word Starts with (ب)"



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

            text: "Choose Word Starts with (ت)"



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
        title: "Professional Level "
        BackgroundImage{
            anchors.fill: parent
            source: "../pages.jpg"

        AppText{

            text: "Choose Word Starts with (ث)"



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
            text: "قطار"
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
            text: "بيت"
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

            text: "Choose Word Starts with (ج)"



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

            text: "Choose Word Starts with (ح)"



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

            text: "Choose Word Starts with (خ)"



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

            text: "Choose Word Starts with (د)"



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

            text: "Choose Word Starts with (ذ)"



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

            text: "Choose Word Starts with (ر)"



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

            text: "Choose Word Starts with (ز)"



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

            text: "Choose Word Starts with (س)"



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

            text: "Choose Word Starts with (ش)"



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

            text: "Choose Word Starts with (ص)"



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

            text: "Choose Word Starts with (ض)"



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

            text: "Choose Word Starts with (ط)"



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

            text: "Choose Word Starts with (ظ)"



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

            text: "Choose Word Starts with (ع)"



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

            text: "Choose Word Starts with (غ)"



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
            backgroundColorPressed: "green"
            textSize: 32
            width: 150
            height: 80
            radius: 100
            fontBold: true
            onClicked: clicksound.play()

          }
          AppButton {
            text: "شجرة"
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

            text: "Choose Word Starts with (ف)"



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

            text: "Choose Word Starts with (ق)"



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

            text: "Choose Word Starts with (ك)"



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

            text: "Choose Word Starts with (ل)"



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

            text: "Choose Word Starts with (م)"



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

            text: "Choose Word Starts with (ن)"



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

            text: "Choose Word Starts with (ه)"



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

            text: "Choose Word Starts with (و)"



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

            text: "Choose Word Starts with (ي)"



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

    //////////// INTERMEDIATE LEVEL ////////////////

    Component {
          id: intermediatePage1
          Page {
            title: "Intermediate Level"
            BackgroundImage{
                anchors.fill: parent
                source: "../pages.jpg"

            AppText{
                text: "Choose The Correct Letter To Complete The Word"
                fontSize: 35
                topPadding:15
                x:200
                color: "white"

            }

            AppText{
                text: "س    _    ك    ة"
                fontSize: 40
                x:parent.width /2
                y:300
                color: "black"
            }
            AppText{
                id: scoreID1
                color: "black"
                font.pixelSize: 25
                font.bold: true
                text: "Score: 0"
                x: parent.width/7
                y: 300
            }

            Row {
              anchors.centerIn: parent
              AppButton {
                text: "أ"
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
                text: "ب"
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
                text: "م"
                textColor: "black"
                backgroundColor: "lightsteelblue"
                backgroundColorPressed: "green"
                textSize: 32
                width: 150
                height: 80
                radius: 100
                fontBold: true
                onClicked: {

                    clicksound.play()
                    scoreID1.text ="Score: 1"

    }

              }
              AppButton {
                text: "ر"
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
                      mainPage.navigationStack.push(intermediatePage2)
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
          id: intermediatePage2
          Page {
            title: "Intermediate Level"
            BackgroundImage{
                anchors.fill: parent
                source: "../pages.jpg"

            AppText{
                text: "Choose The Correct Letter To Complete The Word"
                fontSize: 35
                topPadding:15
                x:200
                color: "white"

            }
            AppText{
                text: " م     د      ر    _    ة"
                fontSize: 40
                x:parent.width /2
                y:300
                color: "black"
            }

            AppText{
                id: scoreID2
                color: "black"
                font.pixelSize: 25
                font.bold: true
                text: "Score: 1"
                x: parent.width/7
                y: 300
            }

            Row {
              anchors.centerIn: parent
              AppButton {
                text: "س"
                textColor: "black"
                backgroundColor: "lightsteelblue"
                backgroundColorPressed: "green"
                textSize: 32
                width: 150
                height: 80
                radius: 100
                fontBold: true
                onClicked: {

                    clicksound.play()
                    scoreID2.text ="Score: 2"

    }

              }
              AppButton {
                text: "ط"
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
                text: "ن"
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
                text: "ر"
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
                      mainPage.navigationStack.push(intermediatePage3)
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
          id: intermediatePage3
          Page {
            title: "Intermediate Level"
            BackgroundImage{
                anchors.fill: parent
                source: "../pages.jpg"

            AppText{
                text: "Choose The Correct Letter To Complete The Word"
                fontSize: 35
                topPadding:15
                x:200
                color: "white"

            }
            AppText{
                text: "ك    _     ا    ب"
                fontSize: 40
                x:parent.width /2
                y:300
                color: "black"
            }

            AppText{
                id: scoreID3
                color: "black"
                font.pixelSize: 25
                font.bold: true
                text: "Score: 2"
                x: parent.width/7
                y: 300
            }

            Row {
              anchors.centerIn: parent
              AppButton {
                text: "ي"
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
                text: "ت"
                textColor: "black"
                backgroundColor: "lightsteelblue"
                backgroundColorPressed: "green"
                textSize: 32
                width: 150
                height: 80
                radius: 100
                fontBold: true
                onClicked: {

                    scoreID3.text = "Score: 3"
                    clicksound.play()

    }


              }
              AppButton {
                text: "ج"
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
                text: "ل"
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
                      mainPage.navigationStack.push(intermediatePage4)
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
              id: intermediatePage4
              Page {
                title: "Intermediate Level"
                BackgroundImage{
                    anchors.fill: parent
                    source: "../pages.jpg"

                AppText{
                    text: "Choose The Correct Letter To Complete The Word"
                    fontSize: 35
                    topPadding:15
                    x:200
                    color: "white"

                }
                AppText{
                    text: "ظ    ا    _      ط"
                    fontSize: 40
                    x:parent.width /2
                    y:300
                    color: "black"
                }

                AppText{
                    id: scoreID4
                    color: "black"
                    font.pixelSize: 25
                    font.bold: true
                    text: "Score: 3"
                    x: parent.width/7
                    y: 300
                }


                Row {
                  anchors.centerIn: parent
                  AppButton {
                    text: "ب"
                    textColor: "black"
                    backgroundColor: "lightsteelblue"
                    backgroundColorPressed: "green"
                    textSize: 32
                    width: 150
                    height: 80
                    radius: 100
                    fontBold: true
                    onClicked:{
                        clicksound.play()
                        scoreID4.text= "Score: 4"
                    }

                  }
                  AppButton {
                    text: "ت"
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
                    text: "أ"
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
                    text: "ذ"
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
                          mainPage.navigationStack.push(intermediatePage5)
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
              id: intermediatePage5
              Page {
                title: "Intermediate Level"
                BackgroundImage{
                    anchors.fill: parent
                    source: "../pages.jpg"

                AppText{
                    text: "Choose The Correct Letter To Complete The Word"
                    fontSize: 35
                    topPadding:15
                    x:200
                    color: "white"

                }
                AppText{
                    text: "ح    م     ا     _ "
                    fontSize: 40
                    x:parent.width /2
                    y:300
                    color: "black"
                }

                AppText{
                    id: scoreID5
                    color: "black"
                    font.pixelSize: 25
                    font.bold: true
                    text: "Score: 4"
                    x: parent.width/7
                    y: 300
                }
                Row {
                  anchors.centerIn: parent
                  AppButton {
                    text: "ئ"
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
                    text: "و"
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
                    text: "غ"
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
                    text: "ر"
                    textColor: "black"
                    backgroundColor: "lightsteelblue"
                    backgroundColorPressed: "green"
                    textSize: 32
                    width: 150
                    height: 80
                    radius: 100
                    fontBold: true
                    onClicked:{
                        clicksound.play()
                        scoreID5.text="Score: 5"
                    }

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
                          mainPage.navigationStack.push(intermediatePage6)
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
              id: intermediatePage6
              Page {
                title: "Intermediate Level"
                BackgroundImage{
                    anchors.fill: parent
                    source: "../pages.jpg"

                AppText{
                    text: "Choose The Correct Letter To Complete The Word"
                    fontSize: 35
                    topPadding:15
                    x:200
                    color: "white"

                }
                AppText{
                    text: "_     ر      ن     ب  "
                    fontSize: 40
                    x:parent.width /2
                    y:300
                    color: "black"
                }

                AppText{
                    id: scoreID6
                    color: "black"
                    font.pixelSize: 25
                    font.bold: true
                    text: "Score: 5"
                    x: parent.width/7
                    y: 300
                }
                Row {
                  anchors.centerIn: parent
                  AppButton {
                    text: "أ"
                    textColor: "black"
                    backgroundColor: "lightsteelblue"
                    backgroundColorPressed: "green"
                    textSize: 32
                    width: 150
                    height: 80
                    radius: 100
                    fontBold: true
                    onClicked:{
                     scoreID6.text= "Score: 6"
                        clicksound.play()
                    }

                  }
                  AppButton {
                    text: "ت"
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
                    text: "ب"
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
                    text: "ذ"
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
                          mainPage.navigationStack.push(intermediatePage7)
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
                 id: intermediatePage7
                 Page {
                   title: "Intermediate Level"
                   BackgroundImage{
                       anchors.fill: parent
                       source: "../pages.jpg"

                   AppText{
                       text: "Choose The Correct Letter To Complete The Word"
                       fontSize: 35
                       topPadding:15
                       x:200
                       color: "white"

                   }
                   AppText{
                       text: "-   ع     ل     ب"
                       fontSize: 40
                       x:parent.width /2
                       y:300
                       color: "black"
                   }

                   AppText{
                       id: scoreID7
                       color: "black"
                       font.pixelSize: 25
                       font.bold: true
                       text: "Score: 6"
                       x: parent.width/7
                       y: 300
                   }
                   Row {
                     anchors.centerIn: parent
                     AppButton {
                       text: "ن"
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
                       text: "ر"
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
                       text: "ث"
                       textColor: "black"
                       backgroundColor: "lightsteelblue"
                       backgroundColorPressed: "green"
                       textSize: 32
                       width: 150
                       height: 80
                       radius: 100
                       fontBold: true
                       onClicked: {
                        scoreID7.text= "Score: 7"
                           clicksound.play()
                       }


                     }
                     AppButton {
                       text: "ط"
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
                             mainPage.navigationStack.push(intermediatePage8)
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
                 id: intermediatePage8
                 Page {
                   title: "Intermediate Level"
                   BackgroundImage{
                       anchors.fill: parent
                       source: "../pages.jpg"

                   AppText{
                       text: "Choose The Correct Letter To Complete The Word"
                       fontSize: 35
                       topPadding:15
                       x:200
                       color: "white"

                   }
                   AppText{
                       text: "ص      -      ر     ة"
                       fontSize: 40
                       x:parent.width /2
                       y:300
                       color: "black"
                   }
                   AppText{
                       id: scoreID8
                       color: "black"
                       font.pixelSize: 25
                       font.bold: true
                       text: "Score: 7"
                       x: parent.width/7
                       y: 300
                   }

                   Row {
                     anchors.centerIn: parent
                     AppButton {
                       text: "د"
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
                       text: "ف"
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
                       text: "خ"
                       textColor: "black"
                       backgroundColor: "lightsteelblue"
                       backgroundColorPressed: "green"
                       textSize: 32
                       width: 150
                       height: 80
                       radius: 100
                       fontBold: true
                       onClicked:{
                        scoreID8.text = "Score: 8"
                           clicksound.play()
                       }


                     }
                     AppButton {
                       text: "ش"
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
                             mainPage.navigationStack.push(intermediatePage9)
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
                 id: intermediatePage9
                 Page {
                   title: "Intermediate Level"
                   BackgroundImage{
                       anchors.fill: parent
                       source: "../pages.jpg"

                   AppText{
                       text: "Choose The Correct Letter To Complete The Word"
                       fontSize: 35
                       topPadding:15
                       x:200
                       color: "white"

                   }
                   AppText{
                       text: "م     ت     ح    _ "
                       fontSize: 40
                       x:parent.width /2
                       y:300
                       color: "black"
                   }
                   AppText{
                       id: scoreID9
                       color: "black"
                       font.pixelSize: 25
                       font.bold: true
                       text: "Score: 8"
                       x: parent.width/7
                       y: 300
                   }


                   Row {
                     anchors.centerIn: parent
                     AppButton {
                       text: "ه"
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
                       text: "ف"
                       textColor: "black"
                       backgroundColor: "lightsteelblue"
                       backgroundColorPressed: "green"
                       textSize: 32
                       width: 150
                       height: 80
                       radius: 100
                       fontBold: true
                       onClicked:{
                           scoreID9.text = "Score: 9"
                           clicksound.play()
                       }



                     }
                     AppButton {
                       text: "خ"
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
                       text: "ذ"
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
                             mainPage.navigationStack.push(intermediatePage10)
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
                 id: intermediatePage10
                 Page {
                   title: "Intermediate Level"
                   BackgroundImage{
                       anchors.fill: parent
                       source: "../pages.jpg"

                   AppText{
                       text: "Choose The Correct Letter To Complete The Word"
                       fontSize: 35
                       topPadding:15
                       x:200
                       color: "white"

                   }
                   AppText{
                       text: "-    ا      ف       ل      ة"
                       fontSize: 40
                       x:parent.width /2
                       y:300
                       color: "black"
                   }

                   AppText{
                       id: scoreID10
                       color: "black"
                       font.pixelSize: 25
                       font.bold: true
                       text: "Score: 9"
                       x: parent.width/7
                       y: 300
                   }
                   Row {
                     anchors.centerIn: parent
                     AppButton {
                       text: "ث"
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
                       text: "م"
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
                       text: "ق"
                       textColor: "black"
                       backgroundColor: "lightsteelblue"
                       backgroundColorPressed: "green"
                       textSize: 32
                       width: 150
                       height: 80
                       radius: 100
                       fontBold: true
                       onClicked:{
                           scoreID10.text= "Score: 10"
                           clicksound.play()

           }

                     }
                     AppButton {
                       text: "ك"
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
                             mainPage.navigationStack.push(intermediatePage11)
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
                 id: intermediatePage11
                 Page {
                   title: "Intermediate Level"
                   BackgroundImage{
                       anchors.fill: parent
                       source: "../pages.jpg"

                   AppText{
                       text: "Choose The Correct Letter To Complete The Word"
                       fontSize: 35
                       topPadding:15
                       x:200
                       color: "white"

                   }
                   AppText{
                       text: "_     ج     ر      ة"
                       fontSize: 40
                       x:parent.width /2
                       y:300
                       color: "black"
                   }

                   AppText{
                       id: scoreID11
                       color: "black"
                       font.pixelSize: 25
                       font.bold: true
                       text: "Score: 10"
                       x: parent.width/7
                       y: 300
                   }

                   Row {
                     anchors.centerIn: parent
                     AppButton {
                       text: "ش"
                       textColor: "black"
                       backgroundColor: "lightsteelblue"
                       backgroundColorPressed: "green"
                       textSize: 32
                       width: 150
                       height: 80
                       radius: 100
                       fontBold: true
                       onClicked:{
                           clicksound.play()
                       scoreID11.text= "Score: 11"
           }
                     }
                     AppButton {
                       text: "ل"
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
                       text: "ه"
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
                       text: "ي"
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
                             mainPage.navigationStack.push(intermediatePage12)
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
                     id: intermediatePage12
                     Page {
                       title: "Intermediate Level"
                       BackgroundImage{
                           anchors.fill: parent
                           source: "../pages.jpg"

                       AppText{
                           text: "Choose The Correct Letter To Complete The Word"
                           fontSize: 35
                           topPadding:15
                           x:200
                           color: "white"

                       }
                       AppText{
                           text: "-      ب       و       ب"
                           fontSize: 40
                           x:parent.width /2
                           y:300
                           color: "black"
                       }

                       AppText{
                           id: scoreID12
                           color: "black"
                           font.pixelSize: 25
                           font.bold: true
                           text: "Score: 11"
                           x: parent.width/7
                           y: 300
                       }

                       Row {
                         anchors.centerIn: parent
                         AppButton {
                           text: "ب"
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
                           text: "ح"
                           textColor: "black"
                           backgroundColor: "lightsteelblue"
                           backgroundColorPressed: "green"
                           textSize: 32
                           width: 150
                           height: 80
                           radius: 100
                           fontBold: true
                           onClicked: {
                               scoreID12.text="Score: 12"
                               clicksound.play()



               }
                         }
                         AppButton {
                           text: "ث"
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
                           text: "ج"
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
                                 mainPage.navigationStack.push(intermediatePage13)
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
                     id: intermediatePage13
                     Page {
                       title: "Intermediate Level"
                       BackgroundImage{
                           anchors.fill: parent
                           source: "../pages.jpg"

                       AppText{
                           text: "Choose The Correct Letter To Complete The Word"
                           fontSize: 35
                           topPadding:15
                           x:200
                           color: "white"

                       }
                       AppText{
                           text: "م     ر      -      ب"
                           fontSize: 40
                           x:parent.width /2
                           y:300
                           color: "black"
                       }

                       AppText{
                           id: scoreID13
                           color: "black"
                           font.pixelSize: 25
                           font.bold: true
                           text: "Score: 12"
                           x: parent.width/7
                           y: 300
                       }
                       Row {
                         anchors.centerIn: parent
                         AppButton {
                           text: "ك"
                           textColor: "black"
                           backgroundColor: "lightsteelblue"
                           backgroundColorPressed: "green"
                           textSize: 32
                           width: 150
                           height: 80
                           radius: 100
                           fontBold: true
                           onClicked:{
                               scoreID13.text="Score: 13"
                               clicksound.play()

               }
                         }
                         AppButton {
                           text: "ف"
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
                           text: "أ"
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
                           text: "س"
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
                                 mainPage.navigationStack.push(intermediatePage14)
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
                         id: intermediatePage14
                         Page {
                           title: "Intermediate Level"
                           BackgroundImage{
                               anchors.fill: parent
                               source: "../pages.jpg"

                           AppText{
                               text: "Choose The Correct Letter To Complete The Word"
                               fontSize: 35
                               topPadding:15
                               x:200
                               color: "white"

                           }
                           AppText{
                               text: "_      ا       ل      ب"
                               fontSize: 40
                               x:parent.width /2
                               y:300
                               color: "black"
                           }
                           AppText{
                               id: scoreID14
                               color: "black"
                               font.pixelSize: 25
                               font.bold: true
                               text: "Score: 13"
                               x: parent.width/7
                               y: 300
                           }


                           Row {
                             anchors.centerIn: parent
                             AppButton {
                               text: "ظ"
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
                               text: "ش"
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
                               text: "ح"
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
                               text: "ط"
                               textColor: "black"
                               backgroundColor: "lightsteelblue"
                               backgroundColorPressed: "green"
                               textSize: 32
                               width: 150
                               height: 80
                               radius: 100
                               fontBold: true
                               onClicked:{
                                   scoreID14.text= "Score: 14"
                                   clicksound.play()

                   }

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
                                     mainPage.navigationStack.push(intermediatePage15)
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
                         id: intermediatePage15
                         Page {
                           title: "Intermediate Level"
                           BackgroundImage{
                               anchors.fill: parent
                               source: "../pages.jpg"

                           AppText{
                               text: "Choose The Correct Letter To Complete The Word"
                               fontSize: 35
                               topPadding:15
                               x:200
                               color: "white"

                           }
                           AppText{
                               text: "-     ي       ن        ة "
                               fontSize: 40
                               x:parent.width /2
                               y:300
                               color: "black"
                           }
                           AppText{
                               id: scoreID15
                               color: "black"
                               font.pixelSize: 25
                               font.bold: true
                               text: "Score: 14"
                               x: parent.width/7
                               y: 300
                           }

                           Row {
                             anchors.centerIn: parent
                             AppButton {
                               text: "ك"
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
                               text: "ت"
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
                               text: "ز"
                               textColor: "black"
                               backgroundColor: "lightsteelblue"
                               backgroundColorPressed: "green"
                               textSize: 32
                               width: 150
                               height: 80
                               radius: 100
                               fontBold: true
                               onClicked:{
                                   scoreID15.text="Score: 15"
                                   clicksound.play()
                   }


                             }
                             AppButton {
                               text: "ذ"
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
                                     mainPage.navigationStack.push(intermediatePage16)
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
                         id: intermediatePage16
                         Page {
                           title: "Intermediate Level"
                           BackgroundImage{
                               anchors.fill: parent
                               source: "../pages.jpg"

                           AppText{
                               text: "Choose The Correct Letter To Complete The Word"
                               fontSize: 35
                               topPadding:15
                               x:200
                               color: "white"

                           }
                           AppText{
                               text: "ن    ا     ف    _     ة"
                               fontSize: 40
                               x:parent.width /2
                               y:300
                               color: "black"
                           }

                           AppText{
                               id: scoreID16
                               color: "black"
                               font.pixelSize: 25
                               font.bold: true
                               text: "Score: 15"
                               x: parent.width/7
                               y: 300
                           }

                           Row {
                             anchors.centerIn: parent
                             AppButton {
                               text: "ذ"
                               textColor: "black"
                               backgroundColor: "lightsteelblue"
                               backgroundColorPressed: "green"
                               textSize: 32
                               width: 150
                               height: 80
                               radius: 100
                               fontBold: true
                               onClicked: {
                                   scoreID16.text = "Score: 16"
                                   clicksound.play()
                   }

                             }
                             AppButton {
                               text: "د"
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
                               text: "أ"
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
                               text: "ل"
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
                                     mainPage.navigationStack.push(intermediatePage17)
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
                         id: intermediatePage17
                         Page {
                           title: "Intermediate Level"
                           BackgroundImage{
                               anchors.fill: parent
                               source: "../pages.jpg"

                           AppText{
                               text: "Choose The Correct Letter To Complete The Word"
                               fontSize: 35
                               topPadding:15
                               x:200
                               color: "white"

                           }
                           AppText{
                               text: "م     -      ر      ض"
                               fontSize: 40
                               x:parent.width /2
                               y:300
                               color: "black"
                           }

                           AppText{
                               id: scoreID17
                               color: "black"
                               font.pixelSize: 25
                               font.bold: true
                               text: "Score: 16"
                               x: parent.width/7
                               y: 300
                           }
                           Row {
                             anchors.centerIn: parent
                             AppButton {
                               text: "ب"
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
                               text: "ع"
                               textColor: "black"
                               backgroundColor: "lightsteelblue"
                               backgroundColorPressed: "green"
                               textSize: 32
                               width: 150
                               height: 80
                               radius: 100
                               fontBold: true
                               onClicked:{
                                   scoreID17.text = "Score: 17"
                                   clicksound.play()


                   }

                             }
                             AppButton {
                               text: "ش"
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
                               text: "غ"
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
                                     mainPage.navigationStack.push(intermediatePage18)
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
                         id: intermediatePage18
                         Page {
                           title: "Intermediate Level"
                           BackgroundImage{
                               anchors.fill: parent
                               source: "../pages.jpg"

                           AppText{
                               text: "Choose The Correct Letter To Complete The Word"
                               fontSize: 35
                               topPadding:15
                               x:200
                               color: "white"

                           }
                           AppText{
                               text: "د      -       ل       ة"
                               fontSize: 40
                               x:parent.width /2
                               y:300
                               color: "black"
                           }

                           AppText{
                               id: scoreID18
                               color: "black"
                               font.pixelSize: 25
                               font.bold: true
                               text: "Score: 17"
                               x: parent.width/7
                               y: 300
                           }
                           Row {
                             anchors.centerIn: parent
                             AppButton {
                               text: "ط"
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
                               text: "و"
                               textColor: "black"
                               backgroundColor: "lightsteelblue"
                               backgroundColorPressed: "green"
                               textSize: 32
                               width: 150
                               height: 80
                               radius: 100
                               fontBold: true
                               onClicked:{
                                   scoreID18.text= "Score: 18"
                                   clicksound.play()

                   }


                             }
                             AppButton {
                               text: "ح"
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
                               text: "خ"
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
                                     mainPage.navigationStack.push(intermediatePage19)
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
                         id: intermediatePage19
                         Page {
                           title: "Intermediate Level"
                           BackgroundImage{
                               anchors.fill: parent
                               source: "../pages.jpg"

                           AppText{
                               text: "Choose The Correct Letter To Complete The Word"
                               fontSize: 35
                               topPadding:15
                               x:200
                               color: "white"

                           }
                           AppText{
                               text: "-     ه      ا     ء"
                               fontSize: 40
                               x:parent.width /2
                               y:300
                               color: "black"
                           }

                           AppText{
                               id: scoreID19
                               color: "black"
                               font.pixelSize: 25
                               font.bold: true
                               text: "Score: 18"
                               x: parent.width/7
                               y: 300
                           }
                           Row {
                             anchors.centerIn: parent
                             AppButton {
                               text: "د"
                               textColor: "black"
                               backgroundColor: "lightsteelblue"
                               backgroundColorPressed: "green"
                               textSize: 32
                               width: 150
                               height: 80
                               radius: 100
                               fontBold: true
                               onClicked:{
                                   scoreID19.text="Score: 19"
                                   clicksound.play()
                   }

                             }
                             AppButton {
                               text: "ج"
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
                               text: "ح"
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
                               text: "خ"
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
                                     mainPage.navigationStack.push(intermediatePage20)
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
                         id: intermediatePage20
                         Page {
                           title: "Intermediate Level"
                           BackgroundImage{
                               anchors.fill: parent
                               source: "../pages.jpg"

                           AppText{
                               text: "Choose The Correct Letter To Complete The Word"
                               fontSize: 35
                               topPadding:15
                               x:200
                               color: "white"

                           }
                           AppText{
                               text: "-     ل      م      ة"
                               fontSize: 40
                               x:parent.width /2
                               y:300
                               color: "black"
                           }

                           AppText{
                               id: scoreID20
                               color: "black"
                               font.pixelSize: 25
                               font.bold: true
                               text: "Score: 19"
                               x: parent.width/7
                               y: 300
                           }
                           Row {
                             anchors.centerIn: parent
                             AppButton {
                               text: "ط"
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
                               text: "ظ"
                               textColor: "black"
                               backgroundColor: "lightsteelblue"
                               backgroundColorPressed: "green"
                               textSize: 32
                               width: 150
                               height: 80
                               radius: 100
                               fontBold: true
                               onClicked: {
                                   scoreID20.text="Score: 20"
                                   clicksound.play()

                   }


                             }
                             AppButton {
                               text: "ص"
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
                               text: "ض"
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
                                     mainPage.navigationStack.push(intermediatePage21)
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
                         id: intermediatePage21
                         Page {
                           title: "Intermediate Level"
                           BackgroundImage{
                               anchors.fill: parent
                               source: "../pages.jpg"

                           AppText{
                               text: "Choose The Correct Letter To Complete The Word"
                               fontSize: 35
                               topPadding:15
                               x:200
                               color: "white"

                           }
                           AppText{
                               text: "ص        -         ي       ر"
                               fontSize: 40
                               x:parent.width /2
                               y:300
                               color: "black"
                           }

                           AppText{
                               id: scoreID21
                               color: "black"
                               font.pixelSize: 25
                               font.bold: true
                               text: "Score: 20"
                               x: parent.width/7
                               y: 300
                           }
                           Row {
                             anchors.centerIn: parent
                             AppButton {
                               text: "ل"
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
                               text: "أ"
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
                               text: "غ"
                               textColor: "black"
                               backgroundColor: "lightsteelblue"
                               backgroundColorPressed: "green"
                               textSize: 32
                               width: 150
                               height: 80
                               radius: 100
                               fontBold: true
                               onClicked:{
                                   scoreID21.text="Score: 21"
                                   clicksound.play()

                   }

                             }
                             AppButton {
                               text: "ع"
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
                                     mainPage.navigationStack.push(intermediatePage22)
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
                         id: intermediatePage22
                         Page {
                           title: "Intermediate Level"
                           BackgroundImage{
                               anchors.fill: parent
                               source: "../pages.jpg"

                           AppText{
                               text: "Choose The Correct Letter To Complete The Word"
                               fontSize: 35
                               topPadding:15
                               x:200
                               color: "white"

                           }
                           AppText{
                               text: "م     -      ع       ق       ة"
                               fontSize: 40
                               x:parent.width /2
                               y:300
                               color: "black"
                           }

                           AppText{
                               id: scoreID22
                               color: "black"
                               font.pixelSize: 25
                               font.bold: true
                               text: "Score: 21"
                               x: parent.width/7
                               y: 300
                           }
                           Row {
                             anchors.centerIn: parent
                             AppButton {
                               text: "ف"
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
                               text: "ل"
                               textColor: "black"
                               backgroundColor: "lightsteelblue"
                               backgroundColorPressed: "green"
                               textSize: 32
                               width: 150
                               height: 80
                               radius: 100
                               fontBold: true
                               onClicked:{
                                   scoreID22.text="Score: 22"
                                   clicksound.play()
                   }



                             }
                             AppButton {
                               text: "ق"
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
                               text: "خ"
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
                                     mainPage.navigationStack.push(intermediatePage23)
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
                         id: intermediatePage23
                         Page {
                           title: "Intermediate Level"
                           BackgroundImage{
                               anchors.fill: parent
                               source: "../pages.jpg"

                           AppText{
                               text: "Choose The Correct Letter To Complete The Word"
                               fontSize: 35
                               topPadding:15
                               x:200
                               color: "white"

                           }
                           AppText{
                               text: "-      ح        ل        ة"
                               fontSize: 40
                               x:parent.width /2
                               y:300
                               color: "black"
                           }
                           AppText{
                               id: scoreID23
                               color: "black"
                               font.pixelSize: 25
                               font.bold: true
                               text: "Score: 22"
                               x: parent.width/7
                               y: 300
                           }

                           Row {
                             anchors.centerIn: parent
                             AppButton {
                               text: "ن"
                               textColor: "black"
                               backgroundColor: "lightsteelblue"
                               backgroundColorPressed: "green"
                               textSize: 32
                               width: 150
                               height: 80
                               radius: 100
                               fontBold: true
                               onClicked:{
                                   scoreID23.text = "Score: 23"
                                   clicksound.play()
                   }

                             }
                             AppButton {
                               text: "و"
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
                               text: "ض"
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
                               text: "د"
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
                                     mainPage.navigationStack.push(intermediatePage24)
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
                         id: intermediatePage24
                         Page {
                           title: "Intermediate Level"
                           BackgroundImage{
                               anchors.fill: parent
                               source: "../pages.jpg"

                           AppText{
                               text: "Choose The Correct Letter To Complete The Word"
                               fontSize: 35
                               topPadding:15
                               x:200
                               color: "white"

                           }
                           AppText{
                               text: "ف        ا        ك       -      ة"
                               fontSize: 40
                               x:parent.width /2
                               y:300
                               color: "black"
                           }

                           AppText{
                               id: scoreID24
                               color: "black"
                               font.pixelSize: 25
                               font.bold: true
                               text: "Score: 23"
                               x: parent.width/7
                               y: 300
                           }
                           Row {
                             anchors.centerIn: parent
                             AppButton {
                               text: "ط"
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
                                 text: "ه"
                               textColor: "black"
                               backgroundColor: "lightsteelblue"
                               backgroundColorPressed: "green"
                               textSize: 32
                               width: 150
                               height: 80
                               radius: 100
                               fontBold: true
                               onClicked:{
                                   scoreID24.text = "Score: 24"
                                   clicksound.play()
                   }



                             }
                             AppButton {
                               text: "ي"
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
                               text: "خ"
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
                                     mainPage.navigationStack.push(intermediatePage25)
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
                              id: intermediatePage25
                              Page {
                                title: "Intermediate Level"
                                BackgroundImage{
                                    anchors.fill: parent
                                    source: "../pages.jpg"

                                AppText{
                                    text: "Choose The Correct Letter To Complete The Word"
                                    fontSize: 35
                                    topPadding:15
                                    x:200
                                    color: "white"

                                }
                                AppText{
                                    text: "ه        ج         -        م"
                                    fontSize: 40
                                    x:parent.width /2
                                    y:300
                                    color: "black"
                                }

                                AppText{
                                    id: scoreID25
                                    color: "black"
                                    font.pixelSize: 25
                                    font.bold: true
                                    text: "Score: 24"
                                    x: parent.width/7
                                    y: 300
                                }
                                Row {
                                  anchors.centerIn: parent
                                  AppButton {
                                    text: "ز"
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
                                    text: "ز"
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
                                    text: "و"
                                    textColor: "black"
                                    backgroundColor: "lightsteelblue"
                                    backgroundColorPressed: "green"
                                    textSize: 32
                                    width: 150
                                    height: 80
                                    radius: 100
                                    fontBold: true
                                    onClicked:{
                                        scoreID25.text="Score: 25"
                                        clicksound.play()
                        }


                                  }
                                  AppButton {
                                    text: "د"
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
                                          mainPage.navigationStack.push(intermediatePage26)
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
                              id: intermediatePage26
                              Page {
                                title: "Intermediate Level"
                                BackgroundImage{
                                    anchors.fill: parent
                                    source: "../pages.jpg"

                                AppText{
                                    text: "Choose The Correct Letter To Complete The Word"
                                    fontSize: 35
                                    topPadding:15
                                    x:200
                                    color: "white"

                                }
                                AppText{
                                    text: "م        -         ح       ف"
                                    fontSize: 40
                                    x:parent.width /2
                                    y:300
                                    color: "black"
                                }
                                AppText{
                                    id: scoreID26
                                    color: "black"
                                    font.pixelSize: 25
                                    font.bold: true
                                    text: "Score: 25"
                                    x: parent.width/7
                                    y: 300
                                }

                                Row {
                                  anchors.centerIn: parent
                                  AppButton {
                                    text: "ط"
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
                                    text: "ج"
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
                                    text: "ض"
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
                                    text: "ص"
                                    textColor: "black"
                                    backgroundColor: "lightsteelblue"
                                    backgroundColorPressed: "green"
                                    textSize: 32
                                    width: 150
                                    height: 80
                                    radius: 100
                                    fontBold: true
                                    onClicked:{
                                        scoreID26.text="Score: 26"
                                        clicksound.play()
                        }


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
                                          mainPage.navigationStack.push(intermediatePage27)
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
                              id: intermediatePage27
                              Page {
                                title: "Intermediate Level"
                                BackgroundImage{
                                    anchors.fill: parent
                                    source: "../pages.jpg"

                                AppText{
                                    text: "Choose The Correct Letter To Complete The Word"
                                    fontSize: 35
                                    topPadding:15
                                    x:200
                                    color: "white"

                                }
                                AppText{
                                    text: "م        ر         ي         -"
                                    fontSize: 40
                                    x:parent.width /2
                                    y:300
                                    color: "black"
                                }
                                AppText{
                                    id: scoreID27
                                    color: "black"
                                    font.pixelSize: 25
                                    font.bold: true
                                    text: "Score: 26"
                                    x: parent.width/7
                                    y: 300
                                }

                                Row {
                                  anchors.centerIn: parent
                                  AppButton {
                                    text: "ص"
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
                                    text: "ض"
                                    textColor: "black"
                                    backgroundColor: "lightsteelblue"
                                    backgroundColorPressed: "green"
                                    textSize: 32
                                    width: 150
                                    height: 80
                                    radius: 100
                                    fontBold: true
                                    onClicked:{
                                        scoreID27.text="Score: 27"
                                        clicksound.play()
                        }



                                  }
                                  AppButton {
                                    text: "ب"
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
                                    text: "ث"
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
                                          mainPage.navigationStack.push(intermediatePage28)
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
                              id: intermediatePage28
                              Page {
                                title: "Intermediate Level"
                                BackgroundImage{
                                    anchors.fill: parent
                                    source: "../pages.jpg"

                                AppText{
                                    text: "Choose The Correct Letter To Complete The Word"
                                    fontSize: 35
                                    topPadding:15
                                    x:200
                                    color: "white"

                                }
                                AppText{
                                    text: "ر      -       ا        ض       ة"
                                    fontSize: 40
                                    x:parent.width /2
                                    y:300
                                    color: "black"
                                }

                                AppText{
                                    id: scoreID28
                                    color: "black"
                                    font.pixelSize: 25
                                    font.bold: true
                                    text: "Score: 27"
                                    x: parent.width/7
                                    y: 300
                                }
                                Row {
                                  anchors.centerIn: parent
                                  AppButton {
                                    text: "ي"
                                    textColor: "black"
                                    backgroundColor: "lightsteelblue"
                                    backgroundColorPressed: "green"
                                    textSize: 32
                                    width: 150
                                    height: 80
                                    radius: 100
                                    fontBold: true
                                    onClicked:{
                                        scoreID28.text= "Score: 28"
                                        clicksound.play()
                        }

                                  }
                                  AppButton {
                                    text: "ك"
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
                                    text: "ط"
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
                                    text: "ش"
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
                                          mainPage.navigationStack.push(intermediatePage29)
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
                              id: intermediatePage29
                              Page {
                                title: "Intermediate Level "
                                BackgroundImage{
                                    anchors.fill: parent
                                    source: "../pages.jpg"


                        }
                                Text {
                                    anchors.centerIn: parent
                                    text: qsTr("Congratulations You Passed The Intermediate Level Successfully")
                                    font.bold: true
                                    font.pointSize: 20
                                    color: "#3D35D3"
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





