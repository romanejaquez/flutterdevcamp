import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/flutterdevcampfonts.dart';
import 'package:flutterdevcamp/helpers/utils.dart';
import 'package:flutterdevcamp/models/flutterdevcampheaderstyles.dart';

class FlutterDevCampHeader extends StatelessWidget {
  const FlutterDevCampHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    FlutterDevCampHeaderStyles styles = Utils.headerStyles[Utils.getDeviceType(context)] as FlutterDevCampHeaderStyles;

    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: styles.showHeaderLabel ? MainAxisAlignment.start : MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.only(top: 10, left: 40, right: 40),
                child: const Icon(FlutterDevCampFonts.icon5, color: Colors.white)
              ),
              Visibility(
                visible: styles.showHeaderLabel,
                child: const Text('GDG Lawrence', style: TextStyle(fontSize: 30, color: Colors.white)))
            ],
          ),
        ),
      )
    );
  }
}