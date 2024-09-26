import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDiZNsGWDWt-eI9sVyCi8VkdoJIdpIOp7Q",
            authDomain: "gcci-app-359008.firebaseapp.com",
            projectId: "gcci-app-359008",
            storageBucket: "gcci-app-359008.appspot.com",
            messagingSenderId: "155376762541",
            appId: "1:155376762541:web:b58650bb6c82a85177d024",
            measurementId: "G-0J7FLNLTWV"));
  } else {
    await Firebase.initializeApp();
  }
}
