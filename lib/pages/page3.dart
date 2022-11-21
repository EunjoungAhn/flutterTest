import 'package:flutter/material.dart';

class page3 extends StatelessWidget {
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page3'),
      ),
      body: Center(
        child: Text(
          'page3 hello',
          style: Theme.of(context).textTheme.subtitle1,  
        ),
      ),
    );
  }
}