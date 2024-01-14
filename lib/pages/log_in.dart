import 'package:capsuleapp/auth/auth.dart';
import 'package:capsuleapp/components/my_button.dart';
import 'package:capsuleapp/components/my_textfield.dart';
import 'package:capsuleapp/pages/cam_screen.dart';
import 'home_page.dart';
import 'package:flutter/material.dart';
//import 'package:stateful_app/cam_screen.dart';
import 'package:capsuleapp/pages/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final AuthServices _auth = AuthServices();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';


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

                  Form (
                    child: Form (
                      key: _formKey,
                      child: Column (
                        children: <Widget> [
                          SizedBox(height: 20.0),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.0),
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              onChanged: (val) {
                                setState(() => email = val);
                              },
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                    color: Colors.grey[700],
                                    fontStyle: FontStyle.italic,
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.0),
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              obscureText: true,
                              onChanged: (val) {
                                setState(() => password = val);
                              },
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  color: Colors.grey[700],
                                  fontStyle: FontStyle.italic,
                                )
                              ),
                            ),
                          ),

                          SizedBox(height: 40.0),
                          MyButton (
                            onTap: () async {
                              if(_formKey.currentState!.validate()){

                                dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                                if (result == null) {
                                  setState(() => error = "Could not sign in with those creds");
                                  return null;
                                } else {
                                  setState(() => error = "Could sign in with those creds");
                                  print("hello");
                                  Navigator.push(
                                    context, MaterialPageRoute(builder: (context){
                                    return HomeScreen();//CameraScreen();
                                    }),
                                  );
                                }
                              }
                            }
                          ),

                          SizedBox(height: 12.0),

                          Text (
                            error,
                            style: TextStyle(color: Colors.red, fontSize: 14.0),
                          )

                        ]
                      )
                    )
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
        ElevatedButton(
            onPressed: () { Navigator.push(
                context, MaterialPageRoute(builder: (context){
                return Register();//CameraScreen();
              }),
            );
            }, child: Text("Register")),


      ],
    )

    ],),
    )
    )

    );
  }
}