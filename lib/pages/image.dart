import 'package:flutter/material.dart';

class ImageHomePage extends StatelessWidget {
  const ImageHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network('https://www.kayak.co.kr/news/wp-content/uploads/sites/49/2017/11/171107_BLOG_KR_DEST_DRESDEN_iStock-187781926_800PX.jpg'),
            Image.asset(
              'assets/images/image.jpg',
            ),
            Image.asset(
              'assets/images/image.jpg',
            ),
            Image.asset(
              'assets/images/image.jpg',
            ),
          ],
        ),
      ),
      );
  }
}