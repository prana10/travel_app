import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/theme.dart';
import 'dart:math' as math;

class DetailPage extends StatefulWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.grey[350],
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/bali_one.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.grey[200],
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RowContainer(0, "Avia"),
                            SizedBox(
                              width: 5,
                            ),
                            RowContainer(1, "Train"),
                            SizedBox(
                              width: 5,
                            ),
                            RowContainer(2, "Car"),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          "2 tickets",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w700,
                            fontSize: 36,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20),
                        ContainerCustom(context,"10:40am","12:40am"),
                        SizedBox(height: 15),
                        ContainerCustom(context,"12:22am","2:22am"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget RowContainer(int index, String title) {
    return GestureDetector(
      onTap: () {
        _selectedIndex = index;
      },
      child: Container(
        width: 90,
        height: 30,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? defaultColor
              : Colors.grey[400]?.withOpacity(0.3),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 13,
              fontWeight:
                  _selectedIndex == index ? FontWeight.w700 : FontWeight.w600,
              color: _selectedIndex == index ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Container ContainerCustom(BuildContext context, String clock1, clock2) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.15,
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[350]!.withOpacity(0.5),
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCircle(defaultColor),
              DottedLine(
                direction: Axis.horizontal,
                lineLength: 120,
                dashColor: Colors.grey,
              ),
              Transform.rotate(
                angle: 180 * math.pi / 360,
                child: Icon(
                  Boxicons.bxs_plane,
                  color: defaultColor,
                ),
              ),
              DottedLine(
                direction: Axis.horizontal,
                lineLength: 120,
                dashColor: Colors.grey,
              ),
              CustomCircle(Colors.black),
            ],
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                Subtitle("New York"),
                Spacer(),
                Text(
                  "12h",
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Subtitle("Great Britain"),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                Row(
                  children: [
                    Title(clock1, 14.0, FontWeight.bold),
                    Spacer(),
                    Title(clock2, 14.0, FontWeight.bold),
                  ],
                ),
                SizedBox(height: 3),
                Row(
                  children: [
                    Subtitle("4.26.2021, Tue"),
                    Spacer(),
                    Subtitle("4.27.2021, Wed"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          DottedLine(
            dashColor: Colors.grey,
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                Transform.rotate(
                  angle: 180 * math.pi / 80,
                  child: Icon(
                    Boxicons.bxs_plane,
                    color: defaultColor,
                    size: 15,
                  ),
                ),
                SizedBox(width: 10),
                Subtitle("American Airlines"),
                Spacer(),
                Title("\$120", 14.0, FontWeight.bold),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget Title(String title, double size, FontWeight weight) {
    return Text(
      title,
      style: GoogleFonts.inter(
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }

  Text Subtitle(String name) {
    return Text(
      name,
      style: GoogleFonts.inter(
        fontSize: 12,
        color: Colors.grey,
      ),
    );
  }

  Container CustomCircle(Color CustomColor) {
    return Container(
      width: 14,
      height: 14,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: CustomColor,
      ),
      child: Center(
        child: Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
