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
    apiKey: 'AIzaSyCSl9TU1BhF298tnCdHNWt_mDYrudl362E',
    appId: '1:215991460860:web:fc2766f553a59cda388879',
    messagingSenderId: '215991460860',
    projectId: 'appdev232-project-21700185',
    authDomain: 'appdev232-project-21700185.firebaseapp.com',
    storageBucket: 'appdev232-project-21700185.appspot.com',
    measurementId: 'G-YK8HRQZVSG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBkIVaS28_LFpdPClrjEgDC-wXPIWTUCeQ',
    appId: '1:215991460860:android:70b5235214baed28388879',
    messagingSenderId: '215991460860',
    projectId: 'appdev232-project-21700185',
    storageBucket: 'appdev232-project-21700185.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA400PhE1CTyqZ380GrqBXBXrJqubI4uSk',
    appId: '1:215991460860:ios:c8fdd70f790ca407388879',
    messagingSenderId: '215991460860',
    projectId: 'appdev232-project-21700185',
    storageBucket: 'appdev232-project-21700185.appspot.com',
    iosBundleId: 'com.example.appdev232Project21700185',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA400PhE1CTyqZ380GrqBXBXrJqubI4uSk',
    appId: '1:215991460860:ios:a85c8439f22750b8388879',
    messagingSenderId: '215991460860',
    projectId: 'appdev232-project-21700185',
    storageBucket: 'appdev232-project-21700185.appspot.com',
    iosBundleId: 'com.example.appdev232Project21700185.RunnerTests',
  );
}