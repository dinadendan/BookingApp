
class ImageLinks {
  final String smallThumbnail;
  final String thumbnail;

  const ImageLinks({required this.smallThumbnail, required this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
    smallThumbnail: json['smallThumbnail'] as String,
    thumbnail: json['thumbnail'] as String,
  );

  Map<String, dynamic> toJson() => {
    'smallThumbnail': smallThumbnail,
    'thumbnail': thumbnail,
  };

  List<Object?> get props => [smallThumbnail, thumbnail];
}