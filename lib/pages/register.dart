import 'package:capsuleapp/pages/log_in.dart';
import 'package:flutter/material.dart';
import 'package:capsuleapp/auth/auth.dart';

class Register extends StatefulWidget {


  const Register({Key? key}) : super(key: key);



  @override
  _RegisterState createState()=>_RegisterState();

}
class _RegisterState extends State<Register> {
  final AuthServices _auth = AuthServices();
  final _formKey = GlobalKey<FormState>();

  //text field

  String email='';
  String password = '';
  String error='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0.0,
        title: const Text(
            'Sign up to Capsule',
            style: TextStyle(
                color: Colors.white,
            ),
        ),

      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                style: TextStyle(color: Colors.white),
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "Enter username";
                  }
                  return null;
                },
                onChanged: (val) {
                  setState(() => email = val);
                },
                decoration: InputDecoration(
                    hintText: 'Enter an email',
                    hintStyle: TextStyle(
                      color: Colors.grey[700],
                      fontStyle: FontStyle.italic,
                    )
                ),
              ),

              SizedBox(height: 20.0),

              TextFormField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                validator: (val) {
                if (val != null && val.isEmpty) {
                  return "Enter Password";
                  }
                  return null;
                  },
                onChanged: (val) {
                  setState(() => password = val);
                },
                decoration: InputDecoration(
                    hintText: 'Enter a Password',
                    hintStyle: TextStyle(
                      color: Colors.grey[700],
                      fontStyle: FontStyle.italic,
                    )
                ),
              ),

              SizedBox(height: 40.0),

              ElevatedButton(
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () async {
                    if(_formKey.currentState!.validate()){
                      dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                      if(result == null) {
                        setState(() {
                          error = 'Please supply a valid email';
                        });
                      } else {
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context){
                            return LoginPage();//CameraScreen();
                          }),
                        );
                      }
                    }
                  }
              ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}