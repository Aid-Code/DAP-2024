import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static const name = 'HomeScreen';
  String userName;
  List<String> items = ['Mi Usuario', 'Novedades', 'Configuración'];

  HomeScreen({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                title: Text(items[index]),
                subtitle: const Text('Hola'),
              ));
            }));
  }
}
