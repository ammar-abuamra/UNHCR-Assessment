import 'package:flutter/material.dart';

import '../../main_screen.dart';

class errorCase extends StatelessWidget {
  const errorCase({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/404.png'),
            SizedBox(
              height: 10,
            ),
            Text(
              'Please Check Your Internet And Retry Again',
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  MainScreen()),
                );
              },
              child: Container(
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    'Retry',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
