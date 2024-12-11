import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class InputDate extends StatelessWidget {
  const InputDate(
      {super.key, required this.selectedDate, required this.presentDatePicker});

  final DateTime? selectedDate;
  final void Function() presentDatePicker;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          selectedDate == null
              ? 'No date selected'
              : formatter.format(selectedDate!),
        ),
        IconButton(
          onPressed: presentDatePicker,
          icon: const Icon(Icons.calendar_month),
        ),
      ],
    );
  }
}
