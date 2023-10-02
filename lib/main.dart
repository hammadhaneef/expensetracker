import 'package:expense_tracker/expense_tracker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 18, 71, 107),
          title: const Text(
            "Expense Tracker",
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_box,
              ),
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 18, 71, 107),
              Color.fromARGB(255, 65, 145, 151),
              Color.fromARGB(255, 120, 214, 198),
              Color.fromARGB(255, 245, 252, 205)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          //margin: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          height: double.infinity,
          child: const ExpenseTracker(),
        ),
      ),
    ),
  );
}
