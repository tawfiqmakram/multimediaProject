import Felgo 3.0
import QtQuick 2.0

App {
  id: app
  // main page
  NavigationStack {
    Page {
      id: mainPage
      title: "Main page"

      Column {
        anchors.centerIn: parent

        // text to show the current count and button to push the second page
        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "start the game"
        }

        AppButton {
            id: junior
            text: "junior"

        }
        AppButton {
            id: intermediate
            text: "intermediate"
        }
        AppButton {
            id : professional
            text: "professional"
            onClicked: {
                mainPage.navigationStack.push(professionalPage1)
            }
        }
      }
    }
  }

  // prfessional level
  // awl 7rf
  Component {
    id: professionalPage1
    Page {
      title: "Professional Level"
      AppText{
          anchors.horizontalCenter: parent.horizontalCenter
          text: "choose the word that begin with this letter(أ)"
      }
      Row {
        anchors.centerIn: parent
        AppButton {
          text: "أرنب"
          onClicked: mainPage.navigationStack.push(result1)

        }
        AppButton {
          text: "بطة"

        }
        AppButton {
          text: "جمل"

        }
        AppButton {
          text: "ثعلب"
        }
        AppButton{
            text: "Exit"
            onClicked: Qt.quit();
            x:600
            y:350
        }
        AppButton{
            text: "Main page"
            onClicked: mainPage.navigationStack.push(mainPage)
            x:50
            y:350
        }
      }
    }
  }
  //result awl 7rf
  Component{
      id:result1
      Page{
          title: "Your Result is Here"
          AppText{
              text: "correct answer"
              anchors.horizontalCenter: parent.horizontalCenter
          }

          AppButton{
              text: "Next"
              anchors.centerIn: parent
              onClicked:mainPage.navigationStack.push(professionalPage2)
          }
      }
  }
  //tany 7rf
  Component {
    id: professionalPage2
    Page {
      title: "Professional Level"
      AppText{
          anchors.horizontalCenter: parent.horizontalCenter
          text: "choose the word that begin with this letter(ب)"
      }
      Row {
        anchors.centerIn: parent
        AppButton {
          text: "أرنب"
        }
        AppButton {
          text: "بطة"
          onClicked: mainPage.navigationStack.push(result2)
        }
        AppButton {
          text: "جمل"

        }
        AppButton {
          text: "ثعلب"
        }
        AppButton{
            text: "Exit"
            onClicked: Qt.quit();
            x:600
            y:350
        }
        AppButton{
            text: "Main page"
            onClicked: mainPage.navigationStack.push(mainPage)
            x:50
            y:350
        }
      }
    }

   }
  //Result tany 7rf
  Component{
      id:result2
      Page{
          title: "Your Result is Here"
          AppText{
              text: "correct answer"
              anchors.horizontalCenter: parent.horizontalCenter
          }

          AppButton{
              text: "Next"
              anchors.centerIn: parent
              onClicked: mainPage.navigationStack.push(professionalPage3)
          }
      }
  }
  //page (ت)
  Component {
    id: professionalPage3
    Page {
      title: "Professional Level"
      AppText{
          anchors.horizontalCenter: parent.horizontalCenter
          text: "choose the word that begin with this letter(ت)"
      }
      Row {
        anchors.centerIn: parent
        AppButton {
          text: "أرنب"
        }
        AppButton {
          text: "بطة"

        }
        AppButton {
          text: "تفاح"
          onClicked: mainPage.navigationStack.push(result3)

        }
        AppButton {
          text: "ثعلب"
        }
        AppButton{
            text: "Exit"
            onClicked: Qt.quit();
            x:600
            y:350
        }
        AppButton{
            text: "Main page"
            onClicked: mainPage.navigationStack.push(mainPage)
            x:50
            y:350
        }
      }
    }
  }

  //result(ت)
  Component{
      id:result3
      Page{
          title: "Your Result is Here"
          AppText{
              text: "correct answer"
              anchors.horizontalCenter: parent.horizontalCenter
          }

          AppButton{
              text: "Next"
              anchors.centerIn: parent
              onClicked: mainPage.navigationStack.push(professionalPage4)
          }
      }
  }
  //page (ث)
  Component {
    id: professionalPage4
    Page {
      title: "Professional Level"
      AppText{
          anchors.horizontalCenter: parent.horizontalCenter
          text: "choose the word that begin with this letter(ث)"
      }
      Row {
        anchors.centerIn: parent
        AppButton {
          text: "أرنب"
        }
        AppButton {
          text: "بطة"
        }
        AppButton {
          text: "تفاح"
        }
        AppButton {
          text: "ثعلب"
          onClicked: mainPage.navigationStack.push(result4)
        }
        AppButton{
            text: "Exit"
            onClicked: Qt.quit();
            x:600
            y:350
        }
        AppButton{
            text: "Main page"
            onClicked: mainPage.navigationStack.push(mainPage)
            x:50
            y:350
        }
      }
    }
  }
  //result(ث)
  Component{
      id:result4
      Page{
          title: "Your Result is Here"
          AppText{
              text: "correct answer"
              anchors.horizontalCenter: parent.horizontalCenter
          }

          AppButton{
              text: "Next"
              anchors.centerIn: parent
              onClicked: mainPage.navigationStack.push(professionalPage5)
          }
      }
  }
  // page (حرف ج)
    Component {
      id: professionalPage5
      Page {
        title: "Professional Level"
        AppText{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "choose the word that begin with this letter(ج)"
        }
        Row {
          anchors.centerIn: parent
          AppButton {
            text: "أرنب"
          }
          AppButton {
            text: "بطة"

          }
          AppButton {
            text: "جمل"
            onClicked: mainPage.navigationStack.push(result5)

          }
          AppButton {
            text: "ثعلب"
          }
          AppButton{
              text: "Exit"
              onClicked: Qt.quit();
              x:600
              y:350
          }
          AppButton{
              text: "Main page"
              onClicked: mainPage.navigationStack.push(mainPage)
              x:50
              y:350
          }
        }
      }
    }
    //result(ج)
    Component{
        id:result5
        Page{
            title: "Your Result is Here"
            AppText{
                text: "correct answer"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            AppButton{
                text: "Next"
                anchors.centerIn: parent
                onClicked: mainPage.navigationStack.push(professionalPage6)
            }
        }
    }
    // page (ح)
      Component {
        id: professionalPage6
        Page {
          title: "Professional Level"
          AppText{
              anchors.horizontalCenter: parent.horizontalCenter
              text: "choose the word that begin with this letter(ح)"
          }
          Row {
            anchors.centerIn: parent
            AppButton {
              text: "زرافة"
            }
            AppButton {
              text: "ثور"

            }
            AppButton {
              text: "حمار"
              onClicked: mainPage.navigationStack.push(result6)

            }
            AppButton {
              text: "صياد"
            }
            AppButton{
                text: "Exit"
                onClicked: Qt.quit();
                x:600
                y:350
            }
            AppButton{
                text: "Main page"
                onClicked: mainPage.navigationStack.push(mainPage)
                x:50
                y:350
            }
          }
        }
      }
      //result(ح)
      Component{
          id:result6
          Page{
              title: "Your Result is Here"
              AppText{
                  text: "correct answer"
                  anchors.horizontalCenter: parent.horizontalCenter
              }

              AppButton{
                  text: "Next"
                  anchors.centerIn: parent
                  onClicked: mainPage.navigationStack.push(professionalPage7)
              }
          }
      }
      // page (خ)
        Component {
          id: professionalPage7
          Page {
            title: "Professional Level"
            AppText{
                anchors.horizontalCenter: parent.horizontalCenter
                text: "choose the word that begin with this letter(خ)"
            }
            Row {
              anchors.centerIn: parent
              AppButton {
                text: "زرافة"
              }
              AppButton {
                text: "ثور"

              }
              AppButton {
                text: "حمار"
              }
              AppButton {
                text: "خروف"
                onClicked: mainPage.navigationStack.push(result7)
              }
              AppButton{
                  text: "Exit"
                  onClicked: Qt.quit();
                  x:600
                  y:350
              }
              AppButton{
                  text: "Main page"
                  onClicked: mainPage.navigationStack.push(mainPage)
                  x:50
                  y:350
              }
            }
          }
        }
        //result(خ)
        Component{
            id:result7
            Page{
                title: "Your Result is Here"
                AppText{
                    text: "correct answer"
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                AppButton{
                    text: "Next"
                    anchors.centerIn: parent
                    onClicked: mainPage.navigationStack.push(professionalPage8)
                }
            }
        }
        // page (د)
          Component {
            id: professionalPage8
            Page {
              title: "Professional Level"
              AppText{
                  anchors.horizontalCenter: parent.horizontalCenter
                  text: "choose the word that begin with this letter(د)"
              }
              Row {
                anchors.centerIn: parent
                AppButton {
                  text: "زرافة"
                }
                AppButton {
                  text: "ديك"
                  onClicked: mainPage.navigationStack.push(result8)
                }
                AppButton {
                  text: "حمار"
                }
                AppButton {
                  text: "خروف"
                }
                AppButton{
                    text: "Exit"
                    onClicked: Qt.quit();
                    x:600
                    y:350
                }
                AppButton{
                    text: "Main page"
                    onClicked: mainPage.navigationStack.push(mainPage)
                    x:50
                    y:350
                }
              }
            }
          }
          //result(د)
          Component{
              id:result8
              Page{
                  title: "Your Result is Here"
                  AppText{
                      text: "correct answer"
                      anchors.horizontalCenter: parent.horizontalCenter
                  }

                  AppButton{
                      text: "Next"
                      anchors.centerIn: parent
                      onClicked: mainPage.navigationStack.push(professionalPage9)
                  }
              }
          }
          // page (ّّّذ)
            Component {
              id: professionalPage9
              Page {
                title: "Professional Level"
                AppText{
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "choose the word that begin with this letter(ذ)"
                }
                Row {
                  anchors.centerIn: parent
                  AppButton {
                    text: "ذرة"
                    onClicked: mainPage.navigationStack.push(result9)
                  }
                  AppButton {
                    text: "ديك"
                  }
                  AppButton {
                    text: "حمار"
                  }
                  AppButton {
                    text: "خروف"
                  }
                  AppButton{
                      text: "Exit"
                      onClicked: Qt.quit();
                      x:600
                      y:350
                  }
                  AppButton{
                      text: "Main page"
                      onClicked: mainPage.navigationStack.push(mainPage)
                      x:50
                      y:350
                  }
                }
              }
            }
            //result(ذ)
            Component{
                id:result9
                Page{
                    title: "Your Result is Here"
                    AppText{
                        text: "correct answer"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    AppButton{
                        text: "Next"
                        anchors.centerIn: parent
                        onClicked: mainPage.navigationStack.push(professionalPage10)
                    }
                }
            }
            // page (ر)
              Component {
                id: professionalPage10
                Page {
                  title: "Professional Level"
                  AppText{
                      anchors.horizontalCenter: parent.horizontalCenter
                      text: "choose the word that begin with this letter(ر)"
                  }
                  Row {
                    anchors.centerIn: parent
                    AppButton {
                      text: "ذرة"
                    }
                    AppButton {
                      text: "ديك"
                    }
                    AppButton {
                      text: "حمار"
                    }
                    AppButton {
                      text: "رمل"
                      onClicked: mainPage.navigationStack.push(result10)
                    }
                    AppButton{
                        text: "Exit"
                        onClicked: Qt.quit();
                        x:600
                        y:350
                    }
                    AppButton{
                        text: "Main page"
                        onClicked: mainPage.navigationStack.push(mainPage)
                        x:50
                        y:350
                    }
                  }
                }
              }
              //result(ر)
              Component{
                  id:result10
                  Page{
                      title: "Your Result is Here"
                      AppText{
                          text: "correct answer"
                          anchors.horizontalCenter: parent.horizontalCenter
                      }

                      AppButton{
                          text: "Next"
                          anchors.centerIn: parent
                          onClicked: mainPage.navigationStack.push(professionalPage11)
                      }
                  }
              }
              // page (ز)
                Component {
                  id: professionalPage11
                  Page {
                    title: "Professional Level"
                    AppText{
                        anchors.horizontalCenter: parent.horizontalCenter
                        text: "choose the word that begin with this letter(ز)"
                    }
                    Row {
                      anchors.centerIn: parent
                      AppButton {
                        text: "ذرة"
                      }
                      AppButton {
                        text: "ديك"
                      }
                      AppButton {
                        text: "زهرة"
                        onClicked: mainPage.navigationStack.push(result11)
                      }
                      AppButton {
                        text: "رمل"
                      }
                      AppButton{
                          text: "Exit"
                          onClicked: Qt.quit();
                          x:600
                          y:350
                      }
                      AppButton{
                          text: "Main page"
                          onClicked: mainPage.navigationStack.push(mainPage)
                          x:50
                          y:350
                      }
                    }
                  }
                }
                //result(ز)
                Component{
                    id:result11
                    Page{
                        title: "Your Result is Here"
                        AppText{
                            text: "correct answer"
                            anchors.horizontalCenter: parent.horizontalCenter
                        }

                        AppButton{
                            text: "Next"
                            anchors.centerIn: parent
                            onClicked: mainPage.navigationStack.push(professionalPage12)
                        }
                    }
                }
                // page (س)
                  Component {
                    id: professionalPage12
                    Page {
                      title: "Professional Level"
                      AppText{
                          anchors.horizontalCenter: parent.horizontalCenter
                          text: "choose the word that begin with this letter(س)"
                      }
                      Row {
                        anchors.centerIn: parent
                        AppButton {
                          text: "ذرة"
                        }
                        AppButton {
                          text: "ديك"
                        }
                        AppButton {
                          text: "زهرة"
                        }
                        AppButton {
                          text: "سمكة"
                          onClicked: mainPage.navigationStack.push(result12)
                        }
                        AppButton{
                            text: "Exit"
                            onClicked: Qt.quit();
                            x:600
                            y:350
                        }
                        AppButton{
                            text: "Main page"
                            onClicked: mainPage.navigationStack.push(mainPage)
                            x:50
                            y:350
                        }
                      }
                    }
                  }
                  //result(س)
                  Component{
                      id:result12
                      Page{
                          title: "Your Result is Here"
                          AppText{
                              text: "correct answer"
                              anchors.horizontalCenter: parent.horizontalCenter
                          }

                          AppButton{
                              text: "Next"
                              anchors.centerIn: parent
                              onClicked: mainPage.navigationStack.push(professionalPage13)
                          }
                      }
                  }
                  // page (ش)
                    Component {
                      id: professionalPage13
                      Page {
                        title: "Professional Level"
                        AppText{
                            anchors.horizontalCenter: parent.horizontalCenter
                            text: "choose the word that begin with this letter(ش)"
                        }
                        Row {
                          anchors.centerIn: parent
                          AppButton {
                            text: "ذرة"
                          }
                          AppButton {
                            text: "شمس"
                            onClicked: mainPage.navigationStack.push(result13)
                          }
                          AppButton {
                            text: "زهرة"
                          }
                          AppButton {
                            text: "سمكة"
                          }
                          AppButton{
                              text: "Exit"
                              onClicked: Qt.quit();
                              x:600
                              y:350
                          }
                          AppButton{
                              text: "Main page"
                              onClicked: mainPage.navigationStack.push(mainPage)
                              x:50
                              y:350
                          }
                        }
                      }
                    }
                    //result(ش)
                    Component{
                        id:result13
                        Page{
                            title: "Your Result is Here"
                            AppText{
                                text: "correct answer"
                                anchors.horizontalCenter: parent.horizontalCenter
                            }

                            AppButton{
                                text: "Next"
                                anchors.centerIn: parent
                                onClicked: mainPage.navigationStack.push(professionalPage14)
                            }
                        }
                    }
                    // page (ص)
                      Component {
                        id: professionalPage14
                        Page {
                          title: "Professional Level"
                          AppText{
                              anchors.horizontalCenter: parent.horizontalCenter
                              text: "choose the word that begin with this letter(ص)"
                          }
                          Row {
                            anchors.centerIn: parent
                            AppButton {
                              text: "صوف"
                              onClicked: mainPage.navigationStack.push(result14)
                            }
                            AppButton {
                              text: "شمس"
                            }
                            AppButton {
                              text: "زهرة"
                            }
                            AppButton {
                              text: "سمكة"
                            }
                            AppButton{
                                text: "Exit"
                                onClicked: Qt.quit();
                                x:600
                                y:350
                            }
                            AppButton{
                                text: "Main page"
                                onClicked: mainPage.navigationStack.push(mainPage)
                                x:50
                                y:350
                            }
                          }
                        }
                      }
                      //result(ص)
                      Component{
                          id:result14
                          Page{
                              title: "Your Result is Here"
                              AppText{
                                  text: "correct answer"
                                  anchors.horizontalCenter: parent.horizontalCenter
                              }

                              AppButton{
                                  text: "Next"
                                  anchors.centerIn: parent
                                  onClicked: mainPage.navigationStack.push(professionalPage15)
                              }
                          }
                      }
                      // page (ض)
                        Component {
                          id: professionalPage15
                          Page {
                            title: "Professional Level"
                            AppText{
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "choose the word that begin with this letter(ض)"
                            }
                            Row {
                              anchors.centerIn: parent
                              AppButton {
                                text: "صوف"
                              }
                              AppButton {
                                text: "شمس"
                              }
                              AppButton {
                                text: "ضفدع"
                                onClicked: mainPage.navigationStack.push(result15)
                              }
                              AppButton {
                                text: "سمكة"
                              }
                              AppButton{
                                  text: "Exit"
                                  onClicked: Qt.quit();
                                  x:600
                                  y:350
                              }
                              AppButton{
                                  text: "Main page"
                                  onClicked: mainPage.navigationStack.push(mainPage)
                                  x:50
                                  y:350
                              }
                            }
                          }
                        }
                        //result(ض)
                        Component{
                            id:result15
                            Page{
                                title: "Your Result is Here"
                                AppText{
                                    text: "correct answer"
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }

                                AppButton{
                                    text: "Next"
                                    anchors.centerIn: parent
                                    onClicked: mainPage.navigationStack.push(professionalPage16)
                                }
                            }
                        }
                        // page (ط)
                          Component {
                            id: professionalPage16
                            Page {
                              title: "Professional Level"
                              AppText{
                                  anchors.horizontalCenter: parent.horizontalCenter
                                  text: "choose the word that begin with this letter(ط)"
                              }
                              Row {
                                anchors.centerIn: parent
                                AppButton {
                                  text: "صوف"
                                }
                                AppButton {
                                  text: "طائرة"
                                  onClicked: mainPage.navigationStack.push(result16)
                                }
                                AppButton {
                                  text: "ضفدع"
                                }
                                AppButton {
                                  text: "سمكة"
                                }
                                AppButton{
                                    text: "Exit"
                                    onClicked: Qt.quit();
                                    x:600
                                    y:350
                                }
                                AppButton{
                                    text: "Main page"
                                    onClicked: mainPage.navigationStack.push(mainPage)
                                    x:50
                                    y:350
                                }
                              }
                            }
                          }
                          //result(ط)
                          Component{
                              id:result16
                              Page{
                                  title: "Your Result is Here"
                                  AppText{
                                      text: "correct answer"
                                      anchors.horizontalCenter: parent.horizontalCenter
                                  }

                                  AppButton{
                                      text: "Next"
                                      anchors.centerIn: parent
                                      onClicked: mainPage.navigationStack.push(professionalPage17)
                                  }
                              }
                          }
                          // page (ظ)
                            Component {
                              id: professionalPage17
                              Page {
                                title: "Professional Level"
                                AppText{
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    text: "choose the word that begin with this letter(ظ)"
                                }
                                Row {
                                  anchors.centerIn: parent
                                  AppButton {
                                    text: "صوف"
                                  }
                                  AppButton {
                                    text: "طائرة"
                                  }
                                  AppButton {
                                    text: "ضفدع"
                                  }
                                  AppButton {
                                    text: "ظرف"
                                    onClicked: mainPage.navigationStack.push(result17)
                                  }
                                  AppButton{
                                      text: "Exit"
                                      onClicked: Qt.quit();
                                      x:600
                                      y:350
                                  }
                                  AppButton{
                                      text: "Main page"
                                      onClicked: mainPage.navigationStack.push(mainPage)
                                      x:50
                                      y:350
                                  }
                                }
                              }
                            }
                            //result(ظ)
                            Component{
                                id:result17
                                Page{
                                    title: "Your Result is Here"
                                    AppText{
                                        text: "correct answer"
                                        anchors.horizontalCenter: parent.horizontalCenter
                                    }

                                    AppButton{
                                        text: "Next"
                                        anchors.centerIn: parent
                                        onClicked: mainPage.navigationStack.push(professionalPage18)
                                    }
                                }
                            }
                            // page (ع)
                              Component {
                                id: professionalPage18
                                Page {
                                  title: "Professional Level"
                                  AppText{
                                      anchors.horizontalCenter: parent.horizontalCenter
                                      text: "choose the word that begin with this letter(ع)"
                                  }
                                  Row {
                                    anchors.centerIn: parent
                                    AppButton {
                                      text: "صوف"
                                    }
                                    AppButton {
                                      text: "عصفور"
                                      onClicked: mainPage.navigationStack.push(result18)
                                    }
                                    AppButton {
                                      text: "ضفدع"
                                    }
                                    AppButton {
                                      text: "ظرف"
                                    }
                                    AppButton{
                                        text: "Exit"
                                        onClicked: Qt.quit();
                                        x:600
                                        y:350
                                    }
                                    AppButton{
                                        text: "Main page"
                                        onClicked: mainPage.navigationStack.push(mainPage)
                                        x:50
                                        y:350
                                    }
                                  }
                                }
                              }
                              //result(ع)
                              Component{
                                  id:result18
                                  Page{
                                      title: "Your Result is Here"
                                      AppText{
                                          text: "correct answer"
                                          anchors.horizontalCenter: parent.horizontalCenter
                                      }

                                      AppButton{
                                          text: "Next"
                                          anchors.centerIn: parent
                                          onClicked: mainPage.navigationStack.push(professionalPage19)
                                      }
                                  }
                              }
                              // page (غ)
                                Component {
                                  id: professionalPage19
                                  Page {
                                    title: "Professional Level"
                                    AppText{
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        text: "choose the word that begin with this letter(غ)"
                                    }
                                    Row {
                                      anchors.centerIn: parent
                                      AppButton {
                                        text: "غزال"
                                        onClicked: mainPage.navigationStack.push(result19)
                                      }
                                      AppButton {
                                        text: "عصفور"
                                      }
                                      AppButton {
                                        text: "ضفدع"
                                      }
                                      AppButton {
                                        text: "ظرف"
                                      }
                                      AppButton{
                                          text: "Exit"
                                          onClicked: Qt.quit();
                                          x:600
                                          y:350
                                      }
                                      AppButton{
                                          text: "Main page"
                                          onClicked: mainPage.navigationStack.push(mainPage)
                                          x:50
                                          y:350
                                      }
                                    }
                                  }
                                }
                                //result(غ)
                                Component{
                                    id:result19
                                    Page{
                                        title: "Your Result is Here"
                                        AppText{
                                            text: "correct answer"
                                            anchors.horizontalCenter: parent.horizontalCenter
                                        }

                                        AppButton{
                                            text: "Next"
                                            anchors.centerIn: parent
                                            onClicked: mainPage.navigationStack.push(professionalPage20)
                                        }
                                    }
                                }
                                // page (ف)
                                  Component {
                                    id: professionalPage20
                                    Page {
                                      title: "Professional Level"
                                      AppText{
                                          anchors.horizontalCenter: parent.horizontalCenter
                                          text: "choose the word that begin with this letter(ف)"
                                      }
                                      Row {
                                        anchors.centerIn: parent
                                        AppButton {
                                          text: "غزال"
                                        }
                                        AppButton {
                                          text: "عصفور"
                                        }
                                        AppButton {
                                          text: "فراشة"
                                          onClicked: mainPage.navigationStack.push(result20)
                                        }
                                        AppButton {
                                          text: "ظرف"
                                        }
                                        AppButton{
                                            text: "Exit"
                                            onClicked: Qt.quit();
                                            x:600
                                            y:350
                                        }
                                        AppButton{
                                            text: "Main page"
                                            onClicked: mainPage.navigationStack.push(mainPage)
                                            x:50
                                            y:350
                                        }
                                      }
                                    }
                                  }
                                  //result(ف)
                                  Component{
                                      id:result20
                                      Page{
                                          title: "Your Result is Here"
                                          AppText{
                                              text: "correct answer"
                                              anchors.horizontalCenter: parent.horizontalCenter
                                          }

                                          AppButton{
                                              text: "Next"
                                              anchors.centerIn: parent
                                              onClicked: mainPage.navigationStack.push(professionalPage21)
                                          }
                                      }
                                  }
                                  // page (ق)
                                    Component {
                                      id: professionalPage21
                                      Page {
                                        title: "Professional Level"
                                        AppText{
                                            anchors.horizontalCenter: parent.horizontalCenter
                                            text: "choose the word that begin with this letter(ق)"
                                        }
                                        Row {
                                          anchors.centerIn: parent
                                          AppButton {
                                            text: "غزال"
                                          }
                                          AppButton {
                                            text: "عصفور"
                                          }
                                          AppButton {
                                            text: "فراشة"
                                          }
                                          AppButton {
                                            text: "قارب"
                                            onClicked: mainPage.navigationStack.push(result21)
                                          }
                                          AppButton{
                                              text: "Exit"
                                              onClicked: Qt.quit();
                                              x:600
                                              y:350
                                          }
                                          AppButton{
                                              text: "Main page"
                                              onClicked: mainPage.navigationStack.push(mainPage)
                                              x:50
                                              y:350
                                          }
                                        }
                                      }
                                    }
                                    //result(ق)
                                    Component{
                                        id:result21
                                        Page{
                                            title: "Your Result is Here"
                                            AppText{
                                                text: "correct answer"
                                                anchors.horizontalCenter: parent.horizontalCenter
                                            }

                                            AppButton{
                                                text: "Next"
                                                anchors.centerIn: parent
                                                onClicked: mainPage.navigationStack.push(professionalPage22)
                                            }
                                        }
                                    }
                                    // page (ك)
                                      Component {
                                        id: professionalPage22
                                        Page {
                                          title: "Professional Level"
                                          AppText{
                                              anchors.horizontalCenter: parent.horizontalCenter
                                              text: "choose the word that begin with this letter(ك)"
                                          }
                                          Row {
                                            anchors.centerIn: parent
                                            AppButton {
                                              text: "غزال"
                                            }
                                            AppButton {
                                              text: "عصفور"
                                            }
                                            AppButton {
                                              text: "كرة"
                                              onClicked: mainPage.navigationStack.push(result22)
                                            }
                                            AppButton {
                                              text: "قارب"
                                            }
                                            AppButton{
                                                text: "Exit"
                                                onClicked: Qt.quit();
                                                x:600
                                                y:350
                                            }
                                            AppButton{
                                                text: "Main page"
                                                onClicked: mainPage.navigationStack.push(mainPage)
                                                x:50
                                                y:350
                                            }
                                          }
                                        }
                                      }
                                      //result(ك)
                                      Component{
                                          id:result22
                                          Page{
                                              title: "Your Result is Here"
                                              AppText{
                                                  text: "correct answer"
                                                  anchors.horizontalCenter: parent.horizontalCenter
                                              }

                                              AppButton{
                                                  text: "Next"
                                                  anchors.centerIn: parent
                                                  onClicked: mainPage.navigationStack.push(professionalPage23)
                                              }
                                          }
                                      }
                                      // page (ل)
                                        Component {
                                          id: professionalPage23
                                          Page {
                                            title: "Professional Level"
                                            AppText{
                                                anchors.horizontalCenter: parent.horizontalCenter
                                                text: "choose the word that begin with this letter(ل)"
                                            }
                                            Row {
                                              anchors.centerIn: parent
                                              AppButton {
                                                text: "ليمون"
                                                onClicked: mainPage.navigationStack.push(result23)
                                              }
                                              AppButton {
                                                text: "عصفور"
                                              }
                                              AppButton {
                                                text: "كرة"
                                              }
                                              AppButton {
                                                text: "قارب"
                                              }
                                              AppButton{
                                                  text: "Exit"
                                                  onClicked: Qt.quit();
                                                  x:600
                                                  y:350
                                              }
                                              AppButton{
                                                  text: "Main page"
                                                  onClicked: mainPage.navigationStack.push(mainPage)
                                                  x:50
                                                  y:350
                                              }
                                            }
                                          }
                                        }
                                        //result(ل)
                                        Component{
                                            id:result23
                                            Page{
                                                title: "Your Result is Here"
                                                AppText{
                                                    text: "correct answer"
                                                    anchors.horizontalCenter: parent.horizontalCenter
                                                }

                                                AppButton{
                                                    text: "Next"
                                                    anchors.centerIn: parent
                                                    onClicked: mainPage.navigationStack.push(professionalPage24)
                                                }
                                            }
                                        }
                                        // page (م)
                                          Component {
                                            id: professionalPage24
                                            Page {
                                              title: "Professional Level"
                                              AppText{
                                                  anchors.horizontalCenter: parent.horizontalCenter
                                                  text: "choose the word that begin with this letter(م)"
                                              }
                                              Row {
                                                anchors.centerIn: parent
                                                AppButton {
                                                  text: "ليمون"
                                                }
                                                AppButton {
                                                  text: "عصفور"
                                                }
                                                AppButton {
                                                  text: "كرة"
                                                }
                                                AppButton {
                                                  text: "منزل"
                                                  onClicked: mainPage.navigationStack.push(result24)
                                                }
                                                AppButton{
                                                    text: "Exit"
                                                    onClicked: Qt.quit();
                                                    x:600
                                                    y:350
                                                }
                                                AppButton{
                                                    text: "Main page"
                                                    onClicked: mainPage.navigationStack.push(mainPage)
                                                    x:50
                                                    y:350
                                                }
                                              }
                                            }
                                          }
                                          //result(م)
                                          Component{
                                              id:result24
                                              Page{
                                                  title: "Your Result is Here"
                                                  AppText{
                                                      text: "correct answer"
                                                      anchors.horizontalCenter: parent.horizontalCenter
                                                  }

                                                  AppButton{
                                                      text: "Next"
                                                      anchors.centerIn: parent
                                                      onClicked: mainPage.navigationStack.push(professionalPage25)
                                                  }
                                              }
                                          }
                                          // page (ن)
                                            Component {
                                              id: professionalPage25
                                              Page {
                                                title: "Professional Level"
                                                AppText{
                                                    anchors.horizontalCenter: parent.horizontalCenter
                                                    text: "choose the word that begin with this letter(ن)"
                                                }
                                                Row {
                                                  anchors.centerIn: parent
                                                  AppButton {
                                                    text: "ليمون"
                                                  }
                                                  AppButton {
                                                    text: "عصفور"
                                                  }
                                                  AppButton {
                                                    text: "نحلة"
                                                    onClicked: mainPage.navigationStack.push(result25)
                                                  }
                                                  AppButton {
                                                    text: "منزل"
                                                  }
                                                  AppButton{
                                                      text: "Exit"
                                                      onClicked: Qt.quit();
                                                      x:600
                                                      y:350
                                                  }
                                                  AppButton{
                                                      text: "Main page"
                                                      onClicked: mainPage.navigationStack.push(mainPage)
                                                      x:50
                                                      y:350
                                                  }
                                                }
                                              }
                                            }
                                            //result(م)
                                            Component{
                                                id:result25
                                                Page{
                                                    title: "Your Result is Here"
                                                    AppText{
                                                        text: "correct answer"
                                                        anchors.horizontalCenter: parent.horizontalCenter
                                                    }

                                                    AppButton{
                                                        text: "Next"
                                                        anchors.centerIn: parent
                                                        onClicked: mainPage.navigationStack.push(professionalPage26)
                                                    }
                                                }
                                            }
                                            // page (ه)
                                              Component {
                                                id: professionalPage26
                                                Page {
                                                  title: "Professional Level"
                                                  AppText{
                                                      anchors.horizontalCenter: parent.horizontalCenter
                                                      text: "choose the word that begin with this letter(ه)"
                                                  }
                                                  Row {
                                                    anchors.centerIn: parent
                                                    AppButton {
                                                      text: "هرة"
                                                      onClicked: mainPage.navigationStack.push(result26)
                                                    }
                                                    AppButton {
                                                      text: "عصفور"
                                                    }
                                                    AppButton {
                                                      text: "نحلة"
                                                    }
                                                    AppButton {
                                                      text: "منزل"
                                                    }
                                                    AppButton{
                                                        text: "Exit"
                                                        onClicked: Qt.quit();
                                                        x:600
                                                        y:350
                                                    }
                                                    AppButton{
                                                        text: "Main page"
                                                        onClicked: mainPage.navigationStack.push(mainPage)
                                                        x:50
                                                        y:350
                                                    }
                                                  }
                                                }
                                              }
                                              //result(ه)
                                              Component{
                                                  id:result26
                                                  Page{
                                                      title: "Your Result is Here"
                                                      AppText{
                                                          text: "correct answer"
                                                          anchors.horizontalCenter: parent.horizontalCenter
                                                      }

                                                      AppButton{
                                                          text: "Next"
                                                          anchors.centerIn: parent
                                                          onClicked: mainPage.navigationStack.push(professionalPage27)
                                                      }
                                                  }
                                              }
                                              // page (و)
                                                Component {
                                                  id: professionalPage27
                                                  Page {
                                                    title: "Professional Level"
                                                    AppText{
                                                        anchors.horizontalCenter: parent.horizontalCenter
                                                        text: "choose the word that begin with this letter(و)"
                                                    }
                                                    Row {
                                                      anchors.centerIn: parent
                                                      AppButton {
                                                        text: "وردة"
                                                        onClicked: mainPage.navigationStack.push(result27)
                                                      }
                                                      AppButton {
                                                        text: "عصفور"
                                                      }
                                                      AppButton {
                                                        text: "نحلة"
                                                      }
                                                      AppButton {
                                                        text: "منزل"
                                                      }
                                                      AppButton{
                                                          text: "Exit"
                                                          onClicked: Qt.quit();
                                                          x:600
                                                          y:350
                                                      }
                                                      AppButton{
                                                          text: "Main page"
                                                          onClicked: mainPage.navigationStack.push(mainPage)
                                                          x:50
                                                          y:350
                                                      }
                                                    }
                                                  }
                                                }
                                                //result(و)
                                                Component{
                                                    id:result27
                                                    Page{
                                                        title: "Your Result is Here"
                                                        AppText{
                                                            text: "correct answer"
                                                            anchors.horizontalCenter: parent.horizontalCenter
                                                        }

                                                        AppButton{
                                                            text: "Next"
                                                            anchors.centerIn: parent
                                                            onClicked: mainPage.navigationStack.push(professionalPage28)
                                                        }
                                                    }
                                                }
                                                // page (ي)
                                                  Component {
                                                    id: professionalPage28
                                                    Page {
                                                      title: "Professional Level"
                                                      AppText{
                                                          anchors.horizontalCenter: parent.horizontalCenter
                                                          text: "choose the word that begin with this letter(ي)"
                                                      }
                                                      Row {
                                                        anchors.centerIn: parent
                                                        AppButton {
                                                          text: "هرة"
                                                        }
                                                        AppButton {
                                                          text: "عصفور"
                                                        }
                                                        AppButton {
                                                          text: "يخت"
                                                          onClicked: mainPage.navigationStack.push(result28)
                                                        }
                                                        AppButton {
                                                          text: "منزل"
                                                        }
                                                        AppButton{
                                                            text: "Exit"
                                                            onClicked: Qt.quit();
                                                            x:600
                                                            y:350
                                                        }
                                                        AppButton{
                                                            text: "Main page"
                                                            onClicked: mainPage.navigationStack.push(mainPage)
                                                            x:50
                                                            y:350
                                                        }
                                                      }
                                                    }
                                                  }
                                                  //result(ي)
                                                  Component{
                                                      id:result28
                                                      Page{
                                                          title: "Your Result is Here"
                                                          AppText{
                                                              text: "correct answer"
                                                              anchors.horizontalCenter: parent.horizontalCenter
                                                          }

                                                          AppButton{
                                                              text: "Next"
                                                              anchors.centerIn: parent
                                                              onClicked: mainPage.navigationStack.push(mainPage)
                                                          }
                                                      }
                                                  }
}
