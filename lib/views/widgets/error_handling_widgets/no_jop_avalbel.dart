



import 'package:flutter/material.dart';

class NoJopAvalbel extends StatelessWidget {
  const NoJopAvalbel({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/no jop.png'),
            SizedBox(
              height: 15,
            ),
            Text(
              'Sorry ! Theres no available vaccines Right now  ',
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
