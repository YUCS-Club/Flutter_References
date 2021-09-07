// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_characters_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeCharactersResponse _$AnimeCharactersResponseFromJson(
    Map<String, dynamic> json) {
  return AnimeCharactersResponse(
    (json['data'] as List<dynamic>)
        .map((e) => Data.fromJson(e as Map<String, dynamic>))
        .toList(),
    Meta.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AnimeCharactersResponseToJson(
        AnimeCharactersResponse instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
    };

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return Meta(
    json['count'] as int,
  );
}

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'count': instance.count,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    json['id'] as String,
    json['type'] as String,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
