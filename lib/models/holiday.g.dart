// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holiday.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Holiday _$HolidayFromJson(Map<String, dynamic> json) {
  return Holiday(
    json['name'] as String,
    json['date'] as String,
    json['country'] as String,
    WeekDay.fromJson(json['weekday'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HolidayToJson(Holiday instance) => <String, dynamic>{
      'name': instance.name,
      'date': instance.date,
      'country': instance.country,
      'weekday': instance.weekday.toJson(),
    };

WeekDay _$WeekDayFromJson(Map<String, dynamic> json) {
  return WeekDay(
    HolidayDate.fromJson(json['date'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WeekDayToJson(WeekDay instance) => <String, dynamic>{
      'date': instance.holidayDate.toJson(),
    };

HolidayDate _$HolidayDateFromJson(Map<String, dynamic> json) {
  return HolidayDate(
    json['name'] as String,
    json['numeric'] as String,
  );
}

Map<String, dynamic> _$HolidayDateToJson(HolidayDate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'numeric': instance.numeric,
    };
