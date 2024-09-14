



import 'package:flutter/material.dart';

import '../../models/vacancy.dart';
import '../deetails_screen.dart';

class ListViewIteam extends StatelessWidget {
  const ListViewIteam({
    super.key,
    required this.vacancy,
  });

  final Vacancy vacancy;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: EdgeInsets.only(right: 10,top: 0,bottom: 10,left: 0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              offset:Offset(0, 5)
              ,color: Colors.blue.withOpacity(.2),
              blurRadius: 5,spreadRadius: 3,

            )


          ]        ),


      child: Center(
        child: ListTile(
          leading: ClipOval(
              child: Image.network(vacancy.imageUrl, fit: BoxFit.cover,height:70 ,width: 70,)),
          title: Text(vacancy.title),
          subtitle: Text(vacancy.company),
          trailing: Icon(Icons.arrow_circle_right,size: 25,color: Colors.blue.withOpacity(.8),),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsScreen(vacancy: vacancy)),
            );
          },
        ),
      ),
    );
  }
}
