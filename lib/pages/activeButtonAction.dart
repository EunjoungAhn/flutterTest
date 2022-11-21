import 'package:flutter/material.dart';

// StatelessWidget 여서 버튼을 눌러도 바로바로 숫자가 안 올라가는 것이였다.
class ActiveButtonAction extends StatefulWidget {
  ActiveButtonAction({super.key});

  @override
  State<ActiveButtonAction> createState() => _ActiveButtonActionState();
}

class _ActiveButtonActionState extends State<ActiveButtonAction> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      // 떠있는 액션 버튼
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.plus_one, color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () { 
                // StatefulWidget 일때 상태를 바로바로 알려주려면(rebuild) setState을 넣어주어야 한다.
                setState(() {
                  count++;
                });
                print(count); 
              },
            child: const Text('plus')
          ),
          Center(
            //width: MediaQuery.of(context).size, //가운데 정렬
            child: Text('$count')
            ),
        ]
      ),
    );
  }
}