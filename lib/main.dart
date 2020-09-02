import 'package:database_donasi_v1/pages/campaign_page.dart';
import 'package:flutter/material.dart';
import 'package:database_donasi_v1/pages/home_page.dart';

void main() {
  runApp(DatabaseDonasiApp());
}

class DatabaseDonasiApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Database Donasi',
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => HomePage(),
        CampaignPage.route: (context) => CampaignPage(),
      },
    );
  }
}
