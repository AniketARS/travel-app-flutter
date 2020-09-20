import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/data/travelers.dart';

class QuickTravelers extends StatelessWidget {
  final List<Traveler> travelers;

  QuickTravelers(this.travelers);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.0,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 10.0),
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 20.0,
            ),
            width: 160.0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 15.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: travelers[index].favorite
                    ? Theme.of(context).primaryColor
                    : Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15.0,
                    offset: Offset(0, 0),
                    color: travelers[index].favorite
                        ? Theme.of(context).primaryColor.withOpacity(0.8)
                        : Colors.black12.withOpacity(0.15),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(travelers[index].photoURL),
                          ),
                        ),
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        travelers[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: travelers[index].favorite
                              ? Colors.white
                              : Colors.black87,
                        ),
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        '${travelers[index].narratives} narratives',
                        style: TextStyle(
                          fontFamily: 'RedHatText',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: travelers[index].favorite
                              ? Colors.white70
                              : Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        travelers[index].likes < 1000
                            ? travelers[index].likes.toString()
                            : travelers[index].likes < 1000000
                                ? (travelers[index].likes / 1000)
                                        .toStringAsFixed(2) +
                                    "K"
                                : (travelers[index].likes / 1000000)
                                        .toStringAsFixed(2) +
                                    "M",
                        style: TextStyle(
                          fontFamily: 'RedHatText',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w800,
                          color: travelers[index].favorite
                              ? Colors.white
                              : Colors.black54,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/heart.svg',
                        width: 18.0,
                        color: travelers[index].favorite
                            ? Colors.white
                            : Colors.grey,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        itemCount: travelers.length,
      ),
    );
  }
}
