import 'package:flutter/material.dart';

class InputAmount extends StatelessWidget {
  const InputAmount({super.key, required this.amountController});

  final TextEditingController amountController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: amountController,
      decoration: const InputDecoration(
        label: Text('Amount'),
        prefixText: '\$ ',
      ),
      keyboardType: TextInputType.number,
    );
  }
}
