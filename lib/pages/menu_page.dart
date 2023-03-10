import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);
  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      floatingActionButton: FloatingActionButton.extended(
          heroTag: 1,
          icon: const Icon(Icons.calculate_outlined),
          onPressed: () {
            Navigator.pushNamed(context, 'operaciones');
          },
          label: const Text("Calculadora")),
    );
  }
}
