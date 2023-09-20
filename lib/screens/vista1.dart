import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Vista1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'menu1',
          style: GoogleFonts.montserratAlternates(
              color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 25,
                color: Colors.blue,
              ))
        ],
      ),
      body: Center(
        child: Text('Vista Numero 1'),
      ),
    );
  }
}
