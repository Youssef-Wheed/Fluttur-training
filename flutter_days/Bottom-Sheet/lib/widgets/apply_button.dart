import 'package:flutter/material.dart';

class ApplyButton extends StatelessWidget {
  final VoidCallback onApply;

  const ApplyButton({required this.onApply});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 14),
      ),
      onPressed: onApply,
      child: Text(
        "Apply",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
