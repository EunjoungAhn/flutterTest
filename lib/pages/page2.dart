import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/page3.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page2'),
        //쌓인 페이지 레이어의 상단 뒤로가는 icon을 수정
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            print('close button click');
            // 뒤로 가기 설정
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) =>  const page3(),
            )
          );
          }, 
          child: Text(
            'page3 이동', 
            style: Theme.of(context).textTheme.subtitle2,
          ),   
        ),
      ),
    );
  }
}