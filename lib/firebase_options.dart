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
    apiKey: 'AIzaSyDWNtGHtFlVbcC5054N_GwDWMRoxERmFp0',
    appId: '1:866406182160:web:934cb05aa103ef48c48995',
    messagingSenderId: '866406182160',
    projectId: 'book4cut-63ce5',
    authDomain: 'book4cut-63ce5.firebaseapp.com',
    storageBucket: 'book4cut-63ce5.appspot.com',
    measurementId: 'G-X509XJG4P9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBBYdP1DdmAEYeXd9nn8nnq00QqyHw0Vd8',
    appId: '1:866406182160:android:33c30143e96ce12bc48995',
    messagingSenderId: '866406182160',
    projectId: 'book4cut-63ce5',
    storageBucket: 'book4cut-63ce5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkYa8tcNmkK-zWogYG4MsBHTriFNPvbgU',
    appId: '1:866406182160:ios:e1f15b2960965a9ac48995',
    messagingSenderId: '866406182160',
    projectId: 'book4cut-63ce5',
    storageBucket: 'book4cut-63ce5.appspot.com',
    iosClientId: '866406182160-aa69hs6h0bs6j1n144foh7ols1qvafjr.apps.googleusercontent.com',
    iosBundleId: 'com.unimy.book4cut',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDkYa8tcNmkK-zWogYG4MsBHTriFNPvbgU',
    appId: '1:866406182160:ios:e1f15b2960965a9ac48995',
    messagingSenderId: '866406182160',
    projectId: 'book4cut-63ce5',
    storageBucket: 'book4cut-63ce5.appspot.com',
    iosClientId: '866406182160-aa69hs6h0bs6j1n144foh7ols1qvafjr.apps.googleusercontent.com',
    iosBundleId: 'com.unimy.book4cut',
  );
}
