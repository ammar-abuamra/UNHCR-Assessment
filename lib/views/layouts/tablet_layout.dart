




import 'package:flutter/material.dart';
import 'package:unhcr/models/vacancy.dart';

import '../deetails_screen.dart';

Widget buildTabletLayout(List<Vacancy> vacancies) {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: vacancies.length,
    itemBuilder: (context, index) {
      final vacancy = vacancies[index];
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VacancyDetailsScreen(vacancy: vacancy)),
          );
        },
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(vacancy.imageUrl, height: 150, width: double.infinity, fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(vacancy.title, style: TextStyle(fontSize: 18)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(vacancy.company, style: TextStyle(fontSize: 14)),
              ),
            ],
          ),
        ),
      );
    },
  );
}
