// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RegistroPage extends StatelessWidget {

  var txtNome = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  void registrar(BuildContext context) {

    // TODO: Implementar registro usando Firebase Auth
    
    Navigator.of(context)..pop()..pushReplacementNamed("/lista");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          // spacing: 10,
          children: [
            TextField(
              controller: txtNome,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nome"
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: txtEmail,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email"
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: txtSenha,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Senha"
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () => registrar(context), child: Text("Registrar")),
            SizedBox(height: 10,),
            TextButton(onPressed: () => Navigator.pop(context), child: Text("Login")),
          ],
        ),
      )
    );
  }
}