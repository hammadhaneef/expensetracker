import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class H1Heading extends StatelessWidget {
  H1Heading({super.key, required this.text, required this.textAlignment});

  final String text;
  TextAlign textAlignment;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
      textAlign: textAlignment,
    );
  }
}
