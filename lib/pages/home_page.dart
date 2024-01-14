import 'package:flutter/material.dart';
import 'package:capsuleapp/components/my_button.dart';
import 'package:capsuleapp/components/my_textfield.dart';
import 'package:capsuleapp/pages/cam_screen.dart';
//import 'package:stateful_app/cam_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1A1A1A),//grey[40],
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),

              //Profile
              /*ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    height: 150,
                    width: 350,
                    color: Colors.deepPurple,
                  ),
                ),*/

              Align(
                alignment: Alignment.centerRight,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                  child: Container(
                    height: 150,
                    width: 350,
                    color: Colors.deepPurple,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0), // Adjust the padding as needed
                          child: Image.asset(
                            'lib/images/profilePic.png',
                            width: 150,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 30.0), // Adjust the right padding for the entire column
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10.0), // Adjust the right padding for this text
                                child: Text(
                                  'Tommy Cruise',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 32.0), // Adjust the right padding for this text
                                child: Text(
                                  '@rocky312',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              // No additional padding for 'Streak: 17' text
                              Padding(
                                padding: EdgeInsets.only(right: 20.0, top: 4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Streak: 17 🔥',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
              ),

              const SizedBox(height: 50),

              //Highlights
              /*ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    height: 150,
                    width: 350,
                    color: Colors.deepPurple,
                  ),
                ),*/

              Align(
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  child: Container(
                    height: 150,
                    width: 350,
                    color: Colors.deepPurple,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            'lib/images/highlightInfo.png', // Replace with your image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                      children: [
                        Text(
                          'Latest Capsules',
                          style: TextStyle(
                            color: Colors.grey[200],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]
                  )
              ),

              const SizedBox(height: 7),

              //Recent Pics
              Image.asset(
                //Icons.lock,
                'lib/images/pastPics.png',
                width: 350,
                //color: Colors.white,
              ),

              const SizedBox(height: 40),

              //Bottom Navbar
              /*Image.asset(
                    'lib/images/bottomNavbar.png',
                    width: 400,
                ),*/

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Social
                  RawMaterialButton(
                    onPressed: () {
                    },
                    elevation: 2.0,
                    //Color(0xFF1A1A1A)
                    fillColor: Color(0xFF1A1A1A),
                    //padding: EdgeInsets.all(15.0),
                    shape: const CircleBorder(),
                    child: Image.asset(
                      'lib/images/socialNav.png',
                      width: 50,
                    ),
                  ),

                  SizedBox(width: 16),

                  //Shutter
                  RawMaterialButton(
                    onPressed: () { Navigator.push(
                      context, MaterialPageRoute(builder: (context){
                      return MyApp();//CameraScreen();
                    }),
                    );
                    },
                    elevation: 2.0,
                    fillColor: Colors.white,
                    //padding: EdgeInsets.all(15.0),
                    shape: const CircleBorder(),
                    child: Image.asset(
                      'lib/images/shutterIcon.png',
                      width: 70,
                    ),
                  ),

                  SizedBox(width: 16),

                  //Profile
                  RawMaterialButton(
                    onPressed: () {
                    },
                    elevation: 2.0,
                    fillColor: Color(0xFF1A1A1A),
                    //padding: EdgeInsets.all(15.0),
                    shape: const CircleBorder(),
                    child: Image.asset(
                      'lib/images/profileNav.png',
                      width: 50,
                    ),
                  ),
                ],
              )

            ],),
        )
    );
  }
}
