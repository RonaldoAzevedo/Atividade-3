import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '@Contatinhos',
      initialRoute: '/Login',
      routes: {
        '/Login': (context) => Login(),
        '/Lista': (context) => Lista(),
        '/Cadastro': (context) => Cadastro(),
      },
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add_shopping_cart_rounded, size: 72, color: Colors.green),
          Text(
            'Lista de Compras',
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
                Navigator.pushReplacementNamed(context, '/Lista');
              },
              child: Text('ENTRAR'))
        ],
      ),
    );
  }
}

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listinha'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/Login');
            },
            icon: Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("Cebola "),
              trailing: Text("20 unidades"),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/Cadastro');
        },
      ),
    );
  }
}

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Item'),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/Lista');
              },
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
                label: Text("Item"),
              )),
          TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                label: Text("Quantidade"),
              )),
        ],
      ),
    );
  }
}
