import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/utils.dart';
import 'package:flutterdevcamp/models/upcomingbannerstyles.dart';

class UpcomingEventsBanner extends StatelessWidget {
  const UpcomingEventsBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    UpcomingBannerStyles styles = Utils.upcomingBannerStyles[Utils.getDeviceType(context)] as UpcomingBannerStyles;

    Column eventDetails = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: styles.singleColumn ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text('Flutter Dev Camp Web Edition Session #2: Building UI Layouts',
          textAlign: styles.contenAlignment,
          style: const TextStyle(
            color: Utils.mainBlue, 
            fontWeight: FontWeight.bold,
            fontSize: 30
          )
        ),
        Text('In this session, Roman Jaquez, Flutter GDE will walk us through how to build beautiful, natively compiled UIs for web using Flutter core components',
          textAlign: styles.contenAlignment,
          style: const TextStyle(fontSize: 20)
        )
      ],
    );

    List<Widget> eventWidgets = [
      Container(
        margin: EdgeInsets.only(top: styles.imageTopMargin, bottom: styles.imageTopMargin, right: styles.imageRightMargin),
        child: ClipOval(
          child: Image.asset('assets/imgs/fdc_sm.png', width: 150, height: 150)
        ),
      ),
      styles.singleColumn ? eventDetails : Expanded(
        child: eventDetails,
      )
    ];
    return Container(
      padding: const EdgeInsets.all(80),
      color: Colors.white,
      child: Column(
        children: [
          const Text('Upcoming Events', textAlign: TextAlign.center,
            style: TextStyle(
              color: Utils.mainBlue, 
              fontWeight: FontWeight.bold,
              fontSize: 40
            )
          ),
          const SizedBox(height: 20),
          styles.singleColumn ?
          Column(
            children: eventWidgets,
          ) :
          Row(
            children: eventWidgets
          )
        ],
      )
    );
  }
}