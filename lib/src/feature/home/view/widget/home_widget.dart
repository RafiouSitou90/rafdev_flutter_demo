import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

PreferredSizeWidget _homeAppBar() {
  return AppBar(
    title: Text(
      'home_title'.i18n(),
      style: const TextStyle(color: Colors.black),
    ),
    elevation: 1.0,
    centerTitle: true,
    backgroundColor: Colors.white,
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.back_hand_sharp,
        color: Colors.black,
        size: 30,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.send,
          color: Colors.black,
          size: 30,
        ),
      ),
    ],
  );
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _homeAppBar(),
      body: Container(
        color: Colors.blue,
        child: const Center(
          child: Text(
            'HOME',
            style: TextStyle(fontSize: 48),
          ),
        ),
      ),
    );
  }
}
