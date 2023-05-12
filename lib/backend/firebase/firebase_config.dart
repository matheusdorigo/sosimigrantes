import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDujeZAYfYm6yONPl8y1r_p4mSB1_nbPWc",
            authDomain: "aula-efeab.firebaseapp.com",
            projectId: "aula-efeab",
            storageBucket: "aula-efeab.appspot.com",
            messagingSenderId: "552838708337",
            appId: "1:552838708337:web:f27d5c0125031ceb8e6fd0"));
  } else {
    await Firebase.initializeApp();
  }
}
