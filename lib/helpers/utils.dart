import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/flutterdevcampfonts.dart';
import 'package:flutterdevcamp/models/campinfomodel.dart';

class Utils {

  static const Color mainBlue = Color(0xFF1B77B1);
  static const Color mainGreen = Color(0xFF2AC385);
  static const Color lightGray = Color(0xFFFAFAFA);
  static const Color darkBlue = Color(0xFF024169);
  static const Color lightBlue = Color(0xFF44D1FD);

  static List<CampInfoModel> secondaryBannerContent() {

    return [
      CampInfoModel(icon: Icons.people, description: "Community-driven events lead by Flutter Experts"),
      CampInfoModel(icon: FlutterDevCampFonts.icon3, description: "Event series focused on Flutter for all platforms"),
      CampInfoModel(icon: FlutterDevCampFonts.icon5, description: "Powered by GDG Communities throughout the world"),
    ];
  }
}