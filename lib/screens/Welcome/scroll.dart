import 'package:flutter/material.dart';

import 'Firstpage.dart';
import 'Thirdpage.dart';
import 'second.dart';

class TwoScreenScroll extends StatefulWidget {
  const TwoScreenScroll({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TwoScreenScrollState createState() => _TwoScreenScrollState();
}

class _TwoScreenScrollState extends State<TwoScreenScroll> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: const [
              ImageFirst(),
              SecondPage(),
              ThirdScreen(),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDot(0),
                SizedBox(width: 8),
                _buildDot(1),
                SizedBox(width: 8),
                _buildDot(2),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDot(int index) {
    Color dotColor = _currentPage == index ? Colors.white : Color(0xFF00A4E4);
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: dotColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
