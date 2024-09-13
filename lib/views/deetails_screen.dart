import 'package:flutter/material.dart';
import '../models/vacancy.dart';

class VacancyDetailsScreen extends StatelessWidget {
  final Vacancy vacancy;

  VacancyDetailsScreen({required this.vacancy});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(vacancy.title)),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return constraints.maxWidth > 600
              ? buildTabletLayout()
              : buildMobileLayout();
        },
      ),
    );
  }

  Widget buildMobileLayout() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(vacancy.imageUrl, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(vacancy.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(vacancy.company, style: TextStyle(fontSize: 18)),
                SizedBox(height: 8),
                Text('Location: ${vacancy.location}'),
                SizedBox(height: 8),
                Text('Salary: ${vacancy.salary}'),
                SizedBox(height: 16),
                Text('Description: ${vacancy.description}'),
                SizedBox(height: 16),
                Text('Long Description: ${vacancy.longDescription}'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTabletLayout() {
    return Row(
      children: [
        Expanded(
          child: Image.network(vacancy.imageUrl, fit: BoxFit.cover),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(vacancy.title, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(vacancy.company, style: TextStyle(fontSize: 24)),
                SizedBox(height: 8),
                Text('Location: ${vacancy.location}'),
                SizedBox(height: 8),
                Text('Salary: ${vacancy.salary}'),
                SizedBox(height: 16),
                Text('Description: ${vacancy.description}'),
                SizedBox(height: 16),
                Text('Long Description: ${vacancy.longDescription}'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
