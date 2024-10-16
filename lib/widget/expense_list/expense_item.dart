import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(children: [
          Text(expense.title),
          Row(
            children: [
              Text(expense.amount.toStringAsFixed(2)),
              const Spacer(),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(categoryIcons[expense.category]),
                  Text(expense.formateDate)
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
