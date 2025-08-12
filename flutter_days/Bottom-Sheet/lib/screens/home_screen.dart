import 'package:flutter/material.dart';
import '../models/time_period_model.dart';
import '../widgets/percentage_selector.dart';
import '../widgets/time_period_selector.dart';
import '../widgets/reset_button.dart';
import '../widgets/apply_button.dart';
import '../services/preferences_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int percentage = 5; // defult
  bool isIncrement = true;
  List<TimePeriod> timePeriods = [
    TimePeriod("Wk"),
    TimePeriod("30D"),
    TimePeriod("90D"),
    TimePeriod("Year"),
  ];

  // print in concole
  void _printValues() {
    print("Percentage: $percentage%");
    print("Direction: ${isIncrement ? "Up" : "Down"}");
    final selected =
        timePeriods.where((tp) => tp.isSelected).map((e) => e.label).join(", ");
    print("Selected Time Period: ${selected.isEmpty ? "None" : selected}");
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        //create state defult
        int localPercentage = percentage;
        bool localIsIncrement = isIncrement;

        List<TimePeriod> localTimePeriods = timePeriods
            .map((tp) => TimePeriod(tp.label, isSelected: tp.isSelected))
            .toList();

        return StatefulBuilder(builder: (context, setModalState) {
          void localIncrement() {
            setModalState(() {
              localIsIncrement = true;
              localPercentage += 5;
            });
          }

          void localDecrement() {
            setModalState(() {
              localIsIncrement = false;
              if (localPercentage > 5) localPercentage -= 5;
            });
          }

          //clear period
          void localSelectTimePeriod(int index) {
            setModalState(() {
              for (var tp in localTimePeriods) tp.isSelected = false;
              localTimePeriods[index].isSelected = true;
            });
          }

          void localReset() {
            setModalState(() {
              localPercentage = 5;
              localIsIncrement = true;
              for (var tp in localTimePeriods) tp.isSelected = false;
            });
          }

          Future<void> localApply() async {
            setState(() {
              percentage = localPercentage;
              isIncrement = localIsIncrement;
              timePeriods = localTimePeriods
                  .map((tp) => TimePeriod(tp.label, isSelected: tp.isSelected))
                  .toList();
            });

            await PreferencesService.saveData(
                percentage, isIncrement, timePeriods);
            _printValues();

            Navigator.of(context).pop();
          }

          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom + 20,
              left: 20,
              right: 20,
              top: 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Stock Performance label
                Text(
                  "Stock Performance",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),

                // from widget
                PercentageSelector(
                  percentage: localPercentage,
                  isIncrement: localIsIncrement,
                  onIncrement: localIncrement,
                  onDecrement: localDecrement,
                ),

                SizedBox(height: 18),

                // Time Period label
                Text(
                  "Time Period",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),

                TimePeriodSelector(
                  timePeriods: localTimePeriods,
                  onSelected: localSelectTimePeriod,
                ),

                SizedBox(height: 18),

                // Reset + Apply
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ResetButton(onReset: localReset),
                    ApplyButton(onApply: localApply),
                  ],
                ),
                SizedBox(height: 8),
              ],
            ),
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stock Performance")),
      body: Center(
        child: ElevatedButton(
          onPressed: _showBottomSheet,
          child: Text("Show Options"),
        ),
      ),
    );
  }
}
