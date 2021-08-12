import 'package:json_annotation/json_annotation.dart';
import 'package:my_course/models/holiday.dart';
import 'package:my_course/models/my_request.dart';

part 'holiday_response.g.dart';

@JsonSerializable()
class HolidayResponse {
  final int status;
  @JsonKey(name: "requests")
  final MyRequest myRequest;
  final List<Holiday> holidays;
  const HolidayResponse(this.status, this.myRequest, this.holidays);

  factory HolidayResponse.fromJson(Map<String, dynamic> json) =>
      _$HolidayResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HolidayResponseToJson(this);
}
