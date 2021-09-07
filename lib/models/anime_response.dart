import 'package:json_annotation/json_annotation.dart';

part 'anime_response.g.dart';

@JsonSerializable()
class AnimeRespoonse {
  @JsonKey(name: 'data')
  final AnimeData animeData;

  const AnimeRespoonse(this.animeData);

  factory AnimeRespoonse.fromJson(Map<String, dynamic> json) =>
      _$AnimeRespoonseFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeRespoonseToJson(this);
}

@JsonSerializable()
class AnimeData {
  @JsonKey(name: 'attributes')
  final AnimeDetail detail;
  @JsonKey(name: 'relationships')
  final Relationships relationships;

  const AnimeData(this.detail, this.relationships);

  factory AnimeData.fromJson(Map<String, dynamic> json) =>
      _$AnimeDataFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDataToJson(this);
}

@JsonSerializable()
class AnimeDetail {
  @JsonKey(name: 'canonicalTitle')
  final String title;

  const AnimeDetail(this.title);

  factory AnimeDetail.fromJson(Map<String, dynamic> json) =>
      _$AnimeDetailFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDetailToJson(this);
}

@JsonSerializable()
class Relationships {
  @JsonKey(name: 'animeCharacters')
  final Characters characters;

  const Relationships(this.characters);

  factory Relationships.fromJson(Map<String, dynamic> json) =>
      _$RelationshipsFromJson(json);

  Map<String, dynamic> toJson() => _$RelationshipsToJson(this);
}

@JsonSerializable()
class Characters {
  final Link links;

  const Characters(this.links);

  factory Characters.fromJson(Map<String, dynamic> json) =>
      _$CharactersFromJson(json);

  Map<String, dynamic> toJson() => _$CharactersToJson(this);
}

@JsonSerializable()
class Link {
  @JsonKey(name: 'self')
  final String self;
  final String related;

  const Link(this.self, this.related);

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);
}
