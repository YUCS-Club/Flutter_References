import 'package:json_annotation/json_annotation.dart';

part 'holiday.g.dart';

@JsonSerializable()
class Holiday {
  final String name;
  final String date;
  final String country;
  final WeekDay weekday;

  const Holiday(this.name, this.date, this.country, this.weekday);

  factory Holiday.fromJson(Map<String, dynamic> json) =>
      _$HolidayFromJson(json);

  Map<String, dynamic> toJson() => _$HolidayToJson(this);
}

@JsonSerializable()
class WeekDay {
  @JsonKey(name: "date")
  final HolidayDate holidayDate;

  const WeekDay(this.holidayDate);

  factory WeekDay.fromJson(Map<String, dynamic> json) =>
      _$WeekDayFromJson(json);

  Map<String, dynamic> toJson() => _$WeekDayToJson(this);
}

@JsonSerializable()
class HolidayDate {
  final String name;
  final String numeric;

  const HolidayDate(this.name, this.numeric);

  factory HolidayDate.fromJson(Map<String, dynamic> json) =>
      _$HolidayDateFromJson(json);

  Map<String, dynamic> toJson() => _$HolidayDateToJson(this);
}
