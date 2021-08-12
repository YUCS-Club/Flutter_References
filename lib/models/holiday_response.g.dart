// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holiday_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HolidayResponse _$HolidayResponseFromJson(Map<String, dynamic> json) {
  return HolidayResponse(
    json['status'] as int,
    MyRequest.fromJson(json['requests'] as Map<String, dynamic>),
    (json['holidays'] as List<dynamic>)
        .map((e) => Holiday.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$HolidayResponseToJson(HolidayResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'requests': instance.myRequest.toJson(),
      'holidays': instance.holidays.map((e) => e.toJson()).toList(),
    };
