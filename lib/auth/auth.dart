import "package:firebase_auth/firebase_auth.dart";
import "package:capsuleapp/auth/CustomUser.dart";

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  CustomUser? _userFromFirebaseUser(User? user) {
    if (user == null) {
      return null;
    }
    return CustomUser(uid: user.uid);
  }

  //sign in anony
Future signInAnon() async {
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
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);

      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e) {
        return null;
    }
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);

      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e) {
      return null;
    }
  }


  //sign out


}