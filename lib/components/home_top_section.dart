import 'package:flutter/material.dart';
import 'package:database_donasi_v1/components/home_search.dart';
import 'package:database_donasi_v1/components/home_top_image.dart';
import 'package:database_donasi_v1/components/home_top_text.dart';
import 'package:database_donasi_v1/constants/styles.dart';

class HomeTopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: mainTopContainerHeight,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: HomeTopImage(
              height: mainTopContainerHeight - searchBoxContainerHeight,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: HomeTopText(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: HomeSearch(
              searchBoxContainerHeight: searchBoxContainerHeight,
            ),
          ),
        ],
      ),
    );
  }
}
