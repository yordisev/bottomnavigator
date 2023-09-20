import 'package:bottomnavigator/screens/vista1.dart';
import 'package:bottomnavigator/screens/vista2.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [Vista1Screen(), Vista2Screen()];

    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.blue,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            // type: BottomNavigationBarType.shifting,
            currentIndex: selectedIndex,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.two_wheeler),
                activeIcon: const Icon(
                  Icons.two_wheeler,
                  size: 25,
                ),
                label: 'Motors',
                // backgroundColor: colors.primary,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.person_3_outlined),
                activeIcon: const Icon(Icons.person_3_outlined, size: 25),
                label: 'Users',
                // backgroundColor: colors.tertiary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
