import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class ButtonText extends StatelessWidget {
  const ButtonText({super.key, required this.buttonText});

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Text(
      buttonText,
      style: GoogleFonts.openSans(fontSize: 18, color: Colors.white),
    );
  }
}
