import 'package:json_annotation/json_annotation.dart';

part 'anime_character.g.dart';

@JsonSerializable()
class AnimeCharacter {
  @JsonKey(name: 'data')
  final Detail characterDetail;

  const AnimeCharacter(this.characterDetail);

  factory AnimeCharacter.fromJson(Map<String, dynamic> json) =>
      _$AnimeCharacterFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeCharacterToJson(this);
}

@JsonSerializable()
class Detail {
  @JsonKey(name: 'attributes')
  final Attributes attributes;

  const Detail(this.attributes);

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);

  Map<String, dynamic> toJson() => _$DetailToJson(this);
}

@JsonSerializable()
class Attributes {
  @JsonKey(name: 'canonicalName')
  final String name;
  final CharacterImage image;
  const Attributes(this.name, this.image);

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);

  Map<String, dynamic> toJson() => _$AttributesToJson(this);
}

@JsonSerializable()
class CharacterImage {
  final String original;

  const CharacterImage(this.original);

  factory CharacterImage.fromJson(Map<String, dynamic> json) =>
      _$CharacterImageFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterImageToJson(this);
}
