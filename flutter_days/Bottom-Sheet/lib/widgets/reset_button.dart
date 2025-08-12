import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  final VoidCallback onReset;

  const ResetButton({required this.onReset});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onReset,
      child: Text(
        "Reset",
        style: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
