import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ex01',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String textA = 'A simple Text';
  String textB = 'Hello World';
  late String str = textA;

void changeText()
{
  setState(() {
    str = (str == textA) ? textB : textA;
  });
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ex00',
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    str,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white60,
                    elevation: 3,
                  ),
                  onPressed: () => changeText(),
                  child: const Text(
                    'Click me',
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }

}
