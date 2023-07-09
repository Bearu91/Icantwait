import 'package:cantwait28/features/auth/pages/auth_gate.dart';

import 'package:cantwait28/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nie moge sie doczekac!',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const AuthGate(),
    );
  }
}
