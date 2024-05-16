import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _conter = 0;

  void _incrementCounter() {
    setState(() {
      _conter++;
    });
  }

  void _decrementCounter() {
    if (_conter > 0) {
      setState(() {
        _conter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My +- counter"),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text("นับไปแล้ว $_conter ครั้ง",
                style: TextStyle(fontSize: 40, color: Colors.blue[400])),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                onPressed: _decrementCounter,
                child: Text(
                  "Decrement -",
                  style: TextStyle(fontSize: 20, color: Colors.red[400]),
                ),
              ),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: Text(
                  "Increment +",
                  style: TextStyle(fontSize: 20, color: Colors.green[400]),
                ),
              ),
            ]),
          ])),
    );
  }
}
