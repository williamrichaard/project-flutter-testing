abstract class TemperatureConverter {
  static String convertHumanTemp(double? temperature) {
    if (temperature != null) {
      return "${temperature.toInt()} °C";
    } else {
      return "Erro de dados";
    }
  }
}