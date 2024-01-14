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
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    height: 150,
                    width: 350,
                    color: Colors.deepPurple,
                  ),
                ),

                const SizedBox(height: 50),

                //Highlights
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    height: 150,
                    width: 350,
                    color: Colors.deepPurple,
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

                const SizedBox(height: 33),

                //Bottom Navbar
                /*Image.asset(
                    'lib/images/bottomNavbar.png',
                    width: 400,
                ),*/


                OutlinedButton(
                  //borderRadius: BorderRadius.circular(70),
                  onPressed: () { Navigator.push(
                      context, MaterialPageRoute(builder: (context){
                      return MyApp();//CameraScreen();
                      }),
                    );
                  },
                  child: Container(
                    height: 70,
                    width: 150,
                    color: Colors.red,
                  ),
                ),

              ],),
        )
    );
  }
}
