import 'package:flutter/material.dart';
import 'package:unhcr/views/widgets/custom_appbar.dart';
import 'package:unhcr/views/widgets/error_handling_widgets/error_case.dart';
import 'package:unhcr/views/widgets/error_handling_widgets/no_jop_avalbel.dart';
import 'package:unhcr/views/widgets/error_handling_widgets/on_progress.dart';
import '../controllrs/v_controllrs.dart';
import '../models/vacancy.dart';
import 'layouts/mobile_layout.dart';
import 'widgets/seemore_widget.dart';

class MainScreen extends StatelessWidget {
  final VacancyController vacancyController = VacancyController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          actions: [
            Icon(
              Icons.person_pin,
              color: Colors.white,
              size: 40,
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        body: Column(
          children: [
            CustomAppBar(),//the main head of the page
            SeeMoreText(),//recnt jops and see more text widget
            Expanded(
              child: Container(
                child: FutureBuilder<List<Vacancy>>(
                  future: vacancyController.fetchVacancies(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return OnProgress();
                    } else if (snapshot.hasError) {
                      return errorCase();
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return NoJopAvalbel();
                    } else {
                      return CustomWidget(snapshot.data!);//the list view widget
                    }
                  },
                ),
              ),
            ), //the list view of the main screen with the logic
          ],
        ),
      ),
    );
  }
}


