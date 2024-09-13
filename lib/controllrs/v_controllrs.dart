import 'dart:convert';
import '../models/vacancy.dart';
import 'package:http/http.dart' as http;

class VacancyController {
  Future<List<Vacancy>> fetchVacancies() async {
    final response = await http.get(Uri.parse('https://www.unhcrjo.org/jobs/api'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((job) => Vacancy.fromJson(job)).toList();
    } else {
      throw Exception('Failed to load vacancies');
    }
  }
}
