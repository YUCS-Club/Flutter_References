// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryResponse _$CountryResponseFromJson(Map<String, dynamic> json) {
  return CountryResponse(
    json['status'] as int,
    MyRequest.fromJson(json['requests'] as Map<String, dynamic>),
    (json['countries'] as List<dynamic>)
        .map((e) => Country.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CountryResponseToJson(CountryResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'requests': instance.myRequests.toJson(),
      'countries': instance.countries.map((e) => e.toJson()).toList(),
    };
