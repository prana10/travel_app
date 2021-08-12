import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndexTabBar = -1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 10),
          TabBarContainer("All", 0),
          SizedBox(width: 10),
          TabBarContainer("Flight", 1),
          SizedBox(width: 10),
          TabBarContainer("Cruise", 2),
          SizedBox(width: 10),
          TabBarContainer("Train", 3),
          SizedBox(width: 10),
          TabBarContainer("Plane", 4),
          SizedBox(width: 10),
          TabBarContainer("Destination", 5),
          SizedBox(width: 10),
        ],
      ),
    );
  }

  Widget TabBarContainer(String title, int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndexTabBar = index;
          });
        },
        child: Container(
          width: MediaQuery.of(context).size.width / 3.7,
          height: 42,
          decoration: BoxDecoration(
            color:
                selectedIndexTabBar == index ? defaultColor : Colors.grey[300],
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.inter(
                color:
                    selectedIndexTabBar == index ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      );
}
