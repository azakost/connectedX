import 'package:flutter/material.dart';

class ButtonIT extends StatelessWidget {
  final String label;
  final String image;
  final Function() onTap;
  ButtonIT({this.label = 'label', this.onTap, this.image = "assets/facebook.png"});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: OutlineButton(
        borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
        onPressed: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 12, left: 4, top: 10, bottom: 10),
              child: Opacity(
                opacity: 0.6,
                child: Image.asset(image, height: 22),
              ),
            ),
            Text(
              label,
              style: TextStyle(color: Colors.white.withOpacity(0.8)),
            ),
          ],
        ),
      ),
    );
  }
}
