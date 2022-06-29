import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/devicetype.dart';
import 'package:flutterdevcamp/helpers/flutterdevcampfonts.dart';
import 'package:flutterdevcamp/models/campinfomodel.dart';
import 'package:flutterdevcamp/models/primarybannerstyles.dart';

class Utils {

  static const int mobileMaxWidth = 480;
  static const int tabletMaxWidth = 768;
  static const int laptopMaxWidth = 1024;

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

  static Map<DeviceType, PrimaryBannerStyles> primaryBannerStyles = {
    DeviceType.laptop: PrimaryBannerStyles(
      sunScale: 1,
      tentIconSize: 80,
      dashIconSize: 90,
      flutterFontSize: 80,
      devCampFontSize: 120,
      webEditionfontSize: 25,
      treeScale: 1,
      tentIconLeftMargin: 230,
      dashIconLeftMargin: 410,
      dashIconTopMargin: -10,
      tree1Size: 180
    ),
    DeviceType.mobile: PrimaryBannerStyles(
      sunScale: 0.5,
      tentIconSize: 40,
      dashIconSize: 40,
      flutterFontSize: 40,
      devCampFontSize: 80,
      webEditionfontSize: 25,
      treeScale: 0.75,
      tentIconLeftMargin: 120,
      dashIconLeftMargin: 210,
      dashIconTopMargin: 0,
      tree1Size: 120
    ),
    DeviceType.tablet: PrimaryBannerStyles(
      sunScale: 0.5,
      tentIconSize: 60,
      dashIconSize: 60,
      flutterFontSize: 60,
      devCampFontSize: 100,
      webEditionfontSize: 20,
      treeScale: 1,
      tentIconLeftMargin: 170,
      dashIconLeftMargin: 310,
      dashIconTopMargin: 0,
      tree1Size: 140
    )
  };

  static DeviceType getDeviceType(BuildContext context) {

    MediaQueryData data = MediaQuery.of(context);
    DeviceType bk = DeviceType.mobile;

    if (data.size.width > Utils.mobileMaxWidth 
      && data.size.width <= Utils.tabletMaxWidth) {
      bk = DeviceType.tablet;
    }

    else if (data.size.width > Utils.tabletMaxWidth) {
      bk = DeviceType.laptop;
    }

    return bk;
  }
}