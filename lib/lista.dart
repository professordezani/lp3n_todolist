// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tasks")),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance.collection("tasks").snapshots(),
        builder: (context, snapshot) {

          if(!snapshot.hasData)
            return Text("Carregando...");

          return ListView(
            children: snapshot.data!.docs
              .map((doc) => 
                Dismissible(
                  background: Container(color: Colors.red),
                  key: Key(doc.id),
                  onDismissed: (_) => doc.reference.delete(),
                  child: CheckboxListTile(
                    value: doc['completed'],
                    onChanged: (value) => doc.reference.update({"completed": value, "updateDate": DateTime.now()}),
                    title: Text(doc['title'])
                  ),
                )
              ).toList(),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, "/create"),
      ),
    );
  }
}