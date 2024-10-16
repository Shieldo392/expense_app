import 'package:expense_tracker/widget/add_expense/add_expense.dart';
import 'package:expense_tracker/widget/expense_list/expense_list.dart';
import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: "Flutter course",
        amount: 10.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: "Cinema",
        amount: 15.69,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  void _addNewExpense() {
    showModalBottomSheet(
        context: context, builder: (ctx) => const AddExpense());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: _addNewExpense, icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          const Text("The chart"),
          Expanded(child: ExpenseList(listExpense: _registeredExpenses))
        ],
      ),
    );
  }
}
