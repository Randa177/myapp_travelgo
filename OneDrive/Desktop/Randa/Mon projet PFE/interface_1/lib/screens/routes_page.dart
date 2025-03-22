import 'package:flutter/material.dart';
import 'package:interface_1/screens/routes_folder/biblio_page.dart';
import 'package:interface_1/screens/routes_folder/files_page.dart';
import 'package:interface_1/screens/routes_folder/home_page.dart';
import 'package:interface_1/screens/routes_folder/profile_page.dart';
import 'package:interface_1/screens/routes_folder/search_page.dart';

class RoutesPage extends StatefulWidget {
  const RoutesPage({super.key});

  @override
  State<RoutesPage> createState() => _RoutesPageState();
}

class _RoutesPageState extends State<RoutesPage> {
  List<Widget> screens = [
    HomePage(),
    SearchPage(),
    BiblioPage(),
    ProfilePage(),
  ];

  List<String> _titles = ["Home", "Search", "Biblio", "Profile"];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _titles[_selectedIndex],
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.6,
        child: ListView(
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text("Randa Abidi"),
                accountEmail: Text("randaabidi17@gmail.com"),
                currentAccountPicture:CircleAvatar(
                  backgroundImage:AssetImage (
                    "assets/images/36.jpg" ,
                    ),
                     ),
                     currentAccountPictureSize: Size.square(50),
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ),

            ListTile(
              leading: Icon(Icons.file_copy_rounded),
              title: Text("My Files"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FilePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Change Profile"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.download),
              title: Text("Download"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Color.fromARGB(255, 82, 82, 82),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online_rounded),
            label: "Biblio",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
