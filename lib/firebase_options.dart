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
    apiKey: 'AIzaSyA3ZdW_OJ9yTWPnKKVvTYjUFi6KE6MhnuM',
    appId: '1:535479168082:web:c7a9473529a80463c0038b',
    messagingSenderId: '535479168082',
    projectId: 'gamedb1',
    authDomain: 'gamedb1.firebaseapp.com',
    storageBucket: 'gamedb1.appspot.com',
    measurementId: 'G-8X3JHV01XM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRFPcq50iZMsrZSXq-ouE7epPpMh9R7c0',
    appId: '1:535479168082:android:16a179259091dcc4c0038b',
    messagingSenderId: '535479168082',
    projectId: 'gamedb1',
    storageBucket: 'gamedb1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDiSCNE1wfZOdxsQshoGKLWdJX8FepQ_CI',
    appId: '1:535479168082:ios:71910c8011b5bdbfc0038b',
    messagingSenderId: '535479168082',
    projectId: 'gamedb1',
    storageBucket: 'gamedb1.appspot.com',
    iosClientId: '535479168082-8c4f7soqjlf3m56ani57276ar0po0sd1.apps.googleusercontent.com',
    iosBundleId: 'com.example.prototypeMudgame',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDiSCNE1wfZOdxsQshoGKLWdJX8FepQ_CI',
    appId: '1:535479168082:ios:4c4ef676306ba0e3c0038b',
    messagingSenderId: '535479168082',
    projectId: 'gamedb1',
    storageBucket: 'gamedb1.appspot.com',
    iosClientId: '535479168082-nf589b8bitndsm5pdj1juaod81f8e9ep.apps.googleusercontent.com',
    iosBundleId: 'com.example.prototypeMudgame.RunnerTests',
  );
}
