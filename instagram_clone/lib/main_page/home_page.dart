import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:instagram_clone/main_page/bottom_navigation_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';
import 'package:instagram_clone/main_page/profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  List<Widget> _screens = [
    HomeScreen(),
    ProfileScreen(),
  ];
  final List<String> _listItem = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image4.jpg',
    'assets/images/image5.jpg',
    'assets/images/image6.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black26,
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            prefix: Icon(
              Icons.search,
              color: Colors.black,
            ),
            suffixIcon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.black87,
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.message_rounded,
              color: Colors.black87,
            ),
          )
        ],
      ),
      // body: Container(
      //   child: masonryLayout(context),
      // ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/image3.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.1),
                      ],
                    ),
                  ),
                  // child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: <Widget>[],
                  // ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(9.0),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: _listItem
                      .map(
                        (item) => Card(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(item),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.deepOrangeAccent,
            activeColor: Colors.deepOrange,
            tabBackgroundColor: Colors.grey.shade300,
            gap: 8,
            onTabChange: (index) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );
            },
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: '',
              ),
              GButton(
                icon: Icons.games,
                text: '',
              ),
              GButton(
                icon: Icons.add,
                text: '',
              ),
              GButton(
                icon: Icons.music_note,
                text: '',
              ),
              GButton(
                icon: Icons.person,
                text: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//   Widget masonryLayout(BuildContext context) {
//     return MasonryGridView.builder(
//       gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//       ),
//       itemCount: 6,
//       itemBuilder: (context, index) {
//         return ClipRRect(
//           borderRadius: BorderRadius.circular(10),
//           child: Image.asset("assets/images"),
//         );
//       },
//     );
//   }
// }
