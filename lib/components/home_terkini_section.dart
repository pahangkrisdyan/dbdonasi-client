import 'package:database_donasi_v1/components/section_header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:database_donasi_v1/models/campaign.dart';
import 'package:database_donasi_v1/constants/styles.dart';
import 'package:database_donasi_v1/datas/dummy.dart';

class HomeTerkiniSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(
            paddingLeft: mainPaddingSide,
            title: 'Pilihan Donasi Terkini',
            subTitle:
                'Info donasi dari berbagai sumber hasil kurasi DatabaseDonasi',
          ),
          SizedBox(
            height: sectionSpacerHeight,
          ),
          Container(
            height: terkiniListHeight,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(
                horizontal: mainPaddingSide,
              ),
              itemExtent: terkiniItemExtent,
              children: campaigns
                  .map((Campaign campaign) => GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            "/campaign",
                          );
                        },
                        child: Card(
                          elevation: 2.0,
                          child: Column(
                            children: [
                              //image
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://api.databasedonasi.id/photo-front-banner.jpg',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(4.0),
                                    bottomRight: Radius.circular(4.0),
                                  ),
                                ),
                                height: 120.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 10.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      campaign.form,
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10.0,
                                      ),
                                    ),
                                    Text(
                                      campaign.title,
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      campaign.place,
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10.0,
                                      ),
                                    ),
                                    Text(
                                      '(${campaign.originPlatform})',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
