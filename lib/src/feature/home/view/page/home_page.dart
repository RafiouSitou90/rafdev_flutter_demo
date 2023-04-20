import 'package:flutter/material.dart';
import 'package:rafdev/src/feature/home/view/widget/account_widget.dart';
import 'package:rafdev/src/feature/home/view/widget/home_widget.dart';
import 'package:rafdev/src/feature/home/view/widget/post_widget.dart';
import 'package:rafdev/src/feature/home/view/widget/reels_widget.dart';
import 'package:rafdev/src/feature/home/view/widget/search_widget.dart';

// https://dontpad.com/flutter-instagram

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    UserHome(),
    UserSearch(),
    UserPost(),
    UserReels(),
    UserAccount(),
  ];

  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: _navigateBottomNavBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video_sharp),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
