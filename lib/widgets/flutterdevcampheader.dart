import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/flutterdevcampfonts.dart';
import 'package:flutterdevcamp/helpers/utils.dart';
import 'package:flutterdevcamp/models/flutterdevcampheaderstyles.dart';
import 'package:flutterdevcamp/models/mainpagestyles.dart';

class FlutterDevCampHeader extends StatelessWidget {
  const FlutterDevCampHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    FlutterDevCampHeaderStyles styles = Utils.headerStyles[Utils.getDeviceType(context)] as FlutterDevCampHeaderStyles;
    MainPageStyles mainStyles = Utils.mainPageStyles[Utils.getDeviceType(context)] as MainPageStyles;

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
                margin: EdgeInsets.only(top: 10, left: mainStyles.showMenu ? 40 : 10, right: 40),
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