import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/models/searchBar.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/models/custom_gridview.dart';
import 'package:travel_app/models/TabBar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        selectedItemColor: defaultColor,
        unselectedItemColor: Colors.grey,
        iconSize: 24,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Boxicons.bxs_home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Boxicons.bxs_shopping_bag),
            label: "Shopping cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              HeadingText(),
              SizedBox(height: 10),
              SearchBar(),
              SizedBox(height: 13),
              CustomTabBar(),
              SizedBox(height: 20),
              CustomGridView(),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget HeadingText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(
            left: defaultMarginLeft,
          ),
          child: Text(
            "Where would \nyou like to travel?",
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 16.0,
            bottom: 40,
          ),
          child: CircleAvatar(
            backgroundColor: defaultColor,
            child: Icon(Icons.person, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
