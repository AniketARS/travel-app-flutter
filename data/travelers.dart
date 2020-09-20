class Traveler {
  final String name;
  final String photoURL;
  final int narratives;
  final int likes;
  bool favorite;

  Traveler({
    this.name,
    this.photoURL,
    this.narratives,
    this.likes,
    this.favorite,
  });
}

List<Traveler> travelers = [
  Traveler(
    name: "Tiff Mccool",
    photoURL: "assets/users/1.jpg",
    narratives: 152,
    likes: 2753,
    favorite: false,
  ),
  Traveler(
    name: "Jarvis Hull",
    photoURL: "assets/users/2.jpg",
    narratives: 333,
    likes: 1200,
    favorite: true,
  ),
  Traveler(
    name: "Benjamin Mc.",
    photoURL: "assets/users/3.jpg",
    narratives: 650,
    likes: 7089,
    favorite: false,
  ),
  Traveler(
    name: "Nereida Volker",
    photoURL: "assets/users/4.jpg",
    narratives: 210,
    likes: 3100,
    favorite: false,
  ),
  Traveler(
    name: "Vida Arnhold",
    photoURL: "assets/users/5.jpg",
    narratives: 5,
    likes: 87,
    favorite: true,
  ),
  Traveler(
    name: "Kylie Sassman",
    photoURL: "assets/users/6.jpg",
    narratives: 1024,
    likes: 10045,
    favorite: false,
  ),
  Traveler(
    name: "Marc Grange",
    photoURL: "assets/users/7.jpg",
    narratives: 453,
    likes: 3600,
    favorite: false,
  ),
];
