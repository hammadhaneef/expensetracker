import "package:flutter/material.dart";
import "package:expense_tracker/Common/h1_heading.dart";

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/expenses_logo.png",
          width: 250,
        ),
        const SizedBox(height: 30),
        //const H1Heading(text: "Track Expenses, Save money"),
        const SizedBox(height: 30),
      ],
    );
  }
}
