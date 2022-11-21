import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/activeButtonAction.dart';
import 'package:flutter_application_2/pages/oftenButton.dart';
import 'jack_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink, 
      ),
      home: const MyHomePage(name: 'Ahn'),
    ); 
  }
}

class MyHomePage extends StatefulWidget {
  //생성자에서 데이터를 넘겨주기 위해서 required 파라미터에 작성한다.
  const MyHomePage({
      super.key, 
      required this.name
    });

  final String name;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello ${widget.name} World',
            style: Theme.of(context).textTheme.headline4,
            ),
            Text('Hello ${widget.name} World',
            ),
          ],
        ),
      ),
    );
  }
}