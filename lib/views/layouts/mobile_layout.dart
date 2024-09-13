import 'dart:ui';

import 'package:flutter/material.dart';

import '../../models/vacancy.dart';
import '../deetails_screen.dart';
import '../widgets/list_view_iteam.dart';

Widget buildMobileLayout(List<Vacancy> vacancies) {
  return ListView.builder(

    itemCount: vacancies.length,
    itemBuilder: (context, index) {
      final vacancy = vacancies[index];
      return ListViewIteam(vacancy: vacancy);
    },
  );
}

