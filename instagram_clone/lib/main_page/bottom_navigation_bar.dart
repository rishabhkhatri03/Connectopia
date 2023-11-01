import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            backgroundColor: Colors.black,
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.search_outlined),
          //   label: "Search",
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.games_rounded),
            label: "Games",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.control_point),
            label: "Likes",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.chat_sharp),
          //   label: "Profile",
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
