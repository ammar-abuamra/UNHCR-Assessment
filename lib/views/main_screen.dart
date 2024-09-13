import 'package:flutter/material.dart';
import 'package:unhcr/views/widgets/custom_appbar.dart';
import '../controllrs/v_controllrs.dart';
import '../models/vacancy.dart';
import 'deetails_screen.dart';
import 'layouts/mobile_layout.dart';
import 'layouts/tablet_layout.dart';

class VacancyListScreen extends StatelessWidget {
  final VacancyController vacancyController = VacancyController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.white,size: 30,),
          actions: [Icon(Icons.person_pin,color: Colors.white,size: 40,)],
          backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
          ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.sizeOf(context).height+380,
          child: Column(
            children: [
          Expanded(
            child: CustomAppBar(),
          ),
              Expanded(
                flex: 2,
                child: Container(
                  child: FutureBuilder<List<Vacancy>>(
                    future: vacancyController.fetchVacancies(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return Center(child: Text('Error: ${snapshot.error}'));
                      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                        return Center(child: Text('No vacancies available'));
                      } else {
                        return LayoutBuilder(
                          builder: (context, constraints) {
                            return constraints.maxWidth > 600
                                ? buildTabletLayout(snapshot.data!)
                                : buildMobileLayout(snapshot.data!);
                          },
                        );
                      }
                    },
                  ),
                ),
              ),//the list view of the main screen with the logic

            ],
          ),
        ),
      ),
    );
  }


}
