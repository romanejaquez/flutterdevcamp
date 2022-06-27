import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/utils.dart';
import 'package:flutterdevcamp/widgets/campingwidget.dart';

class StayTunedBanner extends StatelessWidget {
  const StayTunedBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: Utils.lightGray,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(80),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Stay Tuned!',
                    style: TextStyle(color: Utils.mainBlue, fontWeight: FontWeight.bold, fontSize: 50)
                  ),
                  SizedBox(height: 30),
                  Text('Subscribe to get notified\nof upcoming events coming\nto your area!',
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Utils.mainBlue, fontSize: 30)
                  )
                ],
              ),
            )
          ),

          CampingWidget()
        ],
      )
    );
  }
}