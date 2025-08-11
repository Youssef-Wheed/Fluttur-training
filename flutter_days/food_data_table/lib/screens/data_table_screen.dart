import 'package:flutter/material.dart';
import '../models/food_item.dart';
import '../widgets/food_data_table.dart';

class DataTableScreen extends StatefulWidget {
  @override
  _DataTableScreenState createState() => _DataTableScreenState();
}

class _DataTableScreenState extends State<DataTableScreen> {
  List<FoodItem> foodItems = [
    FoodItem(name: 'Frozen yogurt', calories: 159),
    FoodItem(name: 'Ice cream sandwich', calories: 237),
    FoodItem(name: 'Eclair', calories: 262),
    FoodItem(name: 'Cupcake', calories: 305),
    FoodItem(name: 'Gingerbread', calories: 356),
    FoodItem(name: 'Jelly bean', calories: 375),
    FoodItem(name: 'Cupcake', calories: 305),
    FoodItem(name: 'Gingerbread', calories: 356),
    FoodItem(name: 'Jelly bean', calories: 375),
    FoodItem(name: 'Cupcake', calories: 305),
    FoodItem(name: 'Gingerbread', calories: 356),
    FoodItem(name: 'Jelly bean', calories: 375),
    FoodItem(name: 'Lollipop', calories: 392),
    FoodItem(name: 'Honeycomb', calories: 408),
    FoodItem(name: 'Donut', calories: 452),
  ];

  int get totalCalories {
    return foodItems
        .where((item) => item.isSelected) // Iterable
        .fold(0, (sum, item) => sum + item.calories); // loop
  }

  void _onItemSelected(int index, bool? selected) {
    setState(() {
      foodItems[index].isSelected = selected ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data tables')),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: FoodDataTable(
                // constractor widget
                items: foodItems,
                onSelected: _onItemSelected,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total Calories: $totalCalories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
