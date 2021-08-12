import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme.dart';

class CustomGridView extends StatelessWidget {
  CustomGridView({Key? key}) : super(key: key);
  final Map<String, String> price = {
    "tokyo": "\$120",
    "osaka": "\$220",
    "bali": "\$100",
    "kairo": "\$300",
    "kyoto": "\$260",
    "dubai": "\$500",
    "jakarta": "\$180",
    "sydney": "\$320",
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: [
          Content(
              context,
              "https://images.unsplash.com/photo-1590559899731-a382839e5549?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
              "\$220",
              "Osaka",
              "https://images.unsplash.com/photo-1518684079-3c830dcef090?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
              "\$500",
              "Dubai"),
          SizedBox(height: 10),
          Content(
              context,
              "https://images.unsplash.com/photo-1590930754517-64d5fffa06ac?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8amFrYXJ0YXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60",
              "\$180",
              "jakarta",
              "https://images.unsplash.com/photo-1503899036084-c55cdd92da26?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dG9reW98ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60",
              "\$120",
              "Tokyo"),
          SizedBox(height: 10),
          Content(
              context,
              "https://images.unsplash.com/photo-1493997181344-712f2f19d87a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80",
              "\$260",
              "Kyoto",
              "https://images.unsplash.com/photo-1511739001486-6bfe10ce785f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
              "\$260",
              "Paris"),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget Content(context, String Image1, price1, desc1, String Image2, price2,
          desc2) =>
      Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2.25,
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(Image1),
                fit: BoxFit.cover,
              ),
              color: defaultColor,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(top: 160),
                child: Row(
                  children: [
                    Text(
                      desc1,
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            price1,
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2.25,
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(Image2),
                fit: BoxFit.cover,
              ),
              color: defaultColor,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(top: 160),
                child: Row(
                  children: [
                    Text(
                      desc2,
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            price2,
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}
