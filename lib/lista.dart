// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tasks")),
      body: ListView(
        children: [
          CheckboxListTile(
            value: true,
            onChanged: null,
            title: Text("Estudar para prova",),
            subtitle: Text("Alta Prioridade"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, "/create"),
      ),
    );
  }
}