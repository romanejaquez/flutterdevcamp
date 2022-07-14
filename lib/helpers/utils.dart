import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/devicetype.dart';
import 'package:flutterdevcamp/helpers/flutterdevcampfonts.dart';
import 'package:flutterdevcamp/models/campinfomodel.dart';
import 'package:flutterdevcamp/models/flutterdevcampheaderstyles.dart';
import 'package:flutterdevcamp/models/mainpagestyles.dart';
import 'package:flutterdevcamp/models/primarybannerstyles.dart';
import 'package:flutterdevcamp/models/secondarybannerstyles.dart';
import 'package:flutterdevcamp/models/staytunedbannerstyles.dart';
import 'package:flutterdevcamp/models/upcomingbannerstyles.dart';

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
      bannerHeight: 850,
      sunScale: 1,
      tentIconSize: 80,
      dashIconSize: 90,
      flutterFontSize: 80,
      devCampFontSize: 120,
      yearFontSize: 120,
      webEditionfontSize: 25,
      treeScale: 1,
      tentIconLeftMargin: 230,
      dashIconLeftMargin: 410,
      dashIconTopMargin: -10,
      tree1Size: 180,
      sunPadding: 50,
      tree2Size: 100,
      tree3Size: 70,
      tree4Size: 220,
      tree4RightMargin: 80,
      tree4BottomMargin: -25,
      tree5Visibility: true,
      tree6Visibility: true,
      tree7Visibility: true,
    ),
    DeviceType.mobile: PrimaryBannerStyles(
      bannerHeight: 0,
      sunScale: 0.5,
      tentIconSize: 40,
      dashIconSize: 40,
      flutterFontSize: 40,
      devCampFontSize: 60,
      yearFontSize: 120,
      webEditionfontSize: 20,
      treeScale: 0.75,
      tentIconLeftMargin: 120,
      dashIconLeftMargin: 210,
      dashIconTopMargin: 0,
      tree1Size: 120,
      sunPadding: 25,
      tree2Size: 120,
      tree3Size: 70,
      tree4Size: 150,
      tree4RightMargin: 20,
      tree4BottomMargin: -15,
      tree5Visibility: false,
      tree6Visibility: false,
      tree7Visibility: false,
    ),
    DeviceType.tablet: PrimaryBannerStyles(
      bannerHeight: 750,
      sunScale: 0.5,
      tentIconSize: 60,
      dashIconSize: 60,
      flutterFontSize: 60,
      devCampFontSize: 100,
      yearFontSize: 100,
      webEditionfontSize: 20,
      treeScale: 1,
      tentIconLeftMargin: 170,
      dashIconLeftMargin: 310,
      dashIconTopMargin: 0,
      tree1Size: 140,
      sunPadding: 30,
      tree2Size: 100,
      tree3Size: 70,
      tree4Size: 220,
      tree4RightMargin: 50,
      tree4BottomMargin: -25,
      tree5Visibility: true,
      tree6Visibility: false,
      tree7Visibility: false,
    )
  };

  static Map<DeviceType, MainPageStyles> mainPageStyles = {
    DeviceType.laptop: MainPageStyles(
      showBanners: true,
      showMenu: false
    ),
    DeviceType.tablet: MainPageStyles(
      showBanners: true,
      showMenu: false
    ),
    DeviceType.mobile: MainPageStyles(
      showBanners: false,
      showMenu: true
    ),
  };
  

  static Map<DeviceType, SecondaryBannerStyles> secondaryBannerStyles = {
    DeviceType.laptop: SecondaryBannerStyles(
      height: 600,
      singleColumn: false
    ),
    DeviceType.tablet: SecondaryBannerStyles(
      height: 0,
      singleColumn: true
    ),
    DeviceType.mobile: SecondaryBannerStyles(
      height: 0,
      singleColumn: true
    ),
  };

  static Map<DeviceType, UpcomingBannerStyles> upcomingBannerStyles = {
    DeviceType.laptop: UpcomingBannerStyles(
      imageTopMargin: 0,
      imageRightMargin: 40,
      contenAlignment: TextAlign.start,
      singleColumn: false
    ),
    DeviceType.tablet: UpcomingBannerStyles(
      imageTopMargin: 40,
      imageRightMargin: 0,
      contenAlignment: TextAlign.center,
      singleColumn: true
    ),
    DeviceType.mobile: UpcomingBannerStyles(
      imageTopMargin: 40,
      imageRightMargin: 0,
      contenAlignment: TextAlign.start,
      singleColumn: false
    ),
  };

  static Map<DeviceType, StayTunedBannerStyles> stayTunedBannerStyles = {
    DeviceType.laptop: StayTunedBannerStyles(
      campWidgetScale: 1,
      singleColumnLayout: false,
      height: 600
    ),
    DeviceType.tablet: StayTunedBannerStyles(
      campWidgetScale: 0.7,
      singleColumnLayout: true,
      height: 800
    ),
    DeviceType.mobile: StayTunedBannerStyles(
      campWidgetScale: 0.4,
      singleColumnLayout: true,
      height: 800
    ),
  };

  static Map<DeviceType, FlutterDevCampHeaderStyles> headerStyles = {
    DeviceType.laptop: FlutterDevCampHeaderStyles(
      showHeaderLabel: true
    ),
    DeviceType.mobile: FlutterDevCampHeaderStyles(
      showHeaderLabel: false
    ),
    DeviceType.tablet: FlutterDevCampHeaderStyles(
      showHeaderLabel: true
    ),
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