import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _textFieldValue1 = '0.0';
  var _textFieldValue2 = '0.0';

  @override
  void initState() {
    super.initState();
  }

  double getSum() {
    if (_textFieldValue1.isEmpty) _textFieldValue1 = '0.0';
    if (_textFieldValue2.isEmpty) _textFieldValue2 = '0.0';
    return double.parse(_textFieldValue1) + double.parse(_textFieldValue2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Tutorials '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _textFieldValue1 = value;
                });
              },
              decoration: InputDecoration(
                  // suffixIcon: const Icon(Icons.search),
                  // prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _textFieldValue2 = value;
                });
              },
              decoration: InputDecoration(
                  // suffixIcon: const Icon(Icons.search),
                  // prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
            ),
          ),
          Text(
            'Result = ${getSum()}',
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
