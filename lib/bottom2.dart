import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class PruebaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hola Mundo'),
      ),
      bottomNavigationBar: Opc2(),
    );
  }
}

// class Opc1 extends StatefulWidget {
//   @override
//   State<Opc1> createState() => _Opc1State();
// }

// class _Opc1State extends State<Opc1> {
//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return CustomNavigationBar(
//       iconSize: 30.0,
//       selectedColor: Colors.white,
//       strokeColor: Colors.white,
//       unSelectedColor: Color(0xff6c788a),
//       backgroundColor: Color(0xff040307),
//       items: [
//         CustomNavigationBarItem(
//           icon: Icon(Icons.home),
//         ),
//         CustomNavigationBarItem(
//           icon: Icon(Icons.shopping_cart),
//         ),
//         CustomNavigationBarItem(
//           icon: Icon(Icons.lightbulb_outline),
//         ),
//         CustomNavigationBarItem(
//           icon: Icon(Icons.search),
//         ),
//         CustomNavigationBarItem(
//           icon: Icon(Icons.account_circle),
//         ),
//       ],
//       currentIndex: selectedIndex,
//       onTap: (value) {
//         setState(() {
//           selectedIndex = value;
//         });
//       },
//     );
//   }
// }

class Opc2 extends StatefulWidget {
  @override
  State<Opc2> createState() => _Opc2State();
}

class _Opc2State extends State<Opc2> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: Colors.white,
      strokeColor: Colors.white,
      unSelectedColor: Colors.grey[600],
      backgroundColor: Colors.black,
      borderRadius: Radius.circular(20.0),
      blurEffect: true,
      opacity: 0.8,
      items: [
        CustomNavigationBarItem(
          icon: Icon(Icons.home),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.lightbulb_outline),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.search),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.account_circle),
        ),
      ],
      currentIndex: selectedIndex,
      onTap: (value) {
        setState(() {
          selectedIndex = value;
        });
      },
      isFloating: true,
    );
  }
}
