abstract class Utilities {
  static String convertHumanTemp(double? temperature) {
    try {
      return "${temperature!.toInt()} °C";
    } catch (_) {
      return "erro de dados";
    }
  }
}
