import 'package:capsuleapp/components/my_button.dart';
import 'package:capsuleapp/components/my_textfield.dart';
import 'package:capsuleapp/pages/cam_screen.dart';
import 'home_page.dart';
import 'package:flutter/material.dart';
//import 'package:stateful_app/cam_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in
  //void signUserIn() {Navigator.push(context, route)}

  @override
  Widget build (BuildContext context) {

    void signUserIn() {Navigator.push(
      context, MaterialPageRoute(builder: (context){
      return HomeScreen();//CameraScreen();
    }),
    );}

    return Scaffold(
        backgroundColor: Color(0xFF1A1A1A),//grey[40],
        body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),

                  //logo
                  Image.asset(
                    //Icons.lock,
                    'lib/images/CapsuleLogo.png',
                    //size: 100,
                    //color: Colors.white,
                  ),

                  const SizedBox(height: 10),

                  //welcome back
                  /*Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                ),
              ),*/

                  const SizedBox(height: 50),

                  //username textfield
                  MyTextField(
                    controller: usernameController,
                    hintText: 'Username',
                    obscureText: false,
                  ),

                  const SizedBox(height: 20),

                  //password textfield
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 30),

                  //forgot password

                  //sign in button
                  MyButton(
                    onTap: signUserIn,
                  ),

                  const SizedBox(height: 30),

                  //not a member, register now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "First time in Capsule?",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )

                ],),
            )
        )
    );
  }
}