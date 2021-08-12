import 'package:json_annotation/json_annotation.dart';
import 'package:my_course/models/country.dart';
import 'package:my_course/models/my_request.dart';

part 'country_response.g.dart';

@JsonSerializable()
class CountryResponse {
  final int status;
  @JsonKey(name: "requests")
  final MyRequest myRequests;
  final List<Country> countries;

  const CountryResponse(this.status, this.myRequests, this.countries);

  factory CountryResponse.fromJson(Map<String, dynamic> json) =>
      _$CountryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CountryResponseToJson(this);
}
