import 'package:flutter/material.dart';

class SeeMoreText extends StatelessWidget {
  const SeeMoreText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        'Recnt Jobs',
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
      ),
      trailing: Text('See More',
          style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.blue.withOpacity( .9)
          )),
    );
  }
}
