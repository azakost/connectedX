import 'package:flutter/material.dart';

import '../components/ButtonIT.dart';
import '../components/MyScaffold.dart';
import 'PhoneVerify.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      bg: Color(0xFF313033),
      body: Center(
        child: Container(
          width: 240,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/Logo.png", width: 190),
              Container(height: 48),
              Text(
                'Выберите вариант авторизации',
                style: TextStyle(fontSize: 11, color: Colors.white.withOpacity(0.5)),
              ),
              Container(height: 12),
              ButtonIT(label: "Facebook", onTap: () {}, image: "assets/facebook.png"),
              ButtonIT(label: "Apple ID", onTap: () {}, image: "assets/apple.png"),
              ButtonIT(label: "Google Account", onTap: () {}, image: "assets/google.png"),
              ButtonIT(
                image: "assets/iphone.png",
                label: "Телефон",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) => PhoneVerify()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
