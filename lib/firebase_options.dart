// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCdlFRjFT-UbmIrQRPQKYGN8QuxoRfnrx8',
    appId: '1:563652595525:web:46d28f0435032201d6f82c',
    messagingSenderId: '563652595525',
    projectId: 'fruithub-5db4d',
    authDomain: 'fruithub-5db4d.firebaseapp.com',
    storageBucket: 'fruithub-5db4d.firebasestorage.app',
    measurementId: 'G-210TJ1GLYF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDY_fqzwfAK2qfM3VNgvBbiqggVrwWfDjU',
    appId: '1:563652595525:android:5cab46e5c1860e6ad6f82c',
    messagingSenderId: '563652595525',
    projectId: 'fruithub-5db4d',
    storageBucket: 'fruithub-5db4d.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBfsK33U701FeQg7mYdol6btYCnVCvlrV8',
    appId: '1:563652595525:ios:1cc6d530f1612d29d6f82c',
    messagingSenderId: '563652595525',
    projectId: 'fruithub-5db4d',
    storageBucket: 'fruithub-5db4d.firebasestorage.app',
    androidClientId: '563652595525-iacde0ic50u1n4ktaes22utbdlpuujv3.apps.googleusercontent.com',
    iosClientId: '563652595525-q472jq6q9s9ihhdi5f1sge4hnl1n85cm.apps.googleusercontent.com',
    iosBundleId: 'com.example.fruitHubDashBoard',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBfsK33U701FeQg7mYdol6btYCnVCvlrV8',
    appId: '1:563652595525:ios:1cc6d530f1612d29d6f82c',
    messagingSenderId: '563652595525',
    projectId: 'fruithub-5db4d',
    storageBucket: 'fruithub-5db4d.firebasestorage.app',
    androidClientId: '563652595525-iacde0ic50u1n4ktaes22utbdlpuujv3.apps.googleusercontent.com',
    iosClientId: '563652595525-q472jq6q9s9ihhdi5f1sge4hnl1n85cm.apps.googleusercontent.com',
    iosBundleId: 'com.example.fruitHubDashBoard',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCdlFRjFT-UbmIrQRPQKYGN8QuxoRfnrx8',
    appId: '1:563652595525:web:144e43919f34bfb2d6f82c',
    messagingSenderId: '563652595525',
    projectId: 'fruithub-5db4d',
    authDomain: 'fruithub-5db4d.firebaseapp.com',
    storageBucket: 'fruithub-5db4d.firebasestorage.app',
    measurementId: 'G-H86JG7PX29',
  );

}