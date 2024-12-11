import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class InputCategory extends StatefulWidget {
  const InputCategory({super.key, required this.initialCategory});

  final Category initialCategory;

  @override
  State<InputCategory> createState() => _InputCategoryState();
}

class _InputCategoryState extends State<InputCategory> {
  late Category selectedCategory;

  @override
  void initState() {
    super.initState();
    selectedCategory = widget.initialCategory;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Category>(
      value: selectedCategory,
      items: Category.values
          .map(
            (category) => DropdownMenuItem(
              value: category,
              child: Text(category.name.toUpperCase()),
            ),
          )
          .toList(),
      onChanged: (value) {
        if (value == null) {
          return;
        }
        setState(() {
          selectedCategory = value;
        });
      },
    );
  }
}
