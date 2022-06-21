import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Contatinho'),
        actions: [
          TextButton(
              onPressed: () => {},
              child: const Text(
                'SALVAR',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Column(
        children: [
          TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                label: Text("Nome"),
              )),
          TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                label: Text("Numero"),
              )),
        ],
      ),
    );
  }
}
