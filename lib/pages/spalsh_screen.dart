import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/theme.dart';
// import 'dart:async';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   Timer(
  //     Duration(seconds: 10),
  //     () => Navigator.pushNamed(context, '/homePage'),
  //   );
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bali_two.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 2),
            Container(
              margin: EdgeInsets.only(
                left: defaultMarginLeft,
              ),
              child: Text(
                "Travel with\ncomfort and\nsafety!",
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/HomePage');
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: defaultMarginLeft,
                  right: 220,
                ),
                height: 50,
                decoration: BoxDecoration(
                  color: defaultColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
