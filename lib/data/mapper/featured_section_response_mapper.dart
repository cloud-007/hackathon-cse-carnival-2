import 'package:reachout/data/datasource/remote/model/featured_cards_response.dart';
import 'package:reachout/data/datasource/remote/model/featured_section_item_response.dart';
import 'package:reachout/data/datasource/remote/model/featured_section_response.dart';
import 'package:reachout/domain/model/featured_card.dart';

extension FeaturedSectionResponseMapper on FeaturedSectionResponse {
  List<FeaturedSection> toDomain() {
    return results.map((e) => e.toDomain()).toList();
  }
}

extension FeaturedSectionItemResponseMapper on FeaturedSectionItemResponse {
  FeaturedSection toDomain() {
    return FeaturedSection(
      id: id,
      title: title,
      description: description,
      cards: cards.map((e) => e.toDomain()).toList(),
    );
  }
}

extension FeaturedCardResponseMapper on FeaturedCardResponseItem {
  FeaturedCard toDomain() {
    return FeaturedCard(
      id: id,
      title: title,
      description: description,
      thumbnailUrl: thumbnailUrl,
      imageUrl: imageUrl,
      details: details,
    );
  }
}
