import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:rafdev/src/feature/home/view/widget/bubble_storie.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

PreferredSizeWidget _homeAppBar(BuildContext context) {
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

Widget _stories(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 15.0),
    child: SizedBox(
      height: 100,
      child: ListView.separated(
        itemBuilder: (context, index) => BubbleStorie('name $index'),
        separatorBuilder: (context, index) => const SizedBox(
          width: 15.0,
        ),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    ),
  );
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _homeAppBar(context),
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
