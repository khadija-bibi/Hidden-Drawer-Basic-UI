import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hidden_drawer_ui/pages/homePage.dart';
import 'package:hidden_drawer_ui/pages/settingPage.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  final myTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "HomePage",
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.pink,
          ),
          HomePage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "Setting Page",
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.pink,

          ),
          SettingPage()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      backgroundColorMenu: Colors.pinkAccent.shade100,
      initPositionSelected: 0,
      slidePercent: 60,
      contentCornerRadius: 50,
    );
  }
}
