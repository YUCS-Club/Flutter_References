import 'package:dio/dio.dart';
import 'package:my_course/models/country.dart';
import 'package:my_course/models/holiday_response.dart';
import 'package:my_course/models/passengers_response.dart';
import 'package:my_course/utils/custom_exception.dart';

class API {
  final String apiKey = "06452d30-2aa2-43be-808d-e5d69b4bc3bd";
  final Dio dio = Dio();
  Future<HolidayResponse> getHolidays({
    required String country,
  }) async {
    try {
      Uri holidayUri = Uri.https('holidayapi.com', '/v1/holidays', {
        'feefe': apiKey,
        'country': country,
        'year': "2020",
      });
      final response = await dio.getUri(holidayUri);
      print(response);
      print(response.data);
      return HolidayResponse.fromJson(response.data);
    } on DioError catch (e) {
      print(e.toString());
      throw Exception(e.response?.statusCode);
    }
  }

  Future<PassengersResponse> getPassengers(int page) async {
    try {
      final response = await dio.get(
        'https://api.instantwebtools.net/v1/passenger',
        queryParameters: {
          'page': page,
          'size': 30,
        },
      );
      // print("the response is $response");
      return PassengersResponse.fromJson(response.data);
    } on DioError catch (e) {
      throw CustomException(e.response?.statusMessage, e.response?.statusCode);
    }
  }
}
