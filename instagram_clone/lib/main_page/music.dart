import 'package:flutter/material.dart';
import 'package:instagram_clone/main_page/home_page.dart';
import 'package:instagram_clone/main_page/music_list.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyMusic extends StatelessWidget {
  const MyMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF303151).withOpacity(0.6),
              Color(0xFF303151).withOpacity(0.9),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.sort_rounded,
                            color: Color(0xFF899CCF),
                            size: 30,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.more_vert,
                            color: Color(0xFF899CCF),
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 5,
                    ),
                    child: Text(
                      "Hello Sir",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 5,
                    ),
                    child: Text(
                      "What you want to hear sir??",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15,
                      right: 20,
                      bottom: 20,
                    ),
                    child: Container(
                      height: 50,
                      width: 380,
                      decoration: BoxDecoration(
                        color: Color(0xFF31314F),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            height: 50,
                            width: 200,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Search the music",
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(
                                    (0.5),
                                  ),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TabBar(
                    isScrollable: true,
                    labelStyle: TextStyle(fontSize: 18),
                    indicator: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      width: 3,
                      color: Color(0xFF899CCF),
                    ))),
                    tabs: [
                      Tab(
                        text: "Music",
                      ),
                      Tab(
                        text: "Playlists",
                      ),
                      Tab(
                        text: "Favourites",
                      ),
                      Tab(
                        text: "Collection",
                      ),
                    ],
                  ),
                  Flexible(
                    child: TabBarView(
                      children: [
                        musicList(),
                        musicList(),
                        musicList(),
                        musicList(),
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            color: Colors.black,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
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
                      builder: (context) => HomeScreen(),
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
        ),
      ),
    );
  }
}
