import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  PageController pageController = PageController(); // pageview 변환시 index로 받음
  int bannerIndex = 0; // controller에서 변환시 index를 업데이트 하기 위해서 변수선언

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 140,
            color: Colors.indigo,
            margin: EdgeInsets.only(bottom: 8),
            child: PageView(
              controller: pageController,
              children: [
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(8),
                  child: Image.asset('assets/fastcampus_logo.png'),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(8),
                  child: Image.asset('assets/fantasy.jpg'),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(8),
                  child: Image.asset('assets/dandelion.jpg'),
                ),
              ],
              onPageChanged: (idx) {
                setState(() {
                  bannerIndex = idx;
                });
              },
            ),
          ),
          DotsIndicator(
            //  dots_indicator 패키지(위젯), 자동안되면 import해야됨
            dotsCount: 3,
            position: bannerIndex, // 이미지가 변화될때 dots도 같이 변화. 그래서 bannerIndex를 만듬
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16),
            margin: EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '카테고리',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('더보기'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                // TODO: 카테고리 목록을 받아오는 위젯 구현
                Container(
                  height: 200,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 24),
            padding: EdgeInsets.only(left: 16, top: 8, bottom: 16),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '오늘의 특가',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('더보기'),
                    ),
                  ],
                ),
                Container(
                  height: 240,
                  color: Colors.orange,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
