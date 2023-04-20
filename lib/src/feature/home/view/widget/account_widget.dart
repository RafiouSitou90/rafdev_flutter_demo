import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('ACCOUNT', style: TextStyle(fontSize: 48))),
    );
  }
}
