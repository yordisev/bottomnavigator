import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Vista1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'menu1',
          style: GoogleFonts.montserratAlternates(
              color: Colors.green, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 25,
                color: Colors.green,
              ))
        ],
        bottom: PreferredSize(
            child: Container(
              color: Colors.green,
              height: 1.0,
              width: size.width * 0.90,
            ),
            preferredSize: Size.fromHeight(4.0)),
      ),
      body: Center(
        child: Text(
          'Vista Numero 1',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
