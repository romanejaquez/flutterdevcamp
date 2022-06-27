import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/utils.dart';

class UpcomingEventsBanner extends StatelessWidget {
  const UpcomingEventsBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(80),
      color: Colors.white,
      child: Column(
        children: [
          Text('Upcoming Events', textAlign: TextAlign.center,
            style: TextStyle(
              color: Utils.mainBlue, 
              fontWeight: FontWeight.bold,
              fontSize: 40
            )
          ),
          SizedBox(height: 20),
          Row(
            children: [
              ClipOval(
                child: Image.asset('assets/imgs/fdc_sm.png', width: 150, height: 150)
              ),
              SizedBox(width: 40),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Flutter Dev Camp Web Edition Session #2: Building UI Layouts',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Utils.mainBlue, 
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      )
                    ),
                    Text('In this session, Roman Jaquez, Flutter GDE will walk us through how to build beautiful, natively compiled UIs for web using Flutter core components',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 20)
                    )
                  ],
                ),
              )
            ],
          )
        ],
      )
    );
  }
}