// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  void login(BuildContext context) {

    // TODO: Implementar Login usando Firebase
    
    Navigator.pushReplacementNamed(context, "/lista");
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
            ElevatedButton(onPressed: () => login(context), child: Text("Login")),
            SizedBox(height: 10,),
            TextButton(onPressed: () => Navigator.pushNamed(context, "/registro"), child: Text("Registre-se")),
          ],
        ),
      )
    );
  }
}