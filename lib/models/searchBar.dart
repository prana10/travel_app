import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration.collapsed(
                hintText: "Search",
                hintStyle: GoogleFonts.inter(
                  color: Colors.grey[400],
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            child: Icon(
              Icons.dashboard,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
