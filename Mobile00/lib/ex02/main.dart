import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ex02',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  Widget tile(String? name, Color font)
  {
    bool isIgnored = name == null ? true : false;

    return Expanded(
      child: IgnorePointer(
        ignoring: isIgnored,
        child: ElevatedButton(
            onPressed: () => debugPrint('Button pressed: $name'),
            style: ElevatedButton.styleFrom(
              foregroundColor: font,
              backgroundColor: Colors.blue.shade300,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  ),

              ),
            child: Text(name ?? '')
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        shadowColor: Colors.black,
        elevation: 10,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
              child: ColoredBox(
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    TextField(
                      textAlign: TextAlign.right,
                      readOnly: true,
                      controller: TextEditingController(text: '0'),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    ),
                    TextField(
                      textAlign: TextAlign.right,
                      readOnly: true,
                      controller: TextEditingController(text: '0'),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    )
                  ],
                ),
              )
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [tile('7', Colors.black), tile('8', Colors.black), tile('9', Colors.black), tile('C', Colors.red), tile('AC', Colors.red)])),
                Expanded(child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [tile('4', Colors.black), tile('5', Colors.black), tile('6', Colors.black), tile('+', Colors.white), tile('-', Colors.white)])),
                Expanded(child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [tile('1', Colors.black), tile('2', Colors.black), tile('3', Colors.black), tile('*', Colors.white), tile('/', Colors.white)])),
                Expanded(child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [tile('0', Colors.black), tile('.', Colors.black), tile('00', Colors.black), tile('=', Colors.white), tile(null, Colors.white)])),
              ],
            ),
          )
        ],
      ),
    );
  }
  
}