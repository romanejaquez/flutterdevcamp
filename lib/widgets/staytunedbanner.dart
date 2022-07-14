import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/utils.dart';
import 'package:flutterdevcamp/models/staytunedbannerstyles.dart';
import 'package:flutterdevcamp/widgets/campingwidget.dart';

class StayTunedBanner extends StatelessWidget {
  const StayTunedBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    StayTunedBannerStyles styles = Utils.stayTunedBannerStyles[Utils.getDeviceType(context)] as StayTunedBannerStyles;

    List<Widget> formChildren = [
      Container(
        margin: EdgeInsets.only(top: 20, right: styles.singleColumnLayout ? 0 : 10),
        padding: const EdgeInsets.only(
          top: 15, bottom: 15, left: 35, right: 35
        ),
        decoration: BoxDecoration(
          color: Utils.lightBlue,
          borderRadius: BorderRadius.circular(30)
        ),
        child: const Text('Subscribe',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white)
        )
      ),
      Container(
        width: 300,
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.only(
          top: 5, bottom: 5, left: 35, right: 35
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.5), width: 2),
          color: Colors.white,
          borderRadius: BorderRadius.circular(60)
        ),
        child: const TextField(
          decoration: InputDecoration(
            border: InputBorder.none
          ),
        ),
      )
    ];

    return Container(
      height: styles.height,
      color: Utils.lightGray,
      child: Stack(
        children: [
          CampingWidget(),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(80),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text('Stay Tuned!',
                    style: TextStyle(color: Utils.mainBlue, fontWeight: FontWeight.bold, fontSize: 50)
                  ),
                  const SizedBox(height: 30),
                  const Text('Subscribe to get notified\nof upcoming events coming\nto your area!',
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Utils.mainBlue, fontSize: 30)
                  ),
                  const SizedBox(height: 20),
                  styles.singleColumnLayout ? Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: formChildren,
                  ) :
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: formChildren,
                  )
                ],
              ),
            )
          ),
        ],
      )
    );
  }
}