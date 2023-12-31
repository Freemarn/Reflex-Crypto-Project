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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA4TpV-AVVX2LwDc2dWrjcxJEPKe4Q3UH8',
    appId: '1:406526062445:web:a8eb534eb879386cb83464',
    messagingSenderId: '406526062445',
    projectId: 'crypto-flex-47dcc',
    authDomain: 'crypto-flex-47dcc.firebaseapp.com',
    storageBucket: 'crypto-flex-47dcc.appspot.com',
    measurementId: 'G-0M365F82P2',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAPKTumhWitiHGRpg7MM-ublEQI73wjNV8',
    appId: '1:406526062445:ios:c7fd8944c2930ed1b83464',
    messagingSenderId: '406526062445',
    projectId: 'crypto-flex-47dcc',
    storageBucket: 'crypto-flex-47dcc.appspot.com',
    iosBundleId: 'com.example.cryptoBomb',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAPKTumhWitiHGRpg7MM-ublEQI73wjNV8',
    appId: '1:406526062445:ios:0c2f2bc571e096b9b83464',
    messagingSenderId: '406526062445',
    projectId: 'crypto-flex-47dcc',
    storageBucket: 'crypto-flex-47dcc.appspot.com',
    iosBundleId: 'com.example.cryptoBomb.RunnerTests',
  );
}
