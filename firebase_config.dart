import 'package:firebase_core/firebase_core.dart'
;
class FirebaseConfig {
  static Future<FirebaseApp> initializeFirebase() async {
    try {
      return await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
    } catch (e) {
      print("Error initializing Firebase: $e"); // Print error for debugging
      rethrow; // Optional: Rethrow the error if you want to handle it higher up
    }
  }
}

class DefaultFirebaseOptions {
  static var currentPlatform;
}
