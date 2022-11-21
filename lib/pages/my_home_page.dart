// 위젯이라 불린다.
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  //위젯을 그릴때는 build로 그려진다.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AppBar')),
      body: const Text('Flutter')
    );
  }
}