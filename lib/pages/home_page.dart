import 'package:database_donasi_v1/components/home_terkini_section.dart';
import 'package:database_donasi_v1/components/home_top_section.dart';
import 'package:database_donasi_v1/components/section_header.dart';
import 'package:database_donasi_v1/datas/dummy.dart';
import 'package:database_donasi_v1/models/category.dart';
import 'package:flutter/material.dart';
import 'package:database_donasi_v1/builders/app_bar.dart';
import 'package:database_donasi_v1/constants/styles.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  static const String route = "/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: LayoutBuilder(
        builder: (context, constraint) {
          double maxWidth = constraint.maxWidth;
          double restOfBodyWidth = 0;
          if (maxWidth > maxBodyWidth) {
            restOfBodyWidth = maxWidth - maxBodyWidth;
          }
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: restOfBodyWidth / 2),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeTopSection(),
                  HomeTerkiniSection(),
                  SizedBox(
                    height: sectionSpacerHeight,
                  ),
                  Container(
                    child: Column(
                      children: [
                        SectionHeader(
                          paddingLeft: mainPaddingSide,
                          title: 'Kategori Donasi',
                          subTitle:
                              'Info donasi dari berbagai sumber hasil kurasi Database Donasi',
                        ),
                        SizedBox(
                          height: sectionSpacerHeight,
                        ),
                        Container(
                          height: 80.0,
                          child: ListView(
                            padding: EdgeInsets.symmetric(
                              horizontal: mainPaddingSide,
                            ),
                            scrollDirection: Axis.horizontal,
                            itemExtent: 300,
                            children: categories
                                .map((Category category) => Card(
                                      elevation: 2.0,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 150.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                  'https://api.databasedonasi.id/photo-front-banner.jpg',
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 100.0,
                                            child: Center(
                                              child: Text(
                                                category.name,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
