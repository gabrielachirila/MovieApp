class Producer {
  final int id;
  final String name;
  final String? imageUrl;
  final String? bio;
  final List<int>? movieIds;

  Producer({
    required this.id,
    required this.name,
    this.imageUrl,
    this.bio,
    this.movieIds,
  });

  factory Producer.fromJson(Map<String, dynamic> json) {
    return Producer(
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
