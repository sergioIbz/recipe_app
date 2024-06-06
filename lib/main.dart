import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FilledButton(
            onPressed: () async {
              print('inicion ->');
              final data;
              try {
                data = await firebaseAuth.signInWithEmailAndPassword(
                  email: 'emailwq@gmail.com',
                  password: 'password',
                );
              } catch (e) {
                print(e);
              }
           
            },
            child: const Text('autenticacion'),
          ),
        ),
      ),
    );
  }
}
