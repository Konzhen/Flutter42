import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
                  child: const Text(
                      'A simple Text',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () => print('Button pressed'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white60,
                    elevation: 3,
                  ),
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
