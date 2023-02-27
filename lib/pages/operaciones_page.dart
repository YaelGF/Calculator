import 'package:flutter/material.dart';

class OperacionesPage extends StatefulWidget {
  const OperacionesPage({Key? key}) : super(key: key);

  @override
  State<OperacionesPage> createState() => _OperacionesPageState();
}

class _OperacionesPageState extends State<OperacionesPage> {
  final numeroController1 = TextEditingController();
  final numeroController2 = TextEditingController();
  var _result = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Operaciones"),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        children: <Widget>[
          const Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Text("Valor 1")),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: TextField(
              controller: numeroController1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'numero'),
              onChanged: (valor1) {},
            ),
          ),
          const Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Text("Valor 2")),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: TextField(
              controller: numeroController2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'numero'),
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Text("$_result")),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                  _result = double.parse(numeroController1.text) +
                      double.parse(numeroController2.text);
                });
              },
              label: const Text("Suma"),
              icon: const Icon(Icons.add_circle_outline)),
          const SizedBox(
            height: 15.0,
          ),
          FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                  _result = double.parse(numeroController1.text) -
                      double.parse(numeroController2.text);
                });
              },
              label: const Text("Resta"),
              icon: const Icon(Icons.remove_circle_outline)),
          const SizedBox(
            height: 15.0,
          ),
          FloatingActionButton.extended(
            onPressed: () {
              setState(() {
                _result = double.parse(numeroController1.text) *
                    double.parse(numeroController2.text);
              });
            },
            label: const Text("Multiplicación"),
          ),
          const SizedBox(
            height: 15.0,
          ),
          FloatingActionButton.extended(
            onPressed: () {
              setState(() {
                _result = double.parse(numeroController1.text) /
                    double.parse(numeroController2.text);
              });
            },
            label: const Text("División"),
          ),
        ],
      ),
    );
  }
}
