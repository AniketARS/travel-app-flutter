import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Travel Mate',
                style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontFamily: ('RedHatText'),
                ),
              ),
              SvgPicture.asset(
                'assets/icons/search.svg',
                width: 24,
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'Partly Cloudy 23°C',
                style: TextStyle(
                  fontFamily: 'RedHatText',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black38,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
