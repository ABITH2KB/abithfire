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
    apiKey: 'AIzaSyBEiDnPe-mowpN0Ar0JfdiQLWjGnmjUDKs',
    appId: '1:16925680145:web:2224bf243b73211025c7b0',
    messagingSenderId: '16925680145',
    projectId: 'abijithfirebase',
    authDomain: 'abijithfirebase.firebaseapp.com',
    storageBucket: 'abijithfirebase.appspot.com',
    measurementId: 'G-GK6GR667J2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAptw7wSHtIEkuFun_N1zPsA3lReWmFoTI',
    appId: '1:16925680145:android:95d0ad4282ed50ed25c7b0',
    messagingSenderId: '16925680145',
    projectId: 'abijithfirebase',
    storageBucket: 'abijithfirebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBDJAKettb8NDOFHGJT5o4tudNIq6J61cw',
    appId: '1:16925680145:ios:c8651469dbc1a6b325c7b0',
    messagingSenderId: '16925680145',
    projectId: 'abijithfirebase',
    storageBucket: 'abijithfirebase.appspot.com',
    iosBundleId: 'com.example.abijithfirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBDJAKettb8NDOFHGJT5o4tudNIq6J61cw',
    appId: '1:16925680145:ios:67bea4177890845625c7b0',
    messagingSenderId: '16925680145',
    projectId: 'abijithfirebase',
    storageBucket: 'abijithfirebase.appspot.com',
    iosBundleId: 'com.example.abijithfirebase.RunnerTests',
  );
}
