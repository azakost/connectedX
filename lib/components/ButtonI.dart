import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ButtonI extends StatelessWidget {
  final IconData icon;
  final Function() onTap;
  ButtonI(this.icon, {@required this.onTap});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.all(16),
      splashColor: Color(0x00000000),
      highlightColor: Color(0x00000000),
      icon: Icon(
        icon,
        color: Colors.white.withOpacity(0.9),
      ),
      onPressed: () {
        HapticFeedback.lightImpact();
        onTap();
      },
    );
  }
}
