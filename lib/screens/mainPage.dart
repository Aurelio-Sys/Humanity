import 'package:flutter/material.dart';
import 'package:humanity/screens/HomePage.dart';
import 'package:humanity/screens/ViewGalangDana.dart';
import 'package:humanity/screens/categories.dart';
import 'package:humanity/screens/login_page.dart';
import 'package:humanity/screens/mainadd.dart';


class MainPage extends StatefulWidget {

  static const routeName = '/MainPage';

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  List<Widget> _layoutPage = [
    HomePage(),
    ViewGalangDana(),
    GalangDana(),
    Categories(),
    LoginPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
     selectedIndex = index; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _layoutPage.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Kelola Dana'),
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text('Galang Dana'),
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Kategori Dana'),
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
            backgroundColor: Colors.grey,
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.greenAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}