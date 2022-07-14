import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/utils.dart';
import 'package:flutterdevcamp/models/campinfomodel.dart';
import 'package:flutterdevcamp/models/secondarybannerstyles.dart';

class SecondaryBanner extends StatelessWidget {
  const SecondaryBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SecondaryBannerStyles styles = Utils.secondaryBannerStyles[Utils.getDeviceType(context)] as SecondaryBannerStyles;

    List<Widget> devCampBlocks = List.generate(Utils.secondaryBannerContent().length,
      (index) {
        CampInfoModel campInfo = Utils.secondaryBannerContent()[index];
        return Container(
          margin: EdgeInsets.only(bottom: styles.singleColumn ? 30 : 0),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  alignment: Alignment.center,
                  child: Icon(campInfo.icon, color: Colors.white, size: 40)
                ),
                const SizedBox(height: 30),
                Container(
                  constraints: const BoxConstraints(maxWidth: 200),
                  child: Text(campInfo.description, textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20, color: Colors.white)
                  )
                )
              ],
            ),
          ),
        );
      }
    );
    
    return Container(
      padding: const EdgeInsets.all(30),
      height: styles.height > 0 ? styles.height : null,
      color: Utils.mainGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('What\'s a Flutter Dev Camp?',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white)
          ),
          const SizedBox(height: 60),
          styles.singleColumn ? Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: devCampBlocks,
          ): Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: devCampBlocks,
          ),
        ],
      )
    );
  }
}