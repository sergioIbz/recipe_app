import 'package:firebase_core/firebase_core.dart';

class FirebaseServices {
  static Future<FirebaseServices> init() async {
    await Firebase.initializeApp(
      
    );
    return FirebaseServices(); 
  }
}
