import 'package:json_annotation/json_annotation.dart';

part 'anime_characters_response.g.dart';

@JsonSerializable()
class AnimeCharactersResponse {
  @JsonKey(name: 'data')
  final List<Data> data;
  final Meta meta;

  const AnimeCharactersResponse(this.data, this.meta);

  factory AnimeCharactersResponse.fromJson(Map<String, dynamic> json) =>
      _$AnimeCharactersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeCharactersResponseToJson(this);
}

@JsonSerializable()
class Meta {
  final int count;

  const Meta(this.count);

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class Data {
  final String id;
  final String type;
  const Data(this.id, this.type);

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  String get getCharacterUrl =>
      'https://kitsu.io/api/edge/media-characters/$id/character';
}

// @JsonSerializable()
// class Relationship {
//   @JsonKey(name: 'relationships')
//   final LinkCharacter relationship;

//   const Relationship(this.relationship);

//   factory Relationship.fromJson(Map<String, dynamic> json) =>
//       _$RelationshipFromJson(json);

//   Map<String, dynamic> toJson() => _$RelationshipToJson(this);
// }

// @JsonSerializable()
// class LinkCharacter {
//   @JsonKey(name: 'links')
//   final Link link;

//   const LinkCharacter(this.link);

//   factory LinkCharacter.fromJson(Map<String, dynamic> json) =>
//       _$LinkCharacterFromJson(json);

//   Map<String, dynamic> toJson() => _$LinkCharacterToJson(this);
// }
