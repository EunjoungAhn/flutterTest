import 'package:flutter/material.dart';

class JackHomePage extends StatelessWidget {
  const JackHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Row(//overflow가 발생하면 정해진 사이즈 안에서 그리고 싶을때
        //direction: Axis.vertical,//Wrap 속성중 overflow 방향 설정이 가능하다.
        children: [
          Container(//크기가 지정되어 있지 않으면 자식 크기만큼 감싼다.
            margin: EdgeInsets.zero, //defult로 설정되어 있는 마진을 없애준다.
            color: Colors.yellow,
            alignment: Alignment.center,
            width: 100,
            height: 100,
            child: const Text('1')),

            const Spacer(),// 전체 너비의 빈 공간을 자동으로 잡아준다. 대신 child를 둘수 없다.

            const Expanded(child: Text('어떤 텍스트값')),// 빈 공간안에 글씨를 쓰고 싶을때 쓰는 위젯이다.

            Container(//크기가 지정되어 있지 않으면 자식 크기만큼 감싼다.
            margin: const EdgeInsets.all(20), //전체적으로 동일하게 마진을 넣을때
            color: Colors.green,
            alignment: Alignment.center,
            width: 100,
            height: 100,
            child: const Text('2')),

            Container(//크기가 지정되어 있지 않으면 자식 크기만큼 감싼다.
            //margin: EdgeInsets.fromLTRB(left, top, right, bottom), 각각 따로따로 마진을 줄수 있다.
            margin: const EdgeInsets.only(bottom: 100), //한 곳에만 마진을 넣고 싶을때 
            color: Colors.red,
            alignment: Alignment.center,
            width: 100,
            height: 100,
            child: const Text('3')),
        ],
      ),
    );
  }
}