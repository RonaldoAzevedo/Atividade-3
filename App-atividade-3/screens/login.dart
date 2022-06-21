import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.contact_phone, size: 72, color: Colors.yellow),
          Text(
            'Contatinhos',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                label: Text("Email"),
              )),
          TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                label: Text("Senha"),
              )),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/lista');
              },
              child: Text('ENTRAR'))
        ],
      ),
    );
  }
}
