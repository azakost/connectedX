import 'package:flutter/material.dart';

import '../components/ButtonI.dart';
import '../components/MyScaffold.dart';
import 'HomeTab.dart';
import 'RoomsTab.dart';

class MainTabs extends StatefulWidget {
  @override
  _MainTabsState createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs> with SingleTickerProviderStateMixin {
  TabController page;
  int num = 0;

  @override
  void initState() {
    page = TabController(length: 2, vsync: this, initialIndex: 0);
    page.addListener(() => setState(() => num = page.index));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget tabButton(int k, IconData icon) {
      return Opacity(
        opacity: k == num ? 1 : 0.5,
        child: ButtonI(icon, onTap: () => setState(() => page.index = k)),
      );
    }

    Widget indicator(IconData icon, String data, Function() onTap) {
      return GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Icon(
              icon,
              color: onTap != null ? Colors.blue.withOpacity(0.8) : Colors.white.withOpacity(0.6),
              size: 15,
            ),
            Text(
              ' ' + data,
              style: TextStyle(
                fontSize: 14,
                fontWeight: onTap != null ? FontWeight.bold : FontWeight.w200,
                color: onTap != null ? Colors.blue.withOpacity(0.8) : Colors.white.withOpacity(0.6),
              ),
            ),
          ],
        ),
      );
    }

    return MyScaffold(
      bg: Colors.black,

      // BODY
      body: SafeArea(
        child: TabBarView(
          controller: page,
          children: [Home(), Rooms()],
        ),
      ),

      // APPBAR
      appbar: AppBar(
        elevation: 20,
        shadowColor: Colors.black,
        backgroundColor: Color(0xFF313033),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: ButtonI(Icons.menu, onTap: null),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ButtonI(Icons.notifications_none_outlined, onTap: null),
          )
        ],
        title: Column(
          children: [
            num == 0
                ? Text(
                    'Демо-дом',
                    style: TextStyle(height: 2),
                  )
                : Text(
                    'Комнаты',
                    style: TextStyle(height: 2),
                  ),
            Text(
              'связь по внешней сети',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white.withOpacity(0.50),
                height: 1.2,
              ),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: num == 0 ? Size.fromHeight(64) : Size.fromHeight(16),
          child: num == 0
              ? Container(
                  padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      indicator(Icons.thermostat_sharp, "20.5\u2103", null),
                      indicator(Icons.opacity, "25.5%", null),
                      indicator(Icons.sensor_door_outlined, "Зак", null),
                      indicator(Icons.videocam_outlined, "CCTV", () {}),
                    ],
                  ),
                )
              : Container(),
        ),
      ),

      // FAB
      fab: FloatingActionButton(
        onPressed: () {},
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset("assets/icon.png"),
          ),
        ),
      ),

      // BOTTOMBAR
      nav: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 16,
            ),
          ],
        ),
        child: BottomAppBar(
          color: Color(0xFF313033),
          elevation: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              tabButton(0, Icons.home),
              Container(height: 0),
              tabButton(1, Icons.grid_on),
            ],
          ),
          shape: CircularNotchedRectangle(),
          notchMargin: 8,
        ),
      ),
    );
  }
}
