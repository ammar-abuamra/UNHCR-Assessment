



import 'package:flutter/material.dart';

class SummryWidget extends StatelessWidget {
  const SummryWidget({
    super.key,
    required this.title,
    required this.summry,
  });

  final String title;
  final String summry;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 10, top: 0, bottom: 10, left: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 1),
              color: Colors.blue.withOpacity(.2),
              blurRadius: 3,
              spreadRadius: 2,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600)),
          Text(summry, style: TextStyle(fontSize: 15, color: Colors.blue))
        ],
      ),
    );
  }
}// the summry and  descripton widget



class CustomWidget extends StatelessWidget {
  const CustomWidget({
    super.key,
    required this.leading,
    required this.traling,
  });

  final String leading;
  final String traling;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(right: 10, top: 0, bottom: 10, left: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 1),
              color: Colors.blue.withOpacity(.2),
              blurRadius: 3,
              spreadRadius: 2,
            )
          ]),
      child: Center(
        child: ListTile(
          leading: Text(
            leading,
            style: TextStyle(fontSize: 15, color: Colors.blue),
          ),
          subtitle: Text(
            //textWidthBasis: TextWidthBasis.longestLine,
              traling,
              style: TextStyle(fontSize: 15, color: Colors.blue)),
        ),
      ),
    );
  }
}// the jop detail list tail widget
