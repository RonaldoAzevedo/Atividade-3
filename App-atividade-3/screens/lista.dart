import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatinhos'),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("Contatinho ${index + 1}"),
              trailing: Text("99999-9999"),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('clicou');
          Navigator.pushNamed(context, '/cadastro');
        },
      ),
    );
  }
}
