import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionHeader extends StatelessWidget {
  final double paddingLeft;
  final String title;
  final String subTitle;

  SectionHeader({this.paddingLeft, this.subTitle, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: paddingLeft,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: GoogleFonts.montserrat(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subTitle,
            textAlign: TextAlign.left,
            style: GoogleFonts.montserrat(
              fontSize: 12.0,
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }
}
