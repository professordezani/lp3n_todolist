// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {

  var txtTask = TextEditingController();

  void create(BuildContext context) {

    FirebaseFirestore.instance
      .collection('tasks')
      .add({
        "title": txtTask.text,
        "completed": false,
        "uid": FirebaseAuth.instance.currentUser!.uid,
      });

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("New Task")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          // spacing: 10,
          children: [
            TextField(
              controller: txtTask,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Task"
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () => create(context), child: Text("Salvar")),
          ],
        ),
      )
    );
  }
}