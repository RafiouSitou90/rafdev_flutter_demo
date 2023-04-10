import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home_title'.i18n()),
        elevation: 0.0,
      ),
    );
  }
}
