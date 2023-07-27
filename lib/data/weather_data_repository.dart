import 'package:dio/dio.dart';
import 'package:innopolis_test/domain/model/data_model.dart';
import 'package:innopolis_test/domain/repository/data_repository.dart';

/// Aqui você precisa inserir seu appID
const String appID = "6c4238b7211577a79f1f5fa2911fb70c";

class WeatherDataRepository extends DataRepository {
  late final Dio _dio;

  WeatherDataRepository() {
    final options = BaseOptions(
      connectTimeout: 15000,
      receiveTimeout: 7000,
    );
    _dio = Dio(options);
  }

  @override
  Future<DataModel> fetchData() async {
    try {
      final response = await _dio.get(
        "https://api.openweathermap.org/data/2.5/weather",
        queryParameters: {
          "q": "Brasília",
          "appid": appID,
          "lang": "ru",
          "units": "metric",
        },
      );
      return DataModel.fromJson(response.data["main"]);
    } catch (error) {
      throw error;
    }
  }
}