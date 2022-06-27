import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/utils.dart';
import 'package:flutterdevcamp/models/campinfomodel.dart';

class SecondaryBanner extends StatelessWidget {
  const SecondaryBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      height: 600,
      color: Utils.mainGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('What\'s a Flutter Dev Camp?',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white)
          ),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(Utils.secondaryBannerContent().length,
              (index) {
                CampInfoModel campInfo = Utils.secondaryBannerContent()[index];
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Icon(campInfo.icon, color: Colors.white, size: 40),
                      const SizedBox(height: 20),
                      Container(
                        constraints: const BoxConstraints(maxWidth: 200),
                        child: Text(campInfo.description, textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 20, color: Colors.white)
                        )
                      )
                    ],
                  ),
                );
              }
            ),
          ),
        ],
      )
    );
  }
}