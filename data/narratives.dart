import 'package:travel_app/data/travelers.dart';

class Narrative {
  final Traveler author;
  final String time;
  final String postURL;
  final String postName;
  final double score;

  Narrative({
    this.author,
    this.time,
    this.postURL,
    this.postName,
    this.score,
  });
}

List<Narrative> narratives = [
  Narrative(
      author: Traveler(
        name: "Tiff Mccool",
        photoURL: "assets/users/1.jpg",
        narratives: 152,
        likes: 2753,
        favorite: true,
      ),
      time: "6m ago",
      postURL: "assets/posts/hawamahal.jpg",
      postName: "HawaMahal, India",
      score: 5.0)
];
