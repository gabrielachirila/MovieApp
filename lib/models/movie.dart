class Movie {
  final int id;
  final String title;
  final String overview;
  final List<String> genres;
  final String imageUrl;
  final int year;
  final List<int> actorIds;
  final List<int> producerIds;
  bool isFavorite;

  Movie({
    required this.id,
    required this.title,
    required this.overview,
    required this.genres,
    required this.imageUrl,
    required this.year,
    required this.actorIds,
    required this.producerIds,
    this.isFavorite = false,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['title'],
      overview: json['overview'],
      genres: List<String>.from(json['genres']),
      imageUrl: json['imageUrl'],
      year: json['year'],
      actorIds: List<int>.from(json['actorIds']),
      producerIds: List<int>.from(json['producerIds']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'overview': overview,
      'genres': genres,
      'imageUrl': imageUrl,
      'year': year,
      'actorIds': actorIds,
      'producerIds': producerIds,
    };
  }
}
