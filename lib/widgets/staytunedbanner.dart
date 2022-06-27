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
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
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
                        width: MediaQuery.of(context).size.width / 3,
                        padding: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 35, right: 35
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.withOpacity(0.5), width: 2),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none
                          ),
                        ),
                      )
                    ],
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