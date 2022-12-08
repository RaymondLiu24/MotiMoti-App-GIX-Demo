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
    apiKey: 'AIzaSyDiEokzWv4oyk8uufz6m9ZONQpe9HxCfSg',
    appId: '1:134553262841:web:3ef5c9cbb5c20f0273e028',
    messagingSenderId: '134553262841',
    projectId: 'motimoti-app',
    authDomain: 'motimoti-app.firebaseapp.com',
    storageBucket: 'motimoti-app.appspot.com',
    measurementId: 'G-3BQ1YG0CT0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDEm7tIu_I0sOpQe8N8OfTj-jNchQ6d_pM',
    appId: '1:134553262841:android:1f5d24f95e853a7773e028',
    messagingSenderId: '134553262841',
    projectId: 'motimoti-app',
    storageBucket: 'motimoti-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCF8ZOlWm88e48xE-JRzyB2claPBakpOWM',
    appId: '1:134553262841:ios:9f5ee29b35ef255973e028',
    messagingSenderId: '134553262841',
    projectId: 'motimoti-app',
    storageBucket: 'motimoti-app.appspot.com',
    iosClientId: '134553262841-skbak8fni0al7gm454cqtgf1kq0vg9rk.apps.googleusercontent.com',
    iosBundleId: 'com.example.motimotiApp',
  );
}