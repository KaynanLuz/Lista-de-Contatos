import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Contato'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              // Campo de Nome
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nome do Contato'),
              ),
              SizedBox(height: 16.0),
              // Campo de Telefone
              TextField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: 'Telefone'),
              ),
              SizedBox(height: 16.0),
              // Cartão para a foto
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Container(
                  height: 100,
                  width: 100,
                  child: Icon(
                    Icons.camera_alt,
                    size: 40,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              // Botão para salvar
              ElevatedButton(
                onPressed: () {
                  String name = _nameController.text;
                  String phone = _phoneController.text;
                  print('Nome: $name');
                  print('Telefone: $phone');
                },
                child: Text('Salvar Contato'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
