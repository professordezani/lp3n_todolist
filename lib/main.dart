import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todolist/create.dart';
import 'package:todolist/lista.dart';

const firebaseConfig = FirebaseOptions(
  apiKey: "AIzaSyBPRdV8Io9qrNuijLKhevQp-ipIq0B8yLU",
  authDomain: "todolist-lp3n-2025-01.firebaseapp.com",
  projectId: "todolist-lp3n-2025-01",
  storageBucket: "todolist-lp3n-2025-01.firebasestorage.app",
  messagingSenderId: "309621707465",
  appId: "1:309621707465:web:91a41adcd2ce992a753318"
);


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseConfig);
  runApp(TodoListApp());
}

class TodoListApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      routes: {
        "/lista":(context) => ListaPage(),
        "/create":(context) => CreatePage()
      },
      initialRoute: "/lista",
    );
  }
}