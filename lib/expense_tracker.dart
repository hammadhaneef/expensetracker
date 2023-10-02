import "package:expense_tracker/common/h1_heading.dart";
import "package:expense_tracker/common/h2_heading.dart";
import "package:expense_tracker/common/h3_heading.dart";
import "package:expense_tracker/data/expense_data.dart";
import "package:expense_tracker/model/expense.dart";
import "package:flutter/material.dart";

class ExpenseTracker extends StatefulWidget {
  const ExpenseTracker({super.key});
  @override
  State<ExpenseTracker> createState() {
    return _ExpenseTrackerState();
  }
}

class _ExpenseTrackerState extends State<ExpenseTracker> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        H1Heading(text: "Expense Tracker", textAlignment: TextAlign.center),
        Expanded(
            child: ListView.builder(
                itemCount: expensedata.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Color.fromARGB(255, 18, 71, 107),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 60,
                              child: Icon(
                                categoryIcons[Category.food],
                                color: const Color.fromARGB(255, 245, 252, 205),
                                size: 35,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    H1Heading(
                                      text: expensedata[index].title,
                                      textAlignment: TextAlign.left,
                                    ),
                                    Row(
                                      children: [
                                        H2Heading(text: "\$${expensedata[index].amount.toStringAsFixed(2)}"),
                                        const Spacer(),
                                        H3Heading(text: expensedata[index].formattedDate),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                })),
      ],
    );
  }
}



// Expanded(
//           child: ListView.builder(
//               itemCount: expensedata.length,
//               itemBuilder: (ctx, index) {
//                 return Card(
//                   color: Colors.grey,
//                   child: Row(
//                     children: [
//                       Icon(categoryIcons[expensedata[index].category]),
//                       Column(
//                         children: [
//                           H1Heading(
//                             text: expensedata[index].title.toString(),
//                             textAlignment: TextAlign.left,
//                           ),
//                           Row(
//                             children: [
//                               H2Heading(text: "\$${expensedata[index].amount.toStringAsFixed(2)}"),
//                               const Spacer(),
//                               H2Heading(text: expensedata[index].formattedDate),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 );
//               }),
//         )
