import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: GridView.count(
        padding: EdgeInsets.only(top: 16),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        crossAxisCount: 2,
        childAspectRatio: 16 / 11,
        children: List.generate(18, (index) {
          return Container(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Занавески'),
                    Container(height: 4),
                    Text(
                      'Открыто: 100%',
                      style: TextStyle(fontSize: 10, color: Colors.white.withOpacity(0.6)),
                    ),
                    Row(children: []),
                  ],
                ),
              ),
              color: Color(0xFF313033),
            ),
          );
        }),
      ),
    );
  }
}
