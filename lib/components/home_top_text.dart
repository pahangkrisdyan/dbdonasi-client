import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTopText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Kami hadir untuk\nmemberi',
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Cari langsung aksi galang dana di database donasi',
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 14.0,
            color: Colors.white,
            fontWeight: FontWeight.w200,
          ),
        ),
        SizedBox(
          height: 40.0,
        )
      ],
    );
  }
}
