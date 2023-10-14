class FeaturedSection {
  final int id;
  final String title;
  final String description;
  final List<FeaturedCard> cards;

  FeaturedSection({
    required this.id,
    required this.title,
    required this.description,
    required this.cards,
  });
}

class FeaturedCard {
  final int id;
  final String title;
  final String description;
  final String thumbnailUrl;
  final String imageUrl;
  final List<String> details;

  FeaturedCard({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.imageUrl,
    required this.details,
  });
}
