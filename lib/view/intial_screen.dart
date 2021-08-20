import 'package:dsc_shop/view/favourite_screen.dart';
import 'package:dsc_shop/view/products_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "home-Page";
  int navigationIndex;

  HomeScreen(this.navigationIndex);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int navigationIndex = 0;

  List<Widget> navScreens = [
    ProductsPage(),
    FavouritePage(),
  ];

  @override
  void initState() {
    super.initState();
    navigationIndex = widget.navigationIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navScreens[navigationIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.white,
        currentIndex: navigationIndex,
        onTap: (int index) {
          setState(() {
            navigationIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: new Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.favorite),
            label: 'Favourites',
          ),
        ],
      ),
    );
  }
}
