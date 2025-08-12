import 'package:flutter/material.dart';

class PercentageSelector extends StatelessWidget {
  final int percentage;
  final bool isIncrement;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const PercentageSelector({
    required this.percentage,
    required this.isIncrement,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.remove_circle_outline, size: 28),
          onPressed: onDecrement,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black54),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            children: [
              Icon(
                isIncrement ? Icons.arrow_upward : Icons.arrow_downward,
                color: isIncrement ? Colors.green : Colors.red,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                "$percentage% or Higher",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        IconButton(
          icon: Icon(Icons.add_circle_outline, size: 28),
          onPressed: onIncrement,
        ),
      ],
    );
  }
}
