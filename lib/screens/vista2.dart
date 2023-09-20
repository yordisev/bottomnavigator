import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Vista2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'menu2',
          style: GoogleFonts.montserratAlternates(
              color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}
