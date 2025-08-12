import 'package:flutter/material.dart';
import '../models/time_period_model.dart';

class TimePeriodSelector extends StatelessWidget {
  final List<TimePeriod> timePeriods;
  final Function(int) onSelected; // callback

  const TimePeriodSelector({
    required this.timePeriods,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      children: List.generate(timePeriods.length, (index) {
        final tp = timePeriods[index];
        return GestureDetector(
          onTap: () => onSelected(index),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: tp.isSelected ? Colors.white : Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
              border: tp.isSelected
                  ? Border.all(color: Colors.deepPurple, width: 2)
                  : null,
            ),
            child: Text(
              tp.label,
              style: TextStyle(
                color: tp.isSelected ? Colors.deepPurple : Colors.black87,
                fontWeight: tp.isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        );
      }),
    );
  }
}
