import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class H2Heading extends StatelessWidget {
  const H2Heading({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      textAlign: TextAlign.left,
    );
  }
}
