import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/widget/expense_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.listExpense});

  final List<Expense> listExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listExpense.length,
        itemBuilder: (context, index) => ExpenseItem(listExpense[index]));
  }
}
