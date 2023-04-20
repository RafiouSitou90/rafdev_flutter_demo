import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserSearch extends StatefulWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  State<UserSearch> createState() => _UserSearchState();
}

class _UserSearchState extends State<UserSearch> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('SEARCH', style: TextStyle(fontSize: 48))),
    );
  }
}
