import 'package:flutter/material.dart';
class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.settings,size: 150,color: Colors.pinkAccent.shade100),
      ),

    );
  }
}
