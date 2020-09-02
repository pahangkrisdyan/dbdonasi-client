import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSearch extends StatelessWidget {
  final double searchBoxContainerHeight;

  HomeSearch({this.searchBoxContainerHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: searchBoxContainerHeight * 2,
      padding: EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 16.0,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(8.0),
        elevation: 6.0,
        child: Container(
          height: 48,
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.search,
              ),
              SizedBox(
                width: 6.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Donasi Makanan Bandung',
                  ),
                  style: GoogleFonts.montserrat(
                    fontSize: 16.0,
                  ),
                ),
              )
              // TextField(),
            ],
          ),
        ),
      ),
    );
  }
}
