import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/flutterdevcampfonts.dart';
import 'package:flutterdevcamp/helpers/utils.dart';
import 'package:flutterdevcamp/widgets/flutterdevcampheader.dart';
import 'package:flutterdevcamp/widgets/sunwidget.dart';
import 'package:flutterdevcamp/widgets/treeswidget.dart';

class PrimaryBanner extends StatelessWidget {
  const PrimaryBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      color: Utils.mainBlue,
      child: Stack(
        children: [
          // trees
          TreesWidget(),

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
                      const Text('Flutter',
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 80
                        )
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 230),
                        child: const Icon(FlutterDevCampFonts.icon1,
                          size: 80,
                          color: Colors.white
                        ),
                      ),
                      Positioned(
                        top: -10,
                        child: Container(
                          margin: const EdgeInsets.only(left: 410),
                          child: const Icon(FlutterDevCampFonts.icon2,
                            size: 90,
                            color: Colors.white
                          )
                        ),
                      ),
                    ],
                  ),
                  const Text('Dev Camp \'22',
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 120,
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
                    child: const Text('Web Edition',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Utils.mainBlue)
                    )
                  )
                ],
              ),
            ),
          ),

          // sun
          SunWidget(),

          // header
          const FlutterDevCampHeader()
        ],
      )
    );
  }
}