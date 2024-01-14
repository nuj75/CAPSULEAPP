import "package:firebase_auth/firebase_auth.dart";

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in anony
Future singInAnon() async {
  try {
    UserCredential result = await _auth.signInAnonymously();
    User? user = result.user;
    return user;
  } catch(e) {
    return null;
  }
}
  //sign in account

  //register email


  //sign out


}