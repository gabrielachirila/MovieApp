class Actor {
  final int id;
  final String name;
  final String? imageUrl;
  final String? bio;
  final List<int>? movieIds;
  bool isFavorite;

  Actor({
    required this.id,
    required this.name,
    this.imageUrl,
    this.bio,
    this.movieIds,
    this.isFavorite = false,
  });

  factory Actor.fromJson(Map<String, dynamic> json) {
    return Actor(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      bio: json['bio'],
      movieIds: List<int>.from(json['movieIds']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'bio': bio,
      'movieIds': movieIds,
    };
  }
}
