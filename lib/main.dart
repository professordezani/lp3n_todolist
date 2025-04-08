import 'package:flutter/material.dart';
import 'package:todolist/create.dart';
import 'package:todolist/lista.dart';

void main() {
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