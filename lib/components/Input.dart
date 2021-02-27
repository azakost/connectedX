import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        fillColor: Colors.white.withOpacity(0.25),
        filled: true,
        hintText: 'СМС-код',
        hintStyle: TextStyle(
          color: Colors.white.withOpacity(0.25),
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        counterText: "",
      ),
    );
  }
}
