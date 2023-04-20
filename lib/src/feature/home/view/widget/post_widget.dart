import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPost extends StatefulWidget {
  const UserPost({Key? key}) : super(key: key);

  @override
  State<UserPost> createState() => _UserPostState();
}

class _UserPostState extends State<UserPost> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('POST', style: TextStyle(fontSize: 48))),
    );
  }
}
