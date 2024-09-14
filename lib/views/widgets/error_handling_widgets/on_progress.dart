

import 'package:flutter/material.dart';
// TODO: add flutter_svg package to pubspec.yaml
import 'package:flutter_svg/flutter_svg.dart';
class OnProgress extends StatelessWidget {
  const OnProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(backgroundColor: Colors.blue,color: Colors.white,strokeWidth: 10,),

    );
  }
}





