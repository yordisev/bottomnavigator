import 'package:bottomnavigator/screens/vista1.dart';
import 'package:bottomnavigator/screens/vista2.dart';
import 'package:bottomnavigator/screens/vista3.dart';
import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController _pageController = PageController();
  int selectedPage = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [buildPageView(), buildBottomNav()]),
    );
  }

  Widget buildPageView() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.92,
      child: PageView(
        controller: _pageController,
        children: [Vista1Screen(), Vista2Screen(), Vista3Screen()],
        onPageChanged: (index) {
          onPageChange(index);
        },
      ),
    );
  }

  Widget buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: selectedPage,
      backgroundColor: Colors.green,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.two_wheeler,
            size: 30,
          ),
          activeIcon: const Icon(
            Icons.two_wheeler,
            size: 35,
          ),
          label: 'Motors',
          // backgroundColor: colors.primary,
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.person_3_outlined,
            size: 30,
          ),
          activeIcon: const Icon(Icons.person_3_outlined, size: 35),
          label: 'Users',
          // backgroundColor: colors.tertiary,
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.settings,
            size: 30,
          ),
          activeIcon: const Icon(Icons.settings, size: 35),
          label: 'Ajuste',
          // backgroundColor: colors.tertiary,
        ),
      ],
      onTap: (int index) {
        _pageController.animateToPage(index,
            duration: Duration(microseconds: 1000), curve: Curves.easeIn);
      },
    );
  }

  onPageChange(int index) {
    setState(() {
      selectedPage = index;
    });
  }
}
