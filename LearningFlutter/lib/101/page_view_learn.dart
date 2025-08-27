import 'package:flutter/material.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.9);
  int _currentPageIndex = 0;

  void _updatePageIndex(int index) {

      setState(() {
  _currentPageIndex = index ;
});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(_currentPageIndex.toString()),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: 
            FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.slowMiddle);
              },
              child: const Icon(Icons.chevron_left),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
