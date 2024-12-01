import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// you can type st and then select stless, to create the below class.

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Home Page'),
              centerTitle: true,
              backgroundColor: Colors.blue,
            ),
            body: const Column(
              children: <Widget>[
                SizedBox(
                  height: 16.0,
                ),
                MyTextWidght(text: 'Text 1'),
                SizedBox(
                  height: 16.0,
                ),
                MyTextWidght(text: 'Text 2'),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MyTextWidght(text: 'Text 3'),
                    MyTextWidght(text: 'Text 4'),
                    MyTextWidght(text: 'Text 5')
                  ],
                )
              ],
            )));
  }
}

class MyTextWidght extends StatelessWidget {
  final String text;
  const MyTextWidght({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text,
          style: const TextStyle(
              fontSize: 50, color: Color.fromARGB(255, 119, 214, 10))),
    );
  }
}
