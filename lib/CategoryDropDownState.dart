import 'package:flutter/material.dart';

class CategoryDropdown extends StatefulWidget {
  final String CategoryName;
  CategoryDropdown({
    required this.CategoryName,

  });
  @override
  _CategoryDropdownState createState() => _CategoryDropdownState();

}

class _CategoryDropdownState extends State<CategoryDropdown> {
  String? _selectedCategory;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: widget.CategoryName, // Use widget.CategoryName here
        border: OutlineInputBorder(),
      ),
      value: _selectedCategory,
      onChanged: (newValue) {
        setState(() {
          _selectedCategory = newValue;
        });
      },
      items: <String>[
        'Category 1',
        'Category 2',
        'Category 3',
        'Category 4',
        'Category 5',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
