import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAHTVO7quic6_EGsFGo_6Bk6tGhG3DSkVI",
            authDomain: "boxgym1-15b36.firebaseapp.com",
            projectId: "boxgym1-15b36",
            storageBucket: "boxgym1-15b36.appspot.com",
            messagingSenderId: "775132262195",
            appId: "1:775132262195:web:4993c1701acbf6a64d1846",
            measurementId: "G-D7TLQW1ZPK"));
  } else {
    await Firebase.initializeApp();
  }
}
