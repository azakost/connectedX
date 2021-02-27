import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final Gradient gradient;
  final PreferredSizeWidget appbar;
  final Widget fab;
  final Widget nav;
  final Widget sidebar;
  final Widget drawer;
  final Widget body;
  final Color bg;
  MyScaffold({
    this.gradient,
    this.appbar,
    this.drawer,
    this.fab,
    this.sidebar,
    this.body,
    this.nav,
    this.bg,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: bg,
        appBar: appbar,
        drawer: drawer,
        floatingActionButton: fab,
        bottomNavigationBar: nav,
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => FocusScope.of(context).unfocus(),
          child: body,
        ),
        extendBody: true,
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
