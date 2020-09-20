import 'package:flutter/material.dart';

class TitleMenu extends StatelessWidget {
  final String title;
  final String option;
  final bool isSpecial;

  TitleMenu({this.title, this.option, this.isSpecial});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                this.title,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.1,
                  color: Colors.black87,
                ),
              ),
              Text(
                this.option,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: isSpecial
                      ? Theme.of(context).primaryColor
                      : Colors.black38,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
