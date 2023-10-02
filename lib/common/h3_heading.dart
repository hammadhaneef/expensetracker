import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class H3Heading extends StatelessWidget {
  const H3Heading({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      textAlign: TextAlign.left,
    );
  }
}
