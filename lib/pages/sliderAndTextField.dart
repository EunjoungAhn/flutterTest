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
      home: _ImageHomePage()
    ); 
  }
}

class _ImageHomePage extends StatefulWidget {
  const _ImageHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<_ImageHomePage> createState() => _ImageHomePageState();
}

class _ImageHomePageState extends State<_ImageHomePage> {
  int _index = 2;
  double _slider = 0.3;
  final TextEditingController _text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${_text.text}'),
      ),
      body: Column(
        children: [
          Center(
            // 슬라이더 적용
            child: Slider(
              value: _slider,
              onChanged: (value) => setState(() {
                _slider = value;
              }),
            ),
          ),
          Center(
            child: TextField(
              controller: _text,
              ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) => setState(() {
          _index = value;
        }),
        items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Icon(Icons.start),
          label: 'start',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_alarm),
          label: 'access_alarm',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'search',
        ),
      ]),
    );
  }
}