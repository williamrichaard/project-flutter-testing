import 'package:flutter/material.dart';
import 'package:innopolis_test/data/test_data_repository.dart';
import 'package:innopolis_test/domain/model/data_model.dart';
import 'package:innopolis_test/presentation/widgets/init_title.dart';

import 'widgets/data_page.dart';

class WeatherAppScreen extends StatefulWidget {
  const WeatherAppScreen({
    Key? key, required TestDataRepository repository,  //<<-- Para usar o mock nos testes
  }) : super(key: key);

  @override
  State<WeatherAppScreen> createState() => _WeatherAppScreenState();
}

class _WeatherAppScreenState extends State<WeatherAppScreen> {
  Future<DataModel>? futureDataModel;
  final dataRepository = TestDataRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teste de Clima"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            futureDataModel = dataRepository.fetchData();
          });
        },
        child: const Icon(Icons.get_app_sharp),
      ),
      body: FutureBuilder<DataModel>(
        future: futureDataModel,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.data != null) {
            return BodyPage(dataModel: snapshot.data);
          }
          return const InitTitle();
        },
      ),
    );
  }
}