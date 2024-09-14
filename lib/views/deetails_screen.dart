import 'package:flutter/material.dart';
import 'package:unhcr/views/widgets/details_screen_widgets.dart';
import '../models/vacancy.dart';

class DetailsScreen extends StatelessWidget {
  final Vacancy vacancy;

  DetailsScreen({required this.vacancy});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: buildMobileLayout(),
      floatingActionButton: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.blue),
        child: Text("APPLY",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
    );
  }

  Widget buildMobileLayout() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 15),
            height: 260,
            width: double.infinity,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    color: Colors.blue.withOpacity(.2),
                    blurRadius: 5,
                    spreadRadius: 3,
                  )
                ],
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(40)),
                image: DecorationImage(
                    image: NetworkImage(vacancy.imageUrl), fit: BoxFit.fill)),
          ), // the image container

          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 3),
                              color: Colors.blue.withOpacity(.2),
                              blurRadius: 3,
                              spreadRadius: 2,
                            )
                          ],
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Text(vacancy.title,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue)),
                    ),
                  ),
                ),
                CustomWidget(
                  leading: 'Company:',
                  traling: vacancy.company,
                ),
                CustomWidget(leading: 'Location:', traling: vacancy.location),
                CustomWidget(leading: 'Salary:', traling: vacancy.salary),
                SummryWidget(
                  title: 'Summry:',
                  summry: vacancy.description,
                ),
                SummryWidget(
                    title: 'Description', summry: vacancy.longDescription),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ), //the body
        ],
      ),
    );
  }
}
