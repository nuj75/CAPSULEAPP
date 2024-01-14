// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;



/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
///

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA7EqKNA_7g12hyzeHpvr6MTSpgoE9wKJc',
    appId: '1:925660882816:web:27395831033527a37c0365',
    messagingSenderId: '925660882816',
    projectId: 'capsuleapp-ff8d5',
    authDomain: 'capsuleapp-ff8d5.firebaseapp.com',
    databaseURL: 'https://capsuleapp-ff8d5-default-rtdb.firebaseio.com',
    storageBucket: 'capsuleapp-ff8d5.appspot.com',
    measurementId: 'G-85MDG2J81P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCUs_a_HXCaMGMuwPGdUrE0UFc_EPu-WBw',
    appId: '1:925660882816:android:d15183d224b910da7c0365',
    messagingSenderId: '925660882816',
    projectId: 'capsuleapp-ff8d5',
    databaseURL: 'https://capsuleapp-ff8d5-default-rtdb.firebaseio.com',
    storageBucket: 'capsuleapp-ff8d5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgGH0HjOOYgj9NSU7uBwiAGJsKaizvIgg',
    appId: '1:925660882816:ios:49a2043bbea0cb2a7c0365',
    messagingSenderId: '925660882816',
    projectId: 'capsuleapp-ff8d5',
    databaseURL: 'https://capsuleapp-ff8d5-default-rtdb.firebaseio.com',
    storageBucket: 'capsuleapp-ff8d5.appspot.com',
    iosBundleId: 'com.example.capsuleapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDgGH0HjOOYgj9NSU7uBwiAGJsKaizvIgg',
    appId: '1:925660882816:ios:657356a0a02bc0147c0365',
    messagingSenderId: '925660882816',
    projectId: 'capsuleapp-ff8d5',
    databaseURL: 'https://capsuleapp-ff8d5-default-rtdb.firebaseio.com',
    storageBucket: 'capsuleapp-ff8d5.appspot.com',
    iosBundleId: 'com.example.capsuleapp.RunnerTests',
  );
}