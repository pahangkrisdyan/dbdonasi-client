import 'package:database_donasi_v1/builders/app_bar.dart';
import 'package:database_donasi_v1/constants/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CampaignPage extends StatelessWidget {
  static const String route = "/campaign";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: LayoutBuilder(
        builder: (context, constraint) {
          double maxWidth = constraint.maxWidth;
          double maxheight = constraint.maxHeight;
          double restOfBodyWidth = 0;
          if (maxWidth > maxBodyWidth) {
            restOfBodyWidth = maxWidth - maxBodyWidth;
          }
          double mainWidth = maxWidth - restOfBodyWidth;
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: restOfBodyWidth / 2,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: maxheight / 2,
                    width: maxWidth,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://api.databasedonasi.id/photo-front-banner.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: mainWidth * 0.06,
                        ),
                        child: Card(
                          child: Container(
                            padding: EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    _buildText(
                                      'Penggalang Dana',
                                      'Wahyu Nuriswato',
                                    ),
                                    _buildText(
                                      'Periode Donasi',
                                      '01 Mei 2020 - 20 Mei 2020',
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                _buildText(
                                  'Deskripsi Donasi',
                                  'Kebutuhan APD sangat diperlukan dalam penanganan covid-19. Anda bisa berkontribusi dengan memberikan  donasi untuk nantinya dibelanjakan APD untuk tenaga medis yang membutuhkan',
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                _buildText(
                                  'Kebutuhan Donasi',
                                  'Rp 150.000.000,- dan bahan makanan pokok',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: mainWidth * 0.06,
                        ),
                        width: double.infinity,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFEC008C),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Menuju Situs Donasi',
                              style: GoogleFonts.roboto(
                                color: Color(0xFFEC008C),
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildText(String key, String value) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            key,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          Text(
            value,
            style: GoogleFonts.roboto(
              fontSize: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}
