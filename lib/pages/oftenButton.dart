import 'package:flutter/material.dart';

class OftenButton extends StatelessWidget {
  const OftenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          //ElevatedButton, OutlinedButton, TextButton 이 3개의 버튼의 속성값은 동일하다.
          Row(
            children: [
              ElevatedButton(
                onPressed: () { print('ElevatedButton'); },
                onLongPress: () { print('길게 눌렀습니다.'); }, 
                style: ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.blue),
                child: const Text('ElevatedButton')
                //style: TextStyle(color: Color.green)), // child의 속성이 우선으로 그려지기 때문에
                // child Text 컬러 변경은 권장하지 않으며, 바꾸려면 styleFrom에서 해결하는 것을 추천한다.
              ),
              ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.blue, 
                 // disabled 버튼의 색 지정시 사용
                  disabledForegroundColor: Colors.cyan.withOpacity(0.38), disabledBackgroundColor: Colors.cyan.withOpacity(0.12)
                ),
                child: const Text('ElevatedButton disabled')
              ),
            ],
          ),
          OutlinedButton(
            onPressed: () { print('OutlinedButton'); },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.blue,
              side: const BorderSide(color: Colors.black)
            ),
            child: const Text('OutlinedButton'),
          ),
          TextButton(
            onPressed: () { },
            style: TextButton.styleFrom(foregroundColor: Colors.blue),
            child: const Text('TextButton'),
          ),
          GestureDetector(
            onTap: () { },
            child: const Text('GestureDetector'),
          ),
        ]
      ),
    );
  }
}