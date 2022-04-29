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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC5zlwCtswJ6hDSUsb41ERPZxTAsOsEjzU',
    appId: '1:439663503118:web:3ab34f3a7acc8989cb195f',
    messagingSenderId: '439663503118',
    projectId: 'fir-tutorial-6d4b4',
    authDomain: 'fir-tutorial-6d4b4.firebaseapp.com',
    storageBucket: 'fir-tutorial-6d4b4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQCCTVssqGhOkmTQRoJo3kYdPTu5IZ2eA',
    appId: '1:439663503118:android:bf62fc3a463e39c1cb195f',
    messagingSenderId: '439663503118',
    projectId: 'fir-tutorial-6d4b4',
    storageBucket: 'fir-tutorial-6d4b4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCDd1x-LaEXciMbb7zqTnrBBZzALMEDsu0',
    appId: '1:439663503118:ios:cdf0d6e20248d8cfcb195f',
    messagingSenderId: '439663503118',
    projectId: 'fir-tutorial-6d4b4',
    storageBucket: 'fir-tutorial-6d4b4.appspot.com',
    iosClientId: '439663503118-f43dvmqtq1e1hefbu8f7j7tndp43lkdh.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebasetutorial',
  );
}