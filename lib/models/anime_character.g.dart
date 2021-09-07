// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeCharacter _$AnimeCharacterFromJson(Map<String, dynamic> json) {
  return AnimeCharacter(
    Detail.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AnimeCharacterToJson(AnimeCharacter instance) =>
    <String, dynamic>{
      'data': instance.characterDetail.toJson(),
    };

Detail _$DetailFromJson(Map<String, dynamic> json) {
  return Detail(
    Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DetailToJson(Detail instance) => <String, dynamic>{
      'attributes': instance.attributes.toJson(),
    };

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return Attributes(
    json['canonicalName'] as String,
    CharacterImage.fromJson(json['image'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'canonicalName': instance.name,
      'image': instance.image.toJson(),
    };

CharacterImage _$CharacterImageFromJson(Map<String, dynamic> json) {
  return CharacterImage(
    json['original'] as String,
  );
}

Map<String, dynamic> _$CharacterImageToJson(CharacterImage instance) =>
    <String, dynamic>{
      'original': instance.original,
    };
