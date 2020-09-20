import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetButMine extends StatefulWidget {
  @override
  _BottomSheetButMineState createState() => _BottomSheetButMineState();
}

class _BottomSheetButMineState extends State<BottomSheetButMine> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                _index = 0;
              });
            },
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: _index == 0 ? Theme.of(context).primaryColor : Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _index = 1;
              });
            },
            icon: SvgPicture.asset(
              'assets/icons/target.svg',
              color: _index == 1 ? Theme.of(context).primaryColor : Colors.grey,
            ),
          ),
          Container(
            width: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).primaryColor.withOpacity(0.2),
            ),
            padding: EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColor.withOpacity(0.5),
              ),
              padding: EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.add,
                  size: 28.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _index = 2;
              });
            },
            icon: SvgPicture.asset(
              'assets/icons/notification.svg',
              color: _index == 2 ? Theme.of(context).primaryColor : Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _index = 3;
              });
            },
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
              color: _index == 3 ? Theme.of(context).primaryColor : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
