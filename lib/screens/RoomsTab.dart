import 'package:flutter/material.dart';

class Rooms extends StatefulWidget {
  @override
  _RoomsState createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      child: DefaultTabController(
        length: 7,
        child: Container(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 24),
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 36,
                child: TabBar(
                  isScrollable: true,
                  indicator: IndicatorDecor(),
                  tabs: [
                    Tab(text: "Моя комната"),
                    Tab(text: "Кухня"),
                    Tab(text: "Детская"),
                    Tab(text: "Детская"),
                    Tab(text: "Детская"),
                    Tab(text: "Детская"),
                    Tab(text: "Детская"),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 300,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TabBarView(
                  children: [
                    Container(
                      child: Text("1"),
                      color: Colors.red,
                    ),
                    Container(child: Text("2")),
                    Container(child: Text("3")),
                    Container(child: Text("3")),
                    Container(child: Text("3")),
                    Container(child: Text("3")),
                    Container(child: Text("3")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IndicatorDecor extends Decoration {
  @override
  _MD2Painter createBoxPainter([VoidCallback onChanged]) {
    return new _MD2Painter(this, onChanged);
  }
}

class _MD2Painter extends BoxPainter {
  final IndicatorDecor decoration;
  _MD2Painter(this.decoration, VoidCallback onChanged)
      : assert(decoration != null),
        super(onChanged);
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);
    Rect rect = Offset(offset.dx, configuration.size.height / 2 - 46 / 2) & Size(configuration.size.width, 46);
    final Paint paint = Paint();
    paint.color = Colors.blue ?? Color(0xff1967d2);
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        rect,
        topRight: Radius.circular(12),
        topLeft: Radius.circular(12),
        bottomLeft: Radius.circular(12),
        bottomRight: Radius.circular(12),
      ),
      paint,
    );
  }
}
