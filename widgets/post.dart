import 'package:flutter/material.dart';
import 'package:travel_app/data/narratives.dart';

class Post extends StatelessWidget {
  final List<Narrative> posts;

  Post(this.posts);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      height: 350.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 15.0,
            offset: Offset(0, 0),
            color: Colors.black12.withOpacity(0.1),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(posts[0].author.photoURL),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        posts[0].author.name,
                        style: TextStyle(
                          fontFamily: 'RedHatText',
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        posts[0].time,
                        style: TextStyle(
                          fontFamily: 'RedHatText',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.more_horiz,
                size: 32.0,
                color: Colors.black38,
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Container(
            height: 200,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage(posts[0].postURL),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                posts[0].postName,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              Text(
                '⭐ Scores: ${posts[0].score}',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
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
