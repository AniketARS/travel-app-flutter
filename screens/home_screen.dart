import 'package:flutter/material.dart';
import 'package:travel_app/data/narratives.dart';
import 'package:travel_app/data/travelers.dart';
import 'package:travel_app/widgets/bottom_sheet.dart';
import 'package:travel_app/widgets/navigation.dart';
import 'package:travel_app/widgets/post.dart';
import 'package:travel_app/widgets/quick_travelers.dart';
import 'package:travel_app/widgets/title_menu.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Navigation(),
                SizedBox(height: 30.0),
                TitleMenu(
                  title: 'Travelers',
                  option: 'Click to Update',
                  isSpecial: true,
                ),
                SizedBox(height: 10.0),
                QuickTravelers(travelers),
                SizedBox(height: 10.0),
                TitleMenu(
                  title: 'Narratives',
                  option: 'View all',
                  isSpecial: false,
                ),
                SizedBox(height: 10.0),
                Post(narratives),
                SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
        bottomSheet: BottomSheetButMine());
  }
}
