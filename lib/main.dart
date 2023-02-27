import 'package:calculadora/pages/menu_page.dart';
import 'package:calculadora/pages/operaciones_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'menu',
        routes: <String, WidgetBuilder>{
          'menu': (BuildContext context) => const MenuPage(),
          'operaciones': (BuildContext context) => const OperacionesPage()
        });
  }
}
