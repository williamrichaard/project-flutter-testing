import 'package:innopolis_test/domain/model/data_model.dart';
import 'package:innopolis_test/domain/repository/data_repository.dart';

class TestDataRepository implements DataRepository {
  @override
  Future<DataModel> fetchData() async {
    await Future.delayed(const Duration(seconds: 1));
    return const DataModel(temp: 34.2);
  }
}
