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
    apiKey: 'AIzaSyBe1y2pKITnAd1Tiy62lZRbeakyy4O5K28',
    appId: '1:92492777589:web:947641083dec9ba9edd03c',
    messagingSenderId: '92492777589',
    projectId: 'product-db-6fa41',
    authDomain: 'product-db-6fa41.firebaseapp.com',
    databaseURL: 'https://product-db-6fa41-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'product-db-6fa41.appspot.com',
    measurementId: 'G-0010CGHS9S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBlKRCAy7_phJM0Bpa3fXxiMEtcnQsAa-k',
    appId: '1:92492777589:android:9ad1e58a955e95efedd03c',
    messagingSenderId: '92492777589',
    projectId: 'product-db-6fa41',
    databaseURL: 'https://product-db-6fa41-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'product-db-6fa41.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCdpCiSyERGfZVWdgETBg-IW-HRqxtu5Vw',
    appId: '1:92492777589:ios:203ea7d117ec2c6aedd03c',
    messagingSenderId: '92492777589',
    projectId: 'product-db-6fa41',
    databaseURL: 'https://product-db-6fa41-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'product-db-6fa41.appspot.com',
    iosBundleId: 'com.example.product',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCdpCiSyERGfZVWdgETBg-IW-HRqxtu5Vw',
    appId: '1:92492777589:ios:203ea7d117ec2c6aedd03c',
    messagingSenderId: '92492777589',
    projectId: 'product-db-6fa41',
    databaseURL: 'https://product-db-6fa41-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'product-db-6fa41.appspot.com',
    iosBundleId: 'com.example.product',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBe1y2pKITnAd1Tiy62lZRbeakyy4O5K28',
    appId: '1:92492777589:web:5ff857f46ae3ecdeedd03c',
    messagingSenderId: '92492777589',
    projectId: 'product-db-6fa41',
    authDomain: 'product-db-6fa41.firebaseapp.com',
    databaseURL: 'https://product-db-6fa41-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'product-db-6fa41.appspot.com',
    measurementId: 'G-HLDVV2QPV3',
  );
}
