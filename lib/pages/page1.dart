import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page1'),
      ),
      body: Column(
        children: [
          Text('hello',
          style: Theme.of(context).textTheme.headline3,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => const page2(),
              ),
            );
          },
          child: const Text('page2로 이동')
          )
        ],
      ),
    );
  }
}