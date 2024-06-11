import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/message_screen.dart';
import 'package:tinder_clone/widgets/profile_section.dart';

import 'explore_screen.dart';
import 'settings_screen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            'assets/photos/tinder_fulllogo.png',
            width: 100,
            height: 100,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.notifications),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.filter_list_rounded),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.red,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.explore),
            icon: Icon(Icons.explore_outlined),
            label: "",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.mark_chat_unread_rounded),
            icon: Icon(Icons.mark_chat_unread_rounded),
            label: "",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.settings),
            icon: Icon(Icons.settings_outlined),
            label: "",
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        const Profile(),

        /// Notifications page
        const Explore(),

        /// Messages page
        const Message(),
        //setingspage
        const Settings(),
      ][currentPageIndex],
    );
  }
}
