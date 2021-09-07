// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeRespoonse _$AnimeRespoonseFromJson(Map<String, dynamic> json) {
  return AnimeRespoonse(
    AnimeData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AnimeRespoonseToJson(AnimeRespoonse instance) =>
    <String, dynamic>{
      'data': instance.animeData.toJson(),
    };

AnimeData _$AnimeDataFromJson(Map<String, dynamic> json) {
  return AnimeData(
    AnimeDetail.fromJson(json['attributes'] as Map<String, dynamic>),
    Relationships.fromJson(json['relationships'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AnimeDataToJson(AnimeData instance) => <String, dynamic>{
      'attributes': instance.detail.toJson(),
      'relationships': instance.relationships.toJson(),
    };

AnimeDetail _$AnimeDetailFromJson(Map<String, dynamic> json) {
  return AnimeDetail(
    json['canonicalTitle'] as String,
  );
}

Map<String, dynamic> _$AnimeDetailToJson(AnimeDetail instance) =>
    <String, dynamic>{
      'canonicalTitle': instance.title,
    };

Relationships _$RelationshipsFromJson(Map<String, dynamic> json) {
  return Relationships(
    Characters.fromJson(json['animeCharacters'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RelationshipsToJson(Relationships instance) =>
    <String, dynamic>{
      'animeCharacters': instance.characters.toJson(),
    };

Characters _$CharactersFromJson(Map<String, dynamic> json) {
  return Characters(
    Link.fromJson(json['links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CharactersToJson(Characters instance) =>
    <String, dynamic>{
      'links': instance.links.toJson(),
    };

Link _$LinkFromJson(Map<String, dynamic> json) {
  return Link(
    json['self'] as String,
    json['related'] as String,
  );
}

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'self': instance.self,
      'related': instance.related,
    };
