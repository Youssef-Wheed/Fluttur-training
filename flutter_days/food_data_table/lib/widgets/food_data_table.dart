import 'package:flutter/material.dart';
import '../models/food_item.dart';

class FoodDataTable extends StatelessWidget {
  final List<FoodItem> items; //class item
  final Function(int index, bool? selected) onSelected; //callback

  FoodDataTable({
    required this.items,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text('Dessert (100g serving)')),
        DataColumn(label: Text('Calories')),
      ],
      rows: List.generate(items.length, (index) {
        final item = items[index];
        return DataRow(
          selected: item.isSelected, // class item
          onSelectChanged: (selected) =>
              onSelected(index, selected), // function callback
          cells: [
            DataCell(Text(item.name)),
            DataCell(Text(item.calories.toString())),
          ],
        );
      }),
    );
  }
}
