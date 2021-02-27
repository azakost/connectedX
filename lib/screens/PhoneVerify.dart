import 'package:flutter/material.dart';

import '../components/ButtonI.dart';
import '../components/Input.dart';
import '../components/MyScaffold.dart';
import '../screens/MainTabs.dart';

class PhoneVerify extends StatefulWidget {
  @override
  _PhoneVerifyState createState() => _PhoneVerifyState();
}

class _PhoneVerifyState extends State<PhoneVerify> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      bg: Color(0xFF313033),
      appbar: AppBar(
        leading: ButtonI(
          Icons.chevron_left,
          onTap: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Container(
          width: 240,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Верификация телефона',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(height: 8),
              Text(
                'Выслан СМС-код на номер',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white.withOpacity(0.6),
                  height: 2,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '+7 (777) 642 03 44',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  height: 1.4,
                ),
              ),
              Container(height: 18),
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [
                  Input(),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      '3:00',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              ),
              Container(height: 150),
              // TEMP
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => MainTabs(),
                    ),
                  );
                },
                child: Text('next'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
