import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/flutterdevcampfonts.dart';
import 'package:flutterdevcamp/helpers/utils.dart';
import 'package:flutterdevcamp/models/primarybannerstyles.dart';
import 'package:flutterdevcamp/widgets/flutterdevcampheader.dart';
import 'package:flutterdevcamp/widgets/sunwidget.dart';
import 'package:flutterdevcamp/widgets/treeswidget.dart';

class PrimaryBanner extends StatelessWidget {
  const PrimaryBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    PrimaryBannerStyles styles = Utils.primaryBannerStyles[Utils.getDeviceType(context)] as PrimaryBannerStyles;
    
    return Container(
      height: 850,
      color: Utils.mainBlue,
      child: Stack(
        children: [
          // trees
          Positioned.fill(
            bottom: 50,
            left: 0,
            right: 0,
            child: Stack(children: [
              TreesWidget()
            ])
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Text('Flutter',
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: styles.flutterFontSize
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(left: styles.tentIconLeftMargin),
                        child: Icon(FlutterDevCampFonts.icon1,
                          size: styles.tentIconSize,
                          color: Colors.white
                        ),
                      ),
                      Positioned(
                        top: styles.dashIconTopMargin,
                        child: Container(
                          margin: EdgeInsets.only(left: styles.dashIconLeftMargin),
                          child: Icon(FlutterDevCampFonts.icon2,
                            size: styles.dashIconSize,
                            color: Colors.white
                          )
                        ),
                      ),
                    ],
                  ),
                  Text('Dev Camp \'22',
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: styles.devCampFontSize,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 15, bottom: 15, left: 35, right: 35
                    ),
                    decoration: BoxDecoration(
                      color: Utils.lightBlue,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text('Web Edition',
                      style: TextStyle(
                        fontSize: styles.webEditionfontSize,
                        fontWeight: FontWeight.bold,
                        color: Utils.mainBlue)
                    )
                  )
                ],
              ),
            ),
          ),

          // sun
          const SunWidget(),

          // header
          const FlutterDevCampHeader(),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              color: Utils.mainGreen
            ),
          )
        ],
      )
    );
  }
}