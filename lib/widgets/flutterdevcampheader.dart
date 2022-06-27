import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/flutterdevcampfonts.dart';

class FlutterDevCampHeader extends StatelessWidget {
  const FlutterDevCampHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: const [
            SizedBox(width: 40),
            Icon(FlutterDevCampFonts.icon5, color: Colors.white),
            SizedBox(width: 40),
            Text('GDG Lawrence', style: TextStyle(fontSize: 30, color: Colors.white))
          ],
        ),
      )
    );
  }
}